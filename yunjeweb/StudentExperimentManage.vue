<template>
    <div>
        <div class="studentExperimentHeader">
            <el-input  v-model="paramsObj.cIdOrName" placeholder="请输入课程编号或名称..." size="small" style="width: 350px"></el-input>
            <el-button  @click="serchByIdOrName" size="small" icon="el-icon-search" type="primary">搜索</el-button>
        </div>
        <div>
        <el-tag style="margin-bottom: 10px">学生实验成绩</el-tag>
            <el-button  @click=handle1() size="small" type="primary">学生实验掌握程度</el-button>
            <el-button @click=handle3() size="small" type="primary">学生实验掌握程度雷达图</el-button>
        <el-table
                :data="studentExperimentInfos"
                height="400"
                border
                style="width: 100%">
            <el-table-column
                    width="100"
                    prop="cid"
                    label="课程编号">
            </el-table-column>
            <el-table-column
                    width="150"
                    prop="cname"
                    label="课程名称">
            </el-table-column>
            <el-table-column
                    width="100"
                    prop="stid"
                    label="学生学号">
            </el-table-column>
            <el-table-column
                    width="100"
                    prop="stname"
                    label="学生姓名">
            </el-table-column>
            <el-table-column
                    width="100"
                    prop="kind"
                    label="实验次数">
            </el-table-column>
            <el-table-column
                    width="100"
                    prop="score"
                    label="学生得分">
            </el-table-column>
            <el-table-column
                    width="100"
                    prop="sumscore"
                    label="总分">
            </el-table-column>
            <el-table-column
                    width="100"
                    prop="classavgscore"
                    label="班级平均">
            </el-table-column>
            <el-table-column
                    width="100"
                    prop="classranking"
                    label="班级排名">
            </el-table-column>
            <el-table-column
                    width="100"
                    prop="gradeavgscore"
                    label="年级平均">
            </el-table-column>
            <el-table-column
                    width="100"
                    prop="graderanking"
                    label="年级排名">
            </el-table-column>

            <el-table-column label="操作" width="180" fixed="right">
                <template slot-scope="scope">
                    <el-button
                            size="mini"
                            @click="handle(scope.row)">详情</el-button>
                </template>
            </el-table-column>
        </el-table>
        <el-pagination
                background
                @current-change="currentChange"
                :current-page="paramsObj.pageNum"
                :page-size="paramsObj.pageSize"
                layout="prev, pager, next"
                :total="total">
        </el-pagination>
        </div>
        <el-dialog
                title="详情"
                :visible.sync="dialogVisible"
                width="60%"
                :before-close="handleClose">
            <el-form ref="form" :model="experiment" label-width="80px">
                <el-form-item label="实验名称">
                    <el-input v-model="experiment.ename" readonly></el-input>
                </el-form-item>
                <el-form-item label="实验内容">
                    <el-input type="textarea" v-model="experiment.etext" readonly></el-input>
                </el-form-item>
                <el-form-item label="知识详情">
                    <el-input type="textarea" v-model="experiment.details" readonly></el-input>
                </el-form-item>
                <el-form-item label="老师建议">
                    <el-input type="textarea" v-model="experiment.opinion" readonly></el-input>
                </el-form-item>
                <span slot="footer" class="dialog-footer">
                <el-button size="mini" @click="dialogVisible = false">取 消</el-button>
                <el-button size="mini" type="primary" @click="dialogVisible = false">确 定</el-button>
            </span>
            </el-form>
        </el-dialog>
        <el-dialog
                title="详情"
                :visible.sync="dialogVisible1"
                width="60%"
                :before-close="handleClose">
                <span >
                    实验一：
                </span>
            <el-progress class="studentExperiment"  :text-inside="true" :stroke-width="20" :percentage="73" status="exception"></el-progress>
            <span >
                    实验二：
                </span>
            <el-progress class="studentExperiment" :text-inside="true" :stroke-width="20" :percentage="65" status="exception"></el-progress>
            <span class="studentExperiment">
                    实验三：
                </span>
            <el-progress  class="studentExperiment" :text-inside="true" :stroke-width="20" :percentage="80" status="success"></el-progress>
            <span >
                    实验四：
                </span>
            <el-progress  class="studentExperiment" :text-inside="true" :stroke-width="20" :percentage="90" status="success"></el-progress>
            <span slot="footer" class="dialog-footer">
                <el-button size="mini" @click="dialogVisible1 = false">取 消</el-button>
                <el-button size="mini" type="primary" @click="dialogVisible1 = false">确 定</el-button>
                </span>
        </el-dialog>
    </div>
</template>
<script>
    module.exports= {
        data(){
            return {
                dialogVisible : false,
                dialogVisible1: false,
                total : 0,
                experiment:{
                    cid: "",
                    cname: "",
                    stid: "",
                    stname: "",
                    score: "",
                    sumscore: "",
                    details: "",
                    opinion: "",
                    ename: "",
                    etext: "",
                    kind: "",
                    classranking: "",
                    graderanking: "",
                    submissions: "",
                    sumsubmissions: ""
                },
                paramsObj:{
                    pageNum : 0,
                    pageSize : 8,
                    cIdOrName : '',
                    stIdOrName : JSON.parse(window.sessionStorage.getItem("loginStudent")).stid
                },
                studentExperimentInfos: [],//教师信息
            }
        },
        methods:{
            serchByIdOrName() { // 点击搜索
                this.paramsObj.pageNum = 1;
                this.initstudentExperimentInfos();
            },
            handle(row){
                Object.assign(this.experiment,row);
                this.dialogVisible=true;
            },
            handle3(){
                window.location.href='./StudentExperiment.html'
            },
            handle1(){
                this.dialogVisible1=true;
            },
            currentChange(count){//分页回调
                this.paramsObj.pageNum=count;
                this.initstudentExperimentInfos();
            },
            initstudentExperimentInfos(){
                getRequest('http://localhost:8080/searchStudentExperiment',this.paramsObj).then(resp=>{
                    if (resp.status==200) {
                        this.studentExperimentInfos=resp.data.data;
                        this.total=resp.data.total;
                    }
                })
            },
        },
        mounted(){
            this.initstudentExperimentInfos();
        }
    }
</script>
<style scoped>
    .studentExperimentHeader{
        margin: 10px 0;
    }
    .studentExperiment{
        margin: 10px 0;
    }
</style>
