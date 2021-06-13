<template>
    <el-form ref="form" :model="form" label-width="80px">
        <el-form-item label="学生学号">
            <el-input v-model="form.stid" readonly></el-input>
        </el-form-item>
        <el-form-item label="学生姓名">
            <el-input v-model="form.stname" readonly></el-input>
        </el-form-item>
        <el-form-item label="学生密码">
            <el-input v-model="form.password" readonly></el-input>
        </el-form-item>
        <el-form-item label="学生性别">
            <el-input v-model="form.sex" readonly></el-input>
        </el-form-item>
        <el-form-item label="班级">
            <el-input v-model="form.cla" readonly></el-input>
        </el-form-item>
        <el-form-item label="年龄">
            <el-input v-model="form.age" readonly></el-input>
        </el-form-item>
        <el-form-item label="年级">
           <el-input v-model="form.grade" readonly></el-input>
        </el-form-item>
    </el-form>
</template>
<script>
    module.exports= {
        data(){
            return {
                form:{
                    stid : JSON.parse(window.sessionStorage.getItem("loginStudent")).stid,
                    stname : JSON.parse(window.sessionStorage.getItem("loginStudent")).stname,
                    password : JSON.parse(window.sessionStorage.getItem("loginStudent")).password,
                    sex : JSON.parse(window.sessionStorage.getItem("loginStudent")).sex,
                    cla : JSON.parse(window.sessionStorage.getItem("loginStudent")).cla,
                    age : JSON.parse(window.sessionStorage.getItem("loginStudent")).age,
                    grade : JSON.parse(window.sessionStorage.getItem("loginStudent")).grade,
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