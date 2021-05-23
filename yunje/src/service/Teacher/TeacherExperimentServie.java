package service.Teacher;

import bean.Experiment;
import bean.PageInfos;
import dao.Teacher.TeacherDao;
import dao.Teacher.TeacherDaoImpl;

import java.util.List;

public class TeacherExperimentServie {
    TeacherDao dao=new TeacherDaoImpl();
    public PageInfos findTeacherExperiment(String cIdOrName, String stIdOrName, String pageNum, String pageSize) {
        //查询一页的真实数据
        List<Experiment>list=dao.findTeacherExperiment(cIdOrName==null?"":cIdOrName,stIdOrName==null?"":stIdOrName,(Long.valueOf(pageNum)-1)*Long.valueOf(pageSize),pageSize);
        //查询总数
        long counts=dao.getExperimentTotal(cIdOrName==null?"":cIdOrName,stIdOrName==null?"":stIdOrName);
        PageInfos pageInfos=new PageInfos();
        pageInfos.setTotal(counts);
        pageInfos.setData(list);
        return pageInfos;
    }
}
