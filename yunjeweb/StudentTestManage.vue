<template>
    <div>
        <div class="studentTestHeader">
            <el-input  v-model="paramsObj.cIdOrName" placeholder="请输入课程编号或名称..." size="small" style="width: 350px"></el-input>
            <el-button  @click="serchByIdOrName" size="small" icon="el-icon-search" type="primary">搜索</el-button>
        </div>
        <div>
            <el-tag style="margin-bottom: 10px">学生考试成绩</el-tag>
            <el-button  @click="handle2()" size="small" type="primary">学生考试成绩分析</el-button>
            <el-button @click="handle3()" size="small" type="primary">学生考试掌握程度雷达图</el-button>
            <el-table
                    :data="studentTestInfos"
                    height="400"
                    border
                    style="width: 100%">
                <el-table-column
                        width="100"
                        prop="cid"
                        label="课程编号">
                </el-table-column>
                <el-table-column
                        width="180"
                        prop="cname"
                        label="课程姓名">
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
                        label="考试次数">
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
                        prop="classranking"
                        label="班级排名">
                </el-table-column>
                <el-table-column
                        width="100"
                        prop="graderanking"
                        label="年级排名">
                </el-table-column>
                <el-table-column
                        width="100"
                        prop="ratio"
                        label="占比">
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
        <div>
            <el-table
                    :data="studentTopicInfos"
                    height="250"
                    border
                    style="width: 100%">
                <el-table-column
                        width="100"
                        prop="topkind"
                        label="题号">
                </el-table-column>
                <el-table-column
                        width="100"
                        prop="topname"
                        label="题目姓名">
                </el-table-column>
                <el-table-column
                        width="100"
                        prop="score"
                        label="分数">
                </el-table-column>
                <el-table-column
                        width="100"
                        prop="sumscore"
                        label="总分">
                </el-table-column>
                <el-table-column
                        width="100"
                        prop="submissions"
                        label="提交次数">
                </el-table-column>
                <el-table-column label="操作" width="180" fixed="right">
                    <template slot-scope="scope">
                        <el-button
                                size="mini"
                                @click="handle1(scope.row)">详情</el-button>
                    </template>
                </el-table-column>
            </el-table>
        </div>
        <div class="studentTopic">
            <el-button type="info" plain @click="dialogVisible2 = true">本次考试各知识点掌握情况</el-button>
        </div>
        <span slot="footer" class="dialog-footer">
                <el-button size="mini" @click="dialogVisible = false">取 消</el-button>
                <el-button size="mini" type="primary" @click="dialogVisible = false">确 定</el-button>
            </span>
    </el-dialog>
        <el-dialog
                title="详情"
                :visible.sync="dialogVisible2"
                width="60%"
                :before-close="handleClose">
                <span >
                    知识点一：
                </span>
            <el-progress  class="studentTopic" :text-inside="true" :stroke-width="26" :percentage="70" status="success"></el-progress>
            <span>
                    知识点二：
                </span>
            <el-progress  class="studentTopic" :text-inside="true" :stroke-width="24" :percentage="80" status="success"></el-progress>
            <span >
                    知识点三：
                </span>
            <el-progress class="studentTopic" :text-inside="true" :stroke-width="22" :percentage="80" status="success"></el-progress>
            <span >
                    知识点四：
                </span>
            <el-progress  class="studentTopic" :text-inside="true" :stroke-width="20" :percentage="65" status="exception"></el-progress>
            <span >
                    知识点五：
                </span>
            <el-progress  class="studentTopic" :text-inside="true" :stroke-width="20" :percentage="70" status="success"></el-progress>
            <span slot="footer" class="dialog-footer">
                <el-button size="mini" @click="dialogVisible2 = false">取 消</el-button>
                <el-button size="mini" type="primary" @click="dialogVisible2 = false">确 定</el-button>
                </span>
        </el-dialog>
        <el-dialog
                title="详情"
                :visible.sync="dialogVisible3"
                width="60%"
                :before-close="handleClose">
                <span >
                    第一次考试：
                </span>
            <el-progress class="studentTest" :text-inside="true" :stroke-width="26" :percentage="73" status="success"></el-progress>
            <span >
                    第二次考试：
                </span>
            <el-progress class="studentTest" :text-inside="true" :stroke-width="24" :percentage="65" status="exception"></el-progress>
            <span >
                    第三次考试：
                </span>
            <el-progress class="studentTest" :text-inside="true" :stroke-width="22" :percentage="80" status="success"></el-progress>
            <span >
                    第四次考试：
                </span>
            <el-progress class="studentTest" :text-inside="true" :stroke-width="20" :percentage="90" status="success"></el-progress>
            <span >
                    期末考试：
                </span>
            <el-progress class="studentTest" :text-inside="true" :stroke-width="20" :percentage="90" status="success"></el-progress>
            <span >
                    总分：
                </span>
            <el-progress class="studentTest" :text-inside="true" :stroke-width="20" :percentage="90" status="success"></el-progress>
            <span slot="footer" class="dialog-footer">
                <el-button size="mini" @click="dialogVisible3 = false">取 消</el-button>
                <el-button size="mini" type="primary" @click="dialogVisible3 = false">确 定</el-button>
                </span>
        </el-dialog>
        <el-dialog
                title="详情"
                :visible.sync="dialogVisible1"
                width="60%"
                :before-close="handleClose">
            <el-form ref="form" :model="topic" label-width="80px">
                <el-form-item label="题目名称">
                    <el-input v-model="topic.topname" readonly></el-input>
                </el-form-item>
                <el-form-item label="题目介绍">
                    <el-input type="textarea" v-model="topic.toptext" readonly></el-input>
                </el-form-item>
                <el-form-item label="知识名称">
                    <el-input v-model="topic.kname" readonly></el-input>
                </el-form-item>
                <el-form-item label="知识内容">
                    <el-input type="textarea" v-model="topic.ktext" readonly></el-input>
                </el-form-item>
                <el-form-item label="知识详情">
                    <el-input type="textarea" v-model="topic.details" readonly></el-input>
                </el-form-item>
                <el-form-item label="老师建议">
                    <el-input type="textarea" v-model="topic.opinion" readonly></el-input>
                </el-form-item>
                <span slot="footer" class="dialog-footer">
                <el-button size="mini" @click="dialogVisible1 = false">取 消</el-button>
                <el-button size="mini" type="primary" @click="dialogVisible1 = false">确 定</el-button>
            </span>
            </el-form>
        </el-dialog>
    </div>
