package service.Teacher;

import bean.Teacher;
import bean.RespBean;
import dao.Teacher.TeacherDao;
import dao.Teacher.TeacherDaoImpl;

public class TeacherLoginService {
    TeacherDao dao = new TeacherDaoImpl();
    public RespBean doLogin(String tid, String password) {
        Teacher teacher = dao.findUserByNameAndPass(tid, password);
        if (teacher == null) {
            return RespBean.error(500, "用户名或密码错误");
        }else{
            // 查询 用户的 角色
            return RespBean.success(200, "登录成功", teacher);
        }
    }
}
