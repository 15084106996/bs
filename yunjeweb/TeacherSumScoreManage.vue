<template>
    <div>
        <div class="teacherSumScoreHeader">
            <el-input  v-model="paramsObj.cIdOrName" placeholder="请输入课程编号或名称..." size="small" style="width: 350px"></el-input>
            <el-input  v-model="paramsObj.stIdOrName" placeholder="请输入学生id或姓名..." size="small" style="width: 350px"></el-input>
            <el-button  @click="serchByIdOrName" size="small" icon="el-icon-search" type="primary">搜索</el-button>
        </div>
        <el-tag style="margin-bottom: 10px">学生总成绩</el-tag>
        <el-button  @click="handle()" size="small" type="primary">学生成绩分析</el-button>
        <el-button @click="handle3()" size="small" type="primary">学生总分掌握程度雷达图</el-button>
        <el-table
                :data="teacherSumScoreInfos"
                height="250"
                border
                style="width: 100%">
            <el-table-column
                    width="100"
                    prop="cid"
                    label="课程编号">
            </el-table-column>
            <el-table-column
                    width="140"
                    prop="cname"
                    label="课程名称">
            </el-table-column>
            <el-table-column
                    width="100"
                    prop="stid"
                    label="学生id">
            </el-table-column>
            <el-table-column
                    width="100"
                    prop="stname"
                    label="学生姓名">
            </el-table-column>
            <el-table-column
                    width="100"
                    prop="uscore"
                    label="平时成绩">
            </el-table-column>
            <el-table-column
                    width="140"
                    prop="uratio"
                    label="平时成绩比重">
            </el-table-column>
            <el-table-column
                    width="100"
                    prop="hscore"
                    label="作业成绩">
            </el-table-column>
            <el-table-column
                    width="140"
                    prop="hratio"
                    label="作业成绩比重">
            </el-table-column>
            <el-table-column
                    width="100"
                    prop="escore"
                    label="实验成绩">
            </el-table-column>
            <el-table-column
                    width="140"
                    prop="eratio"
                    label="实验成绩比重">
            </el-table-column>
            <el-table-column
                    width="100"
                    prop="tscore"
                    label="考试成绩">
            </el-table-column>
            <el-table-column
                    width="140"
                    prop="tratio"
                    label="考试成绩比重">
            </el-table-column>
            <el-table-column
                    width="100"
                    prop="additionalscore"
                    label="附加成绩">
            </el-table-column>
            <el-table-column
                    width="100"
                    prop="sumscore"
                    label="学生总成绩">
            </el-table-column>
            <el-table-column
                    width="100"
                    prop="ssumscore"
                    label="总成绩">
            </el-table-column>
            <el-table-column label="操作" width="180" fixed="right">
                <template slot-scope="scope">
                    <el-button
                            size="mini"
                            @click="handle1(scope.row)">详情</el-button>
                </template>
            </el-table-column>
        </el-table>
        <el-dialog
                title="详情"
                :visible.sync="dialogVisible1"
                width="60%"
                :before-close="handleClose">
            <el-form ref="form" :model="sumscore" label-width="80px">
                <el-form-item label="学生成绩">
                    <el-input v-model="sumscore.sumscore" readonly></el-input>
                </el-form-item>
                <el-form-item label="班级平均">
                    <el-input  v-model="sumscore.classavgscore" readonly></el-input>
                </el-form-item>
                <el-form-item label="年级平均">
                    <el-input  v-model="sumscore.gradeavgscore" readonly></el-input>
                </el-form-item>
                <el-form-item label="班级排名">
                    <el-input  v-model="sumscore.classranking" readonly></el-input>
                </el-form-item>
                <el-form-item label="年级排名">
                    <el-input  v-model="sumscore.graderanking" readonly></el-input>
                </el-form-item>
                <el-form-item label="详情">
                    <el-input type="textarea" v-model="sumscore.details" readonly></el-input>
                </el-form-item>
                <el-form-item label="老师建议">
                    <el-input type="textarea" v-model="sumscore.opinion" readonly></el-input>
                </el-form-item>
                <span slot="footer" class="dialog-footer">
                <el-button size="mini" @click="dialogVisible1 = false">取 消</el-button>
                <el-button size="mini" type="primary" @click="dialogVisible1 = false">确 定</el-button>
            </span>
            </el-form>
        </el-dialog>
        <el-pagination
                background
                @current-change="currentChange"
                :current-page="paramsObj.pageNum"
                :page-size="paramsObj.pageSize"
                layout="prev, pager, next"
                :total="total">
        </el-pagination>
        <el-dialog
                title="详情"
                :visible.sync="dialogVisible"
                width="60%"
                :before-close="handleClose">
            <span >
                    平时成绩：
            </span>
            <el-progress class="studentSumScore" :text-inside="true" :stroke-width="26" :percentage="73" status="success"></el-progress>
            <span >
                    作业成绩：
            </span>
            <el-progress class="studentSumScore" :text-inside="true" :stroke-width="24" :percentage="65" status="exception"></el-progress>
            <span >
                    实验成绩：
            </span>
            <el-progress class="studentSumScore" :text-inside="true" :stroke-width="22" :percentage="80" status="success"></el-progress>
            <span >
                    考试成绩：
            </span>
            <el-progress class="studentSumScore" :text-inside="true" :stroke-width="20" :percentage="90" status="success"></el-progress>
            <span slot="footer" class="dialog-footer">
                <el-button size="mini" @click="dialogVisible = false">取 消</el-button>
                <el-button size="mini" type="primary" @click="dialogVisible = false">确 定</el-button>
                </span>
        </el-dialog>
    </div>
</template>
<script>
    module.exports= {
        data(){
            return {
                dialogVisible : false,
                dialogVisible1 :false,
                total : 0,
                paramsObj:{
                    pageNum : 0,
                    pageSize : 8,
                    cIdOrName : '',
                    stIdOrName : ''
                },
                sumscore:{
                    cid: '',
                    cname: '',
                    stid: '',
                    stname: '',
                    uscore: '',
                    uratio: '',
                    hscore: '',
                    hratio: '',
                    escore: '',
                    eratio: '',
                    tscore: '',
                    tratio: '',
                    additionalscore: '',
                    sumscore: '',
                    ssumscore: '',
                    classranking: '',
                    graderanking: '',
                    classavgscore:'',
                    gradeavgscore:'',
                    opinion:'',
                    details:'',
                    cla: '',
                },
                teacherSumScoreInfos: [],//教师信息
            }
        },
        methods:{
            handle(){
                this.dialogVisible=true;
            },
            serchByIdOrName() { // 点击搜索
                this.paramsObj.pageNum = 1;
                this.initteacherSumScoreInfos();
            },
            handle3(){
                window.location.href='./StudentSumScore.html'
            },
            handle1(row){
                Object.assign(this.sumscore,row);
                this.dialogVisible1=true;
            },
            currentChange(count){//分页回调
                this.paramsObj.pageNum=count;
                this.initteacherSumScoreInfos();
            },
            initteacherSumScoreInfos(){
                getRequest('http://localhost:8080/searchTeacherSumScore',this.paramsObj).then(resp=>{
                    if (resp.status==200) {
                        this.teacherSumScoreInfos=resp.data.data;
                        this.total=resp.data.total;
                    }
                })
            },
        },
        mounted(){
            this.initteacherSumScoreInfos();
        }
    }
</script>
<style scoped>
    .teacherSumScoreHeader{
        margin: 10px 0;
    }
    .teacherSumScore{
        margin: 10px 0;
    }
</style>