</template>
<script>
    module.exports= {
        data(){
            return {
                dialogVisible : false,
                dialogVisible1 : false,
                dialogVisible2 : false,
                dialogVisible3 : false,
                total : 0,
                paramsObj:{
                    pageNum : 0,
                    pageSize : 8,
                    cIdOrName : '',
                    ttid : 0,
                    stIdOrName : JSON.parse(window.sessionStorage.getItem("loginStudent")).stid,
                },
                topic:{
                    topkind: '',
                    topname: '',
                    toptext: '',
                    kname: '',
                    ktext: '',
                    score: '',
                    sumscore: '',
                    submissions: '',
                    details: '',
                    opinion: ''
                },
                studentTestInfos: [],
                studentTopicInfos: [],

            }
        },
        methods:{
            currentChange(count){//分页回调
                this.paramsObj.pageNum=count;
                this.initstudentTestInfos();
            },
            handle(row){
                this.paramsObj.ttid=row.ttid;
                this.initstudentTopicInfos();
                this.dialogVisible=true;
            },
            handle1(row){
                Object.assign(this.topic,row);
                this.dialogVisible1=true;
            },
            handle2(row){
                Object.assign(this.topic,row);
                this.dialogVisible3=true;
            },
            handle3(){
                window.location.href='./StudentTest.html'
            },
            serchByIdOrName() { // 点击搜索
                this.paramsObj.pageNum = 1;
                this.initstudentTestInfos();
            },
            initstudentTestInfos(){
                getRequest('http://localhost:8080/searchStudentTest',this.paramsObj).then(resp=>{
                    if (resp.status==200) {
                        this.studentTestInfos=resp.data.data;
                        this.total=resp.data.total;
                    }
                })
            },
            initstudentTopicInfos() {
                getRequest('http://localhost:8080/searchStudentTestTopic',this.paramsObj).then(resp=>{
                    if (resp.status==200) {
                        this.studentTopicInfos=resp.data.data;
                    }
                })
            }
        },
        mounted(){
            this.initstudentTestInfos()
            this.initstudentTopicInfos()
        }
    }
</script>
<style scoped>
    .studentTestHeader{
        margin: 10px 0;
    }
    .studentTest{
        margin: 10px 0;
    }
    .studentTopic{
        margin: 10px 0;
    }
</style>