<template>
    <el-form ref="form" :model="form" label-width="80px">
        <el-form-item label="教师编号">
            <el-input v-model="form.tid" readonly></el-input>
        </el-form-item>
        <el-form-item label="教师姓名">
            <el-input v-model="form.tname" readonly></el-input>
        </el-form-item>
        <el-form-item label="教师密码">
            <el-input v-model="form.password" readonly></el-input>
        </el-form-item>
        <el-form-item label="教师性别">
            <el-input v-model="form.sex" readonly></el-input>
        </el-form-item>
        <el-form-item label="年龄">
            <el-input v-model="form.age" readonly></el-input>
        </el-form-item>
        <el-form-item label="工龄">
            <el-input v-model="form.workage" readonly></el-input>
        </el-form-item>
    </el-form>
</template>
<script>
    module.exports= {
        data(){
            return {
                form:{
                  tid : JSON.parse(window.sessionStorage.getItem("loginTeacher")).tid,
                  tname : JSON.parse(window.sessionStorage.getItem("loginTeacher")).tname,
                  password : JSON.parse(window.sessionStorage.getItem("loginTeacher")).password,
                  sex : JSON.parse(window.sessionStorage.getItem("loginTeacher")).sex,
                  workage : JSON.parse(window.sessionStorage.getItem("loginTeacher")).workage,
                  age : JSON.parse(window.sessionStorage.getItem("loginTeacher")).age,
                }

            }
        },
        methods:{

        },
        mounted(){
        }
    }
</script>
<style scoped>
</style>