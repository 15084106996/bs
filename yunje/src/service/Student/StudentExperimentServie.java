package service.Student;

import bean.Experiment;
import bean.PageInfos;
import dao.Student.StudentDao;
import dao.Student.StudentDaoImpl;

import java.util.List;

public class StudentExperimentServie {
    StudentDao dao=new StudentDaoImpl();
    public PageInfos findStudentExperiment(String idOrName, String stid, String pageNum, String pageSize) {
        //查询一页的真实数据
        List<Experiment> list=dao.findStudentExperiment(idOrName==null?"":idOrName,stid,(Long.valueOf(pageNum)-1)*Long.valueOf(pageSize),pageSize);
        //查询总数
        long counts=dao.getExperimentTotal(idOrName,stid);
        PageInfos pageInfos=new PageInfos();
        pageInfos.setTotal(counts);
        pageInfos.setData(list);
        return pageInfos;
    }
}
