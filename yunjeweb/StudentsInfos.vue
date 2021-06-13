<template>
  <div>
    <div class="studentHeader">
    </div>
    <div>
      <el-tag style="margin-bottom: 10px">学生信息</el-tag>
      <el-table
          :data="studentInfos"
          height="800"
          border
          style="width: 100%">
        <el-table-column
            width="200"
            prop="stid"
            label="学生学号">
        </el-table-column>
        <el-table-column
            width="180"
            prop="stname"
            label="学生姓名">
        </el-table-column>
        <el-table-column
            width="200"
            prop="password"
            label="学生密码">
        </el-table-column>
        <el-table-column
            width="100"
            prop="cla"
            label="班级">
        </el-table-column>
        <el-table-column
            width="100"
            prop="sex"
            label="性别">
        </el-table-column>
        <el-table-column
            width="140"
            prop="grade"
            label="年级">
        </el-table-column>
        <el-table-column
            width="140"
            prop="age"
            label="年龄">
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
        pageNum : 1,
        pageSize : 15,
      },
      studentInfos: [],//教师信息
    }
  },
  methods:{
    currentChange(count){//分页回调
      this.paramsObj.pageNum=count;
      this.initstudentInfos();
    },
    initstudentInfos(){
      getRequest('http://localhost:8080/searchStudent',this.paramsObj).then(resp=>{
        if (resp.status==200) {
          this.studentInfos=resp.data.data;
          this.total=resp.data.total;
        }
      })
    },
  },
  mounted(){
    this.initstudentInfos();
  }
}
</script>
<style scoped>
.studentHeader{
  margin: 10px 0;
}
</style>
