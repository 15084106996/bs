package dao.Student;

import bean.*;
import utils.DBUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class StudentDaoImpl implements StudentDao {
    @Override
    public Student findUserByNameAndPass(String stid, String password) {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        Student student = null;
        try {
            conn = DBUtils.getInstance().getConnection();
            ps = conn.prepareStatement("select * from student where  stid= ? and password = ?");
            ps.setString(1, stid);
            ps.setString(2, password);
            rs = ps.executeQuery();
            if (rs.next()) {
                student = new Student();
                student.setStid(rs.getString("stid"));
                student.setStname(rs.getString("stname"));
                student.setPassword(rs.getString("password"));
                student.setCla(rs.getString("cla"));
                student.setSex(rs.getString("sex"));
                student.setAge(rs.getString("age"));
                student.setGrade(rs.getString("grade"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBUtils.getInstance().close(rs);
            DBUtils.getInstance().close(ps);
            DBUtils.getInstance().close(conn);
        }
        return student;
    }

    @Override
    public long getUsualTotal(String idOrName, String stid) {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        long count = 0;
        try {
            conn = DBUtils.getInstance().getConnection();
            ps = conn.prepareStatement("select count(*) as total from usual, course,student,score," +
                    "ranking,avgscore,details where course.cid=usual.cid and student.stid=usual.stid and score.sid=usual.sid " +
                    "and ranking.rid=usual.rid and avgscore.avgid=usual.avgid and details.did=usual.did and student.stid=? " +
                    "and(course.cid=? or course.cname like concat('%',?,'%'))");
            ps.setString(1, stid);
            ps.setString(2, idOrName);
            ps.setString(3, idOrName);
            rs = ps.executeQuery();
            if (rs.next()) {
                count = rs.getLong("total");
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBUtils.getInstance().close(rs);
            DBUtils.getInstance().close(ps);
            DBUtils.getInstance().close(conn);
        }
        return count;
    }


    @Override
    public List<Usual> findStudentUsual(String idOrName, String stid, long pageNum, String pageSize) {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<Usual> list = new ArrayList<>();
        try {
            conn = DBUtils.getInstance().getConnection();
            ps = conn.prepareStatement("select course.cid as cid,cname,student.stid as stid,stname,score,sumscore," +
                    "classavgscore,gradeavgscore,classranking,graderanking,details,opinion from usual, course,student,score," +
                    "ranking,avgscore,details where course.cid=usual.cid and student.stid=usual.stid and score.sid=usual.sid " +
                    "and ranking.rid=usual.rid and avgscore.avgid=usual.avgid and details.did=usual.did and student.stid=? " +
                    "and(course.cid=? or course.cname like concat('%',?,'%'))  limit ?,?");
            ps.setString(1, stid);
            ps.setString(2, idOrName);
            ps.setString(3, idOrName);
            ps.setLong(4, pageNum);
            ps.setLong(5, Long.valueOf(pageSize));
            rs = ps.executeQuery();
            while (rs.next()) {
                Usual usual = new Usual();
                usual.setCid(rs.getString("cid"));
                usual.setCname(rs.getString("cname"));
                usual.setStid(rs.getString("stid"));
                usual.setStname(rs.getString("stname"));
                usual.setScore(rs.getString("score"));
                usual.setSumscore(rs.getString("sumscore"));
                usual.setClassavgscore(rs.getString("classavgscore"));
                usual.setGradeavgscore(rs.getString("gradeavgscore"));
                usual.setClassranking(rs.getString("classranking"));
                usual.setGraderanking(rs.getString("graderanking"));
                usual.setDetails(rs.getString("details"));
                usual.setOpinion(rs.getString("opinion"));
                list.add(usual);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBUtils.getInstance().close(rs);
            DBUtils.getInstance().close(ps);
            DBUtils.getInstance().close(conn);
        }
        return list;
    }

    @Override
    public long getTimeTotal(String stid, String idOrName) {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        long count = 0;
        try {
            conn = DBUtils.getInstance().getConnection();
            ps = conn.prepareStatement("select count(*) as total from course,student,onlinetime,submissions where " +
                    "student.stid=onlinetime.stid and submissions.subid=onlinetime.subid and course.cid=onlinetime.cid and " +
                    "student.stid=?  and (course.cid=? or course.cname like concat('%',?,'%'))");
            ps.setString(1, stid);
            ps.setString(2, idOrName);
            ps.setString(3, idOrName);
            rs = ps.executeQuery();
            if (rs.next()) {
                count = rs.getLong("total");
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBUtils.getInstance().close(rs);
            DBUtils.getInstance().close(ps);
            DBUtils.getInstance().close(conn);
        }
        return count;
    }

    @Override
    public List<OnlineTime> findStudentTime(String stid,String idOrName, long pageNum, String pageSize) {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<OnlineTime> list = new ArrayList<>();
        try {
            conn = DBUtils.getInstance().getConnection();
            ps = conn.prepareStatement("select student.stid as stid,stname,sumtime,avgtime,submissions,kind,avgsubmissions,course.cid as cid,cname " +
                    "from course,student,onlinetime,submissions where student.stid=onlinetime.stid and submissions.subid=onlinetime.subid and " +
                    "course.cid=onlinetime.cid and student.stid=?  and (course.cid=? or course.cname like concat('%',?,'%')) limit ?,?");
            ps.setString(1, stid);
            ps.setString(2, idOrName);
            ps.setString(3, idOrName);
            ps.setLong(4, pageNum);
            ps.setLong(5, Long.valueOf(pageSize));
            rs = ps.executeQuery();
            while (rs.next()) {
                OnlineTime onlineTime = new OnlineTime();
                onlineTime.setStid(rs.getString("stid"));
                onlineTime.setStname(rs.getString("stname"));
                onlineTime.setSumtime(rs.getString("sumtime"));
                onlineTime.setAvgtime(rs.getString("avgtime"));
                onlineTime.setSubmissions(rs.getString("submissions"));
                onlineTime.setAvgsubmissions(rs.getString("avgsubmissions"));
                onlineTime.setCid(rs.getString("cid"));
                onlineTime.setCname(rs.getString("cname"));
                onlineTime.setKind(rs.getString("kind"));
                list.add(onlineTime);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBUtils.getInstance().close(rs);
            DBUtils.getInstance().close(ps);
            DBUtils.getInstance().close(conn);
        }
        return list;
    }


    @Override
    public List<Homework> findStudentHomework(String idOrName, String stid, long pageNum, String pageSize){
        Connection conn =null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<Homework> list = new ArrayList<>();
        try {
            conn = DBUtils.getInstance().getConnection();
            ps = conn.prepareStatement("select course.cid as cid,cname,student.stid as stid,stname,kind,htid,score,sumscore," +
                    "classranking,graderanking,classavgscore,gradeavgscore from homework,course,student,score,ranking,avgscore " +
                    "where course.cid=homework.cid and student.stid=homework.stid and score.sid=homework.sid and ranking.rid=homework.rid " +
                    "and avgscore.avgid=homework.avgid and student.stid=? and (course.cid=? or course.cname like concat('%',?,'%'))  " +
                    "order by kind limit ?,?");
            ps.setString(1, stid);
            ps.setString(2, idOrName);
            ps.setString(3, idOrName);
            ps.setLong(4, pageNum);
            ps.setLong(5, Long.valueOf(pageSize));
            rs = ps.executeQuery();
        while (rs.next()) {
            Homework homework = new Homework();
            homework.setCid(rs.getString("cid"));
            homework.setCname(rs.getString("cname"));
            homework.setStid(rs.getString("stid"));
            homework.setStname(rs.getString("stname"));
            homework.setScore(rs.getString("score"));
            homework.setSumscore(rs.getString("sumscore"));
            homework.setClassranking(rs.getString("classranking"));
            homework.setGraderanking(rs.getString("graderanking"));
            homework.setHtid(rs.getString("htid"));
            homework.setKind(rs.getString("kind"));
            homework.setClassavgscore(rs.getString("classavgscore"));
            homework.setGradeavgscore(rs.getString("gradeavgscore"));
            list.add(homework);
        }
    } catch(
    Exception e)

    {
        e.printStackTrace();
    } finally
    {
        DBUtils.getInstance().close(rs);
        DBUtils.getInstance().close(ps);
        DBUtils.getInstance().close(conn);
    }
        return list;
     }
    @Override
    public long getHomeworkTotal(String idOrName, String stid) {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        long count = 0;
        try {
            conn = DBUtils.getInstance().getConnection();
            ps = conn.prepareStatement("select count(*) as total from homework,course,student,score,ranking where " +
                    "course.cid=homework.cid and student.stid=homework.stid and score.sid=homework.sid and " +
                    "ranking.rid=homework.rid and student.stid=? and (course.cid=? or " +
                    "course.cname like concat('%',?,'%'))");
            ps.setString(1, stid);
            ps.setString(2, idOrName);
            ps.setString(3, idOrName);
            rs = ps.executeQuery();
            if (rs.next()) {
                count = rs.getLong("total");
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBUtils.getInstance().close(rs);
            DBUtils.getInstance().close(ps);
            DBUtils.getInstance().close(conn);
        }
        return count;
    }

    @Override
    public List<Topic> findStudentTopic(String htid, long pageNum, String pageSize) {
        Connection conn =null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<Topic> list = new ArrayList<>();
        try {
            conn = DBUtils.getInstance().getConnection();
            ps = conn.prepareStatement("select topkind,topname,toptext,kname,ktext,score,sumscore,details,opinion" +
                    " from homeworktopic,knowledge,score,details,topic " +
                    "where knowledge.kid=homeworktopic.kid and score.sid=homeworktopic.sid " +
                    " and details.did=homeworktopic.did and topic.topid=homeworktopic.topid " +
                    "and homeworktopic.htid=? limit ?,?");
            ps.setString(1, htid);
            ps.setLong(2, pageNum);
            ps.setLong(3, Long.valueOf(pageSize));
            rs = ps.executeQuery();
            while (rs.next()) {
                Topic topic= new Topic();
                topic.setTopkind(rs.getString("topkind"));
                topic.setTopname(rs.getString("topname"));
                topic.setToptext(rs.getString("toptext"));
                topic.setKtext(rs.getString("ktext"));
                topic.setKname(rs.getString("kname"));
                topic.setScore(rs.getString("score"));
                topic.setSumscore(rs.getString("sumscore"));
                topic.setDetails(rs.getString("details"));
                topic.setOpinion(rs.getString("opinion"));
                list.add(topic);
            }
        } catch(Exception e)
        {
            e.printStackTrace();
        } finally
        {
            DBUtils.getInstance().close(rs);
            DBUtils.getInstance().close(ps);
            DBUtils.getInstance().close(conn);
        }
        return list;
    }

    @Override
    public long getTopicTotal(String htid) {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        long count = 0;
        try {
            conn = DBUtils.getInstance().getConnection();
            ps = conn.prepareStatement("select count(*) as total from homeworktopic,homework,knowledge,score,details,topic" +
                    " where knowledge.kid=homeworktopic.kid and score.sid=homeworktopic.sid " +
                    "and details.did=homeworktopic.did and topic.topid=homeworktopic.topid " +
                    "and homeworktopic.htid=?");
            ps.setString(1, htid);
            rs = ps.executeQuery();
            if (rs.next()) {
                count = rs.getLong("total");
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBUtils.getInstance().close(rs);
            DBUtils.getInstance().close(ps);
            DBUtils.getInstance().close(conn);
        }
        return count;
    }

    @Override
    public List<Experiment> findStudentExperiment(String idOrName, String stid, long pageNum, String pageSize) {
        Connection conn =null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<Experiment> list = new ArrayList<>();
        try {
            conn = DBUtils.getInstance().getConnection();
            ps = conn.prepareStatement("select course.cid as cid,cname,student.stid as stid,stname,score,sumscore,details," +
                    "opinion,ename,etext,kind,classranking,graderanking,classavgscore,gradeavgscore from experiment,experimentstudent," +
                    "details,score,course,ranking,student,avgscore where experimentstudent.eid=experiment.eid and " +
                    "experimentstudent.did=details.did and experimentstudent.sid=score.sid and experimentstudent.cid=course.cid " +
                    "and experimentstudent.rid=ranking.rid and experimentstudent.stid=student.stid and experimentstudent.avgid=avgscore.avgid and student.stid=? and (course.cid=? or course.cname " +
                    "like concat('%',?,'%')) limit ?,?");
            ps.setString(1, stid);
            ps.setString(2, idOrName);
            ps.setString(3, idOrName);
            ps.setLong(4, pageNum);
            ps.setLong(5, Long.valueOf(pageSize));
            rs = ps.executeQuery();
            while (rs.next()) {
                Experiment experiment= new Experiment();
                experiment.setCid(rs.getString("cid"));
                experiment.setCname(rs.getString("cname"));
                experiment.setStid(rs.getString("stid"));
                experiment.setStname(rs.getString("stname"));
                experiment.setScore(rs.getString("score"));
                experiment.setSumscore(rs.getString("sumscore"));
                experiment.setDetails(rs.getString("details"));
                experiment.setOpinion(rs.getString("opinion"));
                experiment.setClassranking(rs.getString("classranking"));
                experiment.setGraderanking(rs.getString("graderanking"));
                experiment.setClassavgscore(rs.getString("classavgscore"));
                experiment.setGradeavgscore(rs.getString("gradeavgscore"));
                experiment.setEname(rs.getString("ename"));
                experiment.setEtext(rs.getString("etext"));
                experiment.setKind(rs.getString("kind"));
                list.add(experiment);
            }
        } catch(Exception e)
        {
            e.printStackTrace();
        } finally
        {
            DBUtils.getInstance().close(rs);
            DBUtils.getInstance().close(ps);
            DBUtils.getInstance().close(conn);
        }
        return list;
    }

    @Override
    public long getExperimentTotal(String idOrName, String stid) {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        long count = 0;
        try {
            conn = DBUtils.getInstance().getConnection();
            ps = conn.prepareStatement("select count(*) as total from experiment,experimentstudent,details,score," +
                    "course,ranking,student where experimentstudent.eid=experiment.eid and experimentstudent.did=details.did " +
                    "and experimentstudent.sid=score.sid and experimentstudent.cid=course.cid and experimentstudent.rid=ranking.rid " +
                    "and experimentstudent.stid=student.stid " +
                    "and student.stid=? and (course.cid=? or course.cname like concat('%',?,'%')) ");
            ps.setString(1, stid);
            ps.setString(2, idOrName);
            ps.setString(3, idOrName);
            rs = ps.executeQuery();
            if (rs.next()) {
                count = rs.getLong("total");
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBUtils.getInstance().close(rs);
            DBUtils.getInstance().close(ps);
            DBUtils.getInstance().close(conn);
        }
        return count;
    }

    @Override
    public List<Test> findStudentTest(String idOrName, String stid, long pageNum, String pageSize) {
        Connection conn =null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<Test> list = new ArrayList<>();
        try {
            conn = DBUtils.getInstance().getConnection();
            ps = conn.prepareStatement("select course.cid as cid,cname,student.stid as stid,stname,test.ttid as ttid," +
                    "kind,score,sumscore,classranking,graderanking,ratio,classavgscore,gradeavgscore from test,score,course," +
                    "student,ranking,avgscore where test.cid=course.cid and test.sid=score.sid and test.stid=student.stid and " +
                    "test.avgid=avgscore.avgid and test.rid=ranking.rid and student.stid=? and (course.cid=? or " +
                    "course.cname like concat('%',?,'%')) limit ?,?");
            ps.setString(1, stid);
            ps.setString(2, idOrName);
            ps.setString(3, idOrName);
            ps.setLong(4, pageNum);
            ps.setLong(5, Long.valueOf(pageSize));
            rs = ps.executeQuery();
            while (rs.next()) {
                Test test=new Test();
                test.setCid(rs.getString("cid"));
                test.setCname(rs.getString("cname"));
                test.setStid(rs.getString("stid"));
                test.setStname(rs.getString("stname"));
                test.setKind(rs.getString("kind"));
                test.setRatio(rs.getString("ratio"));
                test.setGradeavgscore(rs.getString("gradeavgscore"));
                test.setScore(rs.getString("score"));
                test.setSumscore(rs.getString("sumscore"));
                test.setClassranking(rs.getString("classranking"));
                test.setGraderanking(rs.getString("graderanking"));
                test.setTtid(rs.getString("ttid"));
                test.setClassavgscore(rs.getString("classavgscore"));

                list.add(test);
            }
        } catch(Exception e)
        {
            e.printStackTrace();
        } finally
        {
            DBUtils.getInstance().close(rs);
            DBUtils.getInstance().close(ps);
            DBUtils.getInstance().close(conn);
        }
        return list;
    }

    @Override
    public long getTestTotal(String idOrName, String stid) {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        long count = 0;
        try {
            conn = DBUtils.getInstance().getConnection();
            ps = conn.prepareStatement("select count(*) as total from test,score,course,student,ranking,avgscore" +
                    "where test.cid=course.cid and test.sid=score.sid and test.avgid=test.avgid,and test.stid=student.stid and test.rid=ranking.rid " +
                    "and student.stid=? and (course.cid=? or course.cname like concat('%',?,'%'))");
            ps.setString(1, stid);
            ps.setString(2, idOrName);
            ps.setString(3, idOrName);
            rs = ps.executeQuery();
            if (rs.next()) {
                count = rs.getLong("total");
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBUtils.getInstance().close(rs);
            DBUtils.getInstance().close(ps);
            DBUtils.getInstance().close(conn);
        }
        return count;
    }

    @Override
    public List<Topic> findStudentTestTopic(String ttid, long pageNum, String pageSize) {
        Connection conn =null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<Topic> list = new ArrayList<>();
        try {
            conn = DBUtils.getInstance().getConnection();
            ps = conn.prepareStatement("select topkind,topname,toptext,kname,ktext,score,sumscore,details,opinion " +
                    "from testtopic,knowledge,score,details,topic where " +
                    "knowledge.kid=testtopic.kid and score.sid=testtopic.sid and " +
                    "details.did=testtopic.did and topic.topid=testtopic.topid and testtopic.ttid=? limit ?,?");
            ps.setString(1, ttid);
            ps.setLong(2, pageNum);
            ps.setLong(3, Long.valueOf(pageSize));
            rs = ps.executeQuery();
            while (rs.next()) {
                Topic topic= new Topic();
                topic.setTopkind(rs.getString("topkind"));
                topic.setTopname(rs.getString("topname"));
                topic.setToptext(rs.getString("toptext"));
                topic.setKtext(rs.getString("ktext"));
                topic.setKname(rs.getString("kname"));
                topic.setScore(rs.getString("score"));
                topic.setSumscore(rs.getString("sumscore"));
                topic.setDetails(rs.getString("details"));
                topic.setOpinion(rs.getString("opinion"));
                list.add(topic);
            }
        } catch(Exception e)
        {
            e.printStackTrace();
        } finally
        {
            DBUtils.getInstance().close(rs);
            DBUtils.getInstance().close(ps);
            DBUtils.getInstance().close(conn);
        }
        return list;
    }

    @Override
    public long getTestTopicTotal(String ttid) {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        long count = 0;
        try {
            conn = DBUtils.getInstance().getConnection();
            ps = conn.prepareStatement("select count(*) as total from testtopic,knowledge,score,details,topic " +
                    "where  knowledge.kid=testtopic.kid and score.sid=testtopic.sid and " +
                    " details.did=testtopic.did and topic.topid=testtopic.topid and testtopic.ttid=?");
            ps.setString(1, ttid);
            rs = ps.executeQuery();
            if (rs.next()) {
                count = rs.getLong("total");
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBUtils.getInstance().close(rs);
            DBUtils.getInstance().close(ps);
            DBUtils.getInstance().close(conn);
        }
        return count;
    }

    @Override
    public List<SumScore> findStudentSumScore(String idOrName, String stid, long pageNum, String pageSize) {
        Connection conn =null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<SumScore> list = new ArrayList<>();
        try {
            conn = DBUtils.getInstance().getConnection();
            ps = conn.prepareStatement("select course.cid  as cid,cname,student.stid as stid,stname,uscore,hscore,escore," +
                    "tscore,additionalscore,sumscore,ssumscore,classranking,graderanking,classavgscore,gradeavgscore,details," +
                    "opinion from sumscore,student,course,avgscore,ranking,details where ranking.rid=sumscore.rid and avgscore.avgid=sumscore.avgid and " +
                    "student.stid=sumscore.stid and details.did=sumscore.did and course.cid=sumscore.cid and student.stid=? and (course.cid=? or " +
                    "course.cname like concat('%',?,'%')) limit ?,?");
            ps.setString(1,stid );
            ps.setString(2,idOrName );
            ps.setString(3,idOrName );
            ps.setLong(4, pageNum);
            ps.setLong(5, Long.valueOf(pageSize));
            rs = ps.executeQuery();
            while (rs.next()) {
                SumScore sumScore=new SumScore();
                sumScore.setCid(rs.getString("cid"));
                sumScore.setCname(rs.getString("cname"));
                sumScore.setStid(rs.getString("stid"));
                sumScore.setStname(rs.getString("stname"));
                sumScore.setUscore(rs.getString("uscore"));
                sumScore.setHscore(rs.getString("hscore"));
                sumScore.setEscore(rs.getString("escore"));
                sumScore.setTscore(rs.getString("tscore"));
                sumScore.setAdditionalscore(rs.getString("additionalscore"));
                sumScore.setSumscore(rs.getString("sumscore"));
                sumScore.setClassranking(rs.getString("classranking"));
                sumScore.setGraderanking(rs.getString("graderanking"));
                sumScore.setSsumscore(rs.getString("ssumscore"));
                sumScore.setClassavgscore(rs.getString("classavgscore"));
                sumScore.setGradeavgscore(rs.getString("gradeavgscore"));
                sumScore.setDetails(rs.getString("details"));
                sumScore.setOpinion(rs.getString("opinion"));
                list.add(sumScore);
            }
        } catch(Exception e)
        {
            e.printStackTrace();
        } finally
        {
            DBUtils.getInstance().close(rs);
            DBUtils.getInstance().close(ps);
            DBUtils.getInstance().close(conn);
        }
        return list;
    }

    @Override
    public long getSumScoreTotal(String idOrName, String stid) {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        long count = 0;
        try {
            conn = DBUtils.getInstance().getConnection();
            ps = conn.prepareStatement("select count(*) as total from sumscore,student,course,avgscore,ranking,details " +
                    "where ranking.rid=sumscore.rid and avgscore.avgid=sumscore.avgid and student.stid=sumscore.stid and details.did=sumscore.did and " +
                    "course.cid=sumscore.cid and student.stid=? and (course.cid=? or course.cname like concat('%',?,'%'))");
            ps.setString(1,stid );
            ps.setString(2,idOrName );
            ps.setString(3,idOrName );
            rs = ps.executeQuery();
            if (rs.next()) {
                count = rs.getLong("total");
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBUtils.getInstance().close(rs);
            DBUtils.getInstance().close(ps);
            DBUtils.getInstance().close(conn);
        }
        return count;
    }
}