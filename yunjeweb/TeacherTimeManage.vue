<template>
    <div>
        <div class="teacherTimeHeader">
            <el-input  v-model="paramsObj.cIdOrName" placeholder="请输入课程编号或名称..." size="small" style="width: 350px"></el-input>
            <el-input  v-model="paramsObj.stIdOrName" placeholder="请输入学生学号或姓名..." size="small" style="width: 350px"></el-input>
            <el-button  @click="serchByIdOrName" size="small" icon="el-icon-search" type="primary">搜索</el-button>
        </div>
        <div>
            <el-tag style="margin-bottom: 10px">学生在线时长</el-tag>
            <el-table
                    :data="teacherTimeInfos"
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
                        prop="cla"
                        label="班级">
                </el-table-column>
                <el-table-column
                        width="100"
                        prop="kind"
                        label="作业次数">
                </el-table-column>
                <el-table-column
                        width="100"
                        prop="sumtime"
                        label="在线时长">
                </el-table-column>
                <el-table-column
                        width="100"
                        prop="avgtime"
                        label="平均时长">
                </el-table-column>
                <el-table-column
                        width="180"
                        prop="submissions"
                        label="提交次数">
                </el-table-column>
                <el-table-column
                        width="180"
                        prop="avgsubmissions"
                        label="平均提交次数">
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
    </div>
</template>
<script>
    module.exports= {
        data(){
            return {
                total : 0,
                paramsObj:{
                    pageNum : 0,
                    pageSize : 8,
                    cIdOrName : '',
                    stIdOrName : ''
                },
                teacherTimeInfos: [],//教师信息
            }
        },
        methods:{
            currentChange(count){//分页回调
                this.paramsObj.pageNum=count;
                this.initteacherTimeInfos();
            },
            serchByIdOrName() { // 点击搜索
                this.paramsObj.pageNum = 1;
                this.initteacherTimeInfos();
            },
            initteacherTimeInfos(){
                getRequest('http://localhost:8080/searchTeacherTime',this.paramsObj).then(resp=>{
                    if (resp.status==200) {
                        this.teacherTimeInfos=resp.data.data;
                        this.total=resp.data.total;
                    }
                })
            },
        },
        mounted(){
            this.initteacherTimeInfos();
        }
    }
</script>
<style scoped>
    .teacherTimeHeader{
        margin: 10px 0;
    }
</style>
