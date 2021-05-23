package service.Student;

import bean.PageInfos;
import bean.SumScore;
import dao.Student.StudentDao;
import dao.Student.StudentDaoImpl;

import java.util.List;

public class StudentSumScoreServie {
    StudentDao dao=new StudentDaoImpl();
    public PageInfos findStudentSumScore(String idOrName, String stid, String pageNum, String pageSize) {
            //查询一页的真实数据
            List<SumScore> list=dao.findStudentSumScore(idOrName==null?"":idOrName,stid,(Long.valueOf(pageNum)-1)*Long.valueOf(pageSize),pageSize);
            //查询总数
            long counts=dao.getSumScoreTotal(idOrName,stid);
            PageInfos pageInfos=new PageInfos();
            pageInfos.setTotal(counts);
            pageInfos.setData(list);
            return pageInfos;
        }

}
