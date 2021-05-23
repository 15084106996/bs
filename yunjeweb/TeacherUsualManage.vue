<template>
    <div>
        <div class="teacherUsualHeader">
            <el-input  v-model="paramsObj.cIdOrName" placeholder="请输入课程编号或名称..." size="small" style="width: 350px"></el-input>
            <el-input  v-model="paramsObj.stIdOrName" placeholder="请输入学生id或名称..." size="small" style="width: 350px"></el-input>
            <el-button  @click="serchByIdOrName" size="small" icon="el-icon-search" type="primary">搜索</el-button>
        </div>
        <div>
            <el-tag style="margin-bottom: 10px">学生平时成绩</el-tag>
            <el-table
                    :data="teacherUsualInfos"
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
                        prop="cla"
                        label="班级">
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
                        prop="score"
                        label="学生得分">
                </el-table-column>
                <el-table-column
                        width="100"
                        prop="sumscore"
                        label="总分">
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
                <el-form model="Usual" label-width="80px">
                    <el-form-item label="得分详情">
                        <el-input type="textarea" v-model="Usual.details" readonly></el-input>
                    </el-form-item>
                    <el-form-item label="教师建议">
                        <el-input type="textarea" v-model="Usual.opinion" readonly></el-input>
                    </el-form-item>
                </el-form>
            </div>
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
                Usual : {
                    cid:'',
                    cname:'',
                    stid:'',
                    stname:'',
                    score:'',
                    sumscore:'',
                    details:'',
                    cla:'',
                    classavgscore:'',
                    gradeavgscore:'',
                    classranking:'',
                    graderanking:'',
                    opinion: ''
                },
                total : 0,
                paramsObj:{
                    pageNum : 0,
                    pageSize : 8,
                    cIdOrName : '',
                    stIdOrName : '',
                },
                teacherUsualInfos: [],//教师信息
            }
        },
        methods:{
            handle(row){
                Object.assign(this.Usual,row);
                this.dialogVisible=true;
            },
            currentChange(count){//分页回调
                this.paramsObj.pageNum=count;
                this.initteacherUsualInfos();
            },
            serchByIdOrName() { // 点击搜索
                this.paramsObj.pageNum = 1;
                this.initteacherUsualInfos();
            },
            initteacherUsualInfos(){
                getRequest('http://localhost:8080/searchTeacherUsual',this.paramsObj).then(resp=>{
                    if (resp.status==200) {
                        this.teacherUsualInfos=resp.data.data;
                        this.total=resp.data.total;
                    }
                })
            }
        },
        mounted(){
            this.initteacherUsualInfos();
        }
    }
</script>
<style scoped>
    .teacherUsualHeader{
        margin: 10px 0;
    }
</style>