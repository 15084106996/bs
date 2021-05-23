package service.Student;

import bean.RespBean;
import bean.Student;
import dao.Student.StudentDao;
import dao.Student.StudentDaoImpl;

public class StudentLoginService {
    StudentDao dao = new StudentDaoImpl();
    public RespBean doLogin(String stid, String password) {
        Student student = dao.findUserByNameAndPass(stid, password);
        if (student == null) {
            return RespBean.error(500, "用户名或密码错误");
        }else{
            // 查询 用户的 角色
            return RespBean.success(200, "登录成功", student);
        }
    }
}
