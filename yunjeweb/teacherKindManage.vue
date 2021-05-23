<template>
    <div>
        <div class="studentKindHeader">
            <el-input  v-model="paramsObj.cIdOrName" placeholder="请输入课程编号或名称..." size="small" style="width: 350px"></el-input>
            <el-input  v-model="paramsObj.stIdOrName" placeholder="请输入学生id或名称..." size="small" style="width: 350px"></el-input>
            <el-button  @click="serchByIdOrName" size="small" icon="el-icon-search" type="primary">搜索</el-button>
        </div>
        <el-tag style="margin-bottom: 10px">学生分类</el-tag>
        <el-table
                :data="teacherKindInfos"
                height="250"
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
                    width="180"
                    label="学生学习状态">
                <template slot-scope="scope">
                    <el-tag type="success" v-if="scope.row.kid">学习状态良好</el-tag>
                    <el-tag type="danger" v-else>学生状态有问题</el-tag>
                </template>
            </el-table-column>
            <el-table-column label="操作" width="180" fixed="right">
                <template slot-scope="scope">
                    <el-button
                            size="mini"
                            @click="handle(scope.row)">详情</el-button>
                    <el-button
                            size="mini"
                            @click="handle1()">雷达图</el-button>
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
        <el-dialog
                title="详情"
                :visible.sync="dialogVisible"
                width="60%"
                :before-close="handleClose">
            <el-form ref="form" :model="topic" label-width="80px">
                <el-form-item label="学习情况">
                    <el-input type="textarea" v-model="topic.details" readonly></el-input>
                </el-form-item>
                <el-form-item label="教师建议">
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
                total : 0,
                paramsObj:{
                    pageNum : 0,
                    pageSize : 8,
                    cIdOrName : '',
                    stIdOrName : '',
                },
                teacherKindInfos: [],//教师信息
                topic:{
                    cid :'',
                    cname :'',
                    stid :'',
                    stname :'',
                    kid :'',
                    details :'',
                    opinion :'',
                }
            }
        },
        methods:{
            handle(row){
                Object.assign(this.topic,row);
                this.dialogVisible=true;
            },
            handle1(){
                window.location.href='./StudentSumScore.html'
            },
            serchByIdOrName() { // 点击搜索
                this.paramsObj.pageNum = 1;
                this.initteacherKindInfos();
            },
            currentChange(count){//分页回调
                this.paramsObj.pageNum=count;
                this.initteacherKindInfos();
            },
            initteacherKindInfos(){
                getRequest('http://localhost:8080/searchTeacherKind',this.paramsObj).then(resp=>{
                    if (resp.status==200) {
                        this.teacherKindInfos=resp.data.data;
                        this.total=resp.data.total;
                    }
                })
            },
        },
        mounted(){
            this.initteacherKindInfos();
        }
    }
</script>
<style scoped>
    .studentKindHeader{
        margin: 10px 0;
    }
    .studentKind{
        margin: 10px 0;
    }
</style>