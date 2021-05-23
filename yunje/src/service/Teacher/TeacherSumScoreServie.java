package service.Teacher;

import bean.PageInfos;
import bean.SumScore;
import dao.Teacher.TeacherDao;
import dao.Teacher.TeacherDaoImpl;

import java.util.List;

public class TeacherSumScoreServie {
    TeacherDao dao=new TeacherDaoImpl();
    public PageInfos findTeacherSumScore(String cIdOrName, String stIdOrName, String pageNum, String pageSize) {
        //查询一页的真实数据
        List<SumScore> list=dao.findTeacherSumScore(cIdOrName==null?"":cIdOrName,stIdOrName==null?"":stIdOrName,(Long.valueOf(pageNum)-1)*Long.valueOf(pageSize),pageSize);
        //查询总数
        long counts=dao.getSumScoreTotal(cIdOrName==null?"":cIdOrName,stIdOrName==null?"":stIdOrName);
        PageInfos pageInfos=new PageInfos();
        pageInfos.setTotal(counts);
        pageInfos.setData(list);
        return pageInfos;
    }
}
