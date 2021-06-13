package dao.Teacher;

import bean.*;
import utils.DBUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
public class TeacherDaoImpl implements TeacherDao {
    @Override
    public Teacher findUserByNameAndPass(String tid, String password) {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        Teacher teacher = null;
        try {

            conn = DBUtils.getInstance().getConnection();
            ps = conn.prepareStatement("select * from teacher where  tid= ? and password = ?");
            ps.setString(1,tid);
            ps.setString(2,password);
            rs = ps.executeQuery();
            if (rs.next()) {
              teacher =new Teacher();
              teacher.setTid(rs.getString("tid"));
              teacher.setTname(rs.getString("tname"));
              teacher.setPassword(rs.getString("password"));
              teacher.setAge(rs.getString("age"));
              teacher.setSex(rs.getString("sex"));
              teacher.setWorkage(rs.getString("workage"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBUtils.getInstance().close(rs);
            DBUtils.getInstance().close(ps);
            DBUtils.getInstance().close(conn);
        }
        return teacher;
    }

    @Override
    public List<Usual> findTeacherUsual(String cIdOrName, String stIdOrName, long pageNum, String pageSize) {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<Usual> list = new ArrayList<>();
        try {
            conn = DBUtils.getInstance().getConnection();
            ps = conn.prepareStatement("select course.cid as cid,cname,student.stid as stid,stname,cla,score," +
                    "sumscore,classavgscore,gradeavgscore,classranking,graderanking,details,opinion from usual,course,student," +
                    "score,ranking,avgscore,details where course.cid=usual.cid and student.stid=usual.stid and score.sid=usual.sid" +
                    " and ranking.rid=usual.rid and avgscore.avgid=usual.avgid and details.did=usual.did and (student.stid=? " +
                    "or student.stname like concat('%',?,'%')) and(course.cid=? or course.cname like concat('%',?,'%')) limit ?,?");
            ps.setString(1, stIdOrName);
            ps.setString(2, stIdOrName);
            ps.setString(3, cIdOrName);
            ps.setString(4, cIdOrName);
            ps.setLong(5, pageNum);
            ps.setLong(6, Long.valueOf(pageSize));
            rs = ps.executeQuery();
            while (rs.next()) {
                Usual usual = new Usual();
                usual.setCid(rs.getString("cid"));
                usual.setCname(rs.getString("cname"));
                usual.setStid(rs.getString("stid"));
                usual.setStname(rs.getString("stname"));
                usual.setCla(rs.getString("cla"));
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
    public long getUsualTotal(String cIdOrName, String stIdOrName) {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        long count = 0;
        try {
            conn = DBUtils.getInstance().getConnection();
            ps = conn.prepareStatement("select count(*) as total from usual,course,student,score,ranking,avgscore,details" +
                    " where course.cid=usual.cid and student.stid=usual.stid and score.sid=usual.sid and ranking.rid=usual.rid " +
                    "and avgscore.avgid=usual.avgid and details.did=usual.did and (student.stid=? or student.stname like concat('%',?,'%'))" +
                    " and(course.cid=? or course.cname like concat('%',?,'%'))");
            ps.setString(1, stIdOrName);
            ps.setString(2, stIdOrName);
            ps.setString(3, cIdOrName);
            ps.setString(4, cIdOrName);
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
    public List<Experiment> findTeacherExperiment(String cIdOrName, String stIdOrName, long pageNum, String pageSize) {
        Connection conn =null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<Experiment> list = new ArrayList<>();
        try {
            conn = DBUtils.getInstance().getConnection();
            ps = conn.prepareStatement("select course.cid as cid,cname,student.stid as stid,stname,cla,score,sumscore," +
                    "details,opinion,ename,etext,kind,classranking,graderanking,classavgscore,gradeavgscore from " +
                    "experiment,experimentstudent,details,score,course,ranking,student,avgscore where experimentstudent.eid=experiment.eid " +
                    "and experimentstudent.did=details.did and experimentstudent.sid=score.sid and experimentstudent.cid=course.cid " +
                    "and experimentstudent.rid=ranking.rid and experimentstudent.avgid=avgscore.avgid and experimentstudent.stid=student.stid " +
                    "and  (student.stid=? or student.stname like concat('%',?,'%')) and (course.cid=? or course.cname like concat('%',?,'%')) limit ?,?");
            ps.setString(1, stIdOrName);
            ps.setString(2, stIdOrName);
            ps.setString(3, cIdOrName);
            ps.setString(4, cIdOrName);
            ps.setLong(5, pageNum);
            ps.setLong(6, Long.valueOf(pageSize));
            rs = ps.executeQuery();
            while (rs.next()) {
                Experiment experiment= new Experiment();
                experiment.setCid(rs.getString("cid"));
                experiment.setCname(rs.getString("cname"));
                experiment.setStid(rs.getString("stid"));
                experiment.setStname(rs.getString("stname"));
                experiment.setScore(rs.getString("score"));
                experiment.setCla(rs.getString("cla"));
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
    public long getExperimentTotal(String cIdOrName, String stIdOrName) {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        long count = 0;
        try {
            conn = DBUtils.getInstance().getConnection();
            ps = conn.prepareStatement("select count(*) as total from experiment,experimentstudent,details,score,course," +
                    "ranking,student,avgscore where experimentstudent.eid=experiment.eid and experimentstudent.did=details.did " +
                    "and experimentstudent.sid=score.sid and experimentstudent.cid=course.cid and experimentstudent.rid=ranking.rid " +
                    "and experimentstudent.avgid=avgscore.avgid and experimentstudent.stid=student.stid and  (student.stid=? " +
                    "or student.stname like concat('%',?,'%')) and (course.cid=? or course.cname like concat('%',?,'%')) ");
            ps.setString(1, stIdOrName);
            ps.setString(2, stIdOrName);
            ps.setString(3, cIdOrName);
            ps.setString(4, cIdOrName);
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
    public List<SumScore> findTeacherSumScore(String cIdOrName, String stIdOrName, long pageNum, String pageSize) {
        Connection conn =null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<SumScore> list = new ArrayList<>();
        try {
            conn = DBUtils.getInstance().getConnection();
            ps = conn.prepareStatement("select course.cid  as cid,cname,student.stid as stid,cla,stname,uscore," +
                    "hscore,escore,tscore,additionalscore,sumscore,ssumscore,classranking,graderanking," +
                    "classavgscore,gradeavgscore,details,opinion from sumscore,student,course,avgscore,ranking,details " +
                    "where ranking.rid=sumscore.rid and avgscore.avgid=sumscore.avgid and student.stid=sumscore.stid and " +
                    "details.did=sumscore.did and course.cid=sumscore.cid and (student.stid=? or student.stname " +
                    "like concat('%',?,'%') )and (course.cid=? or course.cname like concat('%',?,'%')) limit ?,?");
            ps.setString(1,stIdOrName );
            ps.setString(2,stIdOrName );
            ps.setString(3,cIdOrName );
            ps.setString(4,cIdOrName );
            ps.setLong(5, pageNum);
            ps.setLong(6, Long.valueOf(pageSize));
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
                sumScore.setCla(rs.getString("cla"));
                sumScore.setAdditionalscore(rs.getString("additionalscore"));
                sumScore.setSumscore(rs.getString("sumscore"));
                sumScore.setClassranking(rs.getString("classranking"));
                sumScore.setGraderanking(rs.getString("graderanking"));
                sumScore.setSsumscore(rs.getString("ssumscore"));
                sumScore.setClassavgscore(rs.getString("classavgscore"));
                sumScore.setGradeavgscore(rs.getString("gradeavgscore"));
                sumScore.setOpinion(rs.getString("opinion"));
                sumScore.setDetails(rs.getString("details"));
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
    public long getSumScoreTotal(String cIdOrName, String stIdOrName) {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        long count = 0;
        try {
            conn = DBUtils.getInstance().getConnection();
            ps = conn.prepareStatement("select count(*) as total from sumscore,student,course,avgscore,ranking,details " +
                    "where ranking.rid=sumscore.rid and avgscore.avgid=sumscore.avgid and student.stid=sumscore.stid and d" +
                    "etails.did=sumscore.did and course.cid=sumscore.cid and (student.stid=? or student.stname " +
                    "like concat('%',>,'%') )and (course.cid=? or course.cname like concat('%',?,'%'))");
            ps.setString(1,stIdOrName );
            ps.setString(2,stIdOrName );
            ps.setString(3,cIdOrName );
            ps.setString(4,cIdOrName );
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
    public List<Test> findTeacherTest(String cIdOrName, String stIdOrName, long pageNum, String pageSize) {
        Connection conn =null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<Test> list = new ArrayList<>();
        try {
            conn = DBUtils.getInstance().getConnection();
            ps = conn.prepareStatement("select course.cid as cid,cname,student.stid as stid,stname,cla,ttid,kind,score,sumscore,classranking,graderanking,test.ttid " +
                    "as ttid,classavgscore,gradeavgscore from test,score,course,student,ranking,avgscore where test.cid=course.cid " +
                    "and test.sid=score.sid and test.stid=student.stid and test.rid=ranking.rid and test.avgid=avgscore.avgid " +
                    "and  (student.stid=? or student.stname like concat('%',?,'%')) and (course.cid=? or course.cname like concat('%',?,'%')) limit ?,?");
            ps.setString(1, stIdOrName);
            ps.setString(2, stIdOrName);
            ps.setString(3, cIdOrName);
            ps.setString(4, cIdOrName);
            ps.setLong(5, pageNum);
            ps.setLong(6, Long.valueOf(pageSize));
            rs = ps.executeQuery();
            while (rs.next()) {
                Test test=new Test();
                test.setCid(rs.getString("cid"));
                test.setCname(rs.getString("cname"));
                test.setStid(rs.getString("stid"));
                test.setStname(rs.getString("stname"));
                test.setKind(rs.getString("kind"));
                test.setScore(rs.getString("score"));
                test.setCla(rs.getString("cla"));
                test.setSumscore(rs.getString("sumscore"));
                test.setClassranking(rs.getString("classranking"));
                test.setGraderanking(rs.getString("graderanking"));
                test.setTtid(rs.getString("ttid"));
                test.setGradeavgscore(rs.getString("gradeavgscore"));
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
    public long getTestTotal(String cIdOrName, String stIdOrName) {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        long count = 0;
        try {
            conn = DBUtils.getInstance().getConnection();
            ps = conn.prepareStatement("select  count(*) as total from test,score,course,student,ranking,avgscore " +
                    "where test.cid=course.cid and test.sid=score.sid and test.stid=student.stid and test.rid=ranking.rid " +
                    "and test.avgid=avgscore.avgid and  (student.stid=? or student.stname like concat('%',?,'%')) " +
                    "and (course.cid=? or course.cname like concat('%',?,'%')) ");
            ps.setString(1, stIdOrName);
            ps.setString(2, stIdOrName);
            ps.setString(3, cIdOrName);
            ps.setString(4, cIdOrName);
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
    public long getTimeTotal(String cIdOrName, String stIdOrName) {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        long count = 0;
        try {
            conn = DBUtils.getInstance().getConnection();
            ps = conn.prepareStatement("select count(*) as total from course,student,onlinetime,submissions where" +
                    " student.stid=onlinetime.stid and submissions.subid=onlinetime.subid and course.cid=onlinetime.cid and" +
                    " (student.stid=? or student.stname like concat('%',?,'%')) and (course.cid=? or " +
                    "course.cname like concat('%',?,'%'))");
            ps.setString(1, stIdOrName);
            ps.setString(2, stIdOrName);
            ps.setString(3, cIdOrName);
            ps.setString(4, cIdOrName);
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
    public List<OnlineTime> findTeacherTime(String cIdOrName, String stIdOrName, long pageNum, String pageSize) {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<OnlineTime> list = new ArrayList<>();
        try {
            conn = DBUtils.getInstance().getConnection();
            ps = conn.prepareStatement("select student.stid as stid,stname,sumtime,avgtime,submissions,avgsubmissions,course.cid as cid,kind,cname,cla " +
                    "from course,student,onlinetime,submissions where student.stid=onlinetime.stid and submissions.subid=onlinetime.subid and " +
                    "course.cid=onlinetime.cid and (student.stid=? or student.stname like concat('%',?,'%')) and (course.cid=? " +
                    "or course.cname like concat('%',?,'%')) limit ?,?");
            ps.setString(1, stIdOrName);
            ps.setString(2, stIdOrName);
            ps.setString(3, cIdOrName);
            ps.setString(4, cIdOrName);
            ps.setLong(5, pageNum);
            ps.setLong(6, Long.valueOf(pageSize));
            rs = ps.executeQuery();
            while (rs.next()) {
                OnlineTime onlineTime = new OnlineTime();
                onlineTime.setStid(rs.getString("stid"));
                onlineTime.setStname(rs.getString("stname"));
                onlineTime.setSumtime(rs.getString("sumtime"));
                onlineTime.setAvgtime(rs.getString("avgtime"));
                onlineTime.setCla(rs.getString("cla"));
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
    public long getHomeworkTotal(String cIdOrName, String stIdOrName) {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        long count = 0;
        try {
            conn = DBUtils.getInstance().getConnection();
            ps = conn.prepareStatement("select count(*) as total from avgscore,homework,course,student,score,ranking " +
                    "where course.cid=homework.cid and student.stid=homework.stid and avgscore.avgid=homework.avgid " +
                    "and score.sid=homework.sid and ranking.rid=homework.rid and (student.stid=? or student.stname " +
                    "like concat('%',?,'%'))  and (course.cid=? or course.cname like concat('%',?,'%'))");
            ps.setString(1, stIdOrName);
            ps.setString(2, stIdOrName);
            ps.setString(3, cIdOrName);
            ps.setString(4, cIdOrName);
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
    public List<Homework> findTeacherHomework(String cIdOrName, String stIdOrName, long pageNum, String pageSize) {
        Connection conn =null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<Homework> list = new ArrayList<>();
        try {
            conn = DBUtils.getInstance().getConnection();
            ps = conn.prepareStatement("select course.cid as cid,cname,student.stid as stid,stname,kind,htid,score," +
                    "sumscore,classranking,graderanking,cla,classavgscore,gradeavgscore from avgscore,homework,course,student,score,ranking" +
                    " where course.cid=homework.cid and student.stid=homework.stid and avgscore.avgid=homework.avgid and score.sid=homework.sid " +
                    "and ranking.rid=homework.rid and (student.stid=? or student.stname like concat('%',?,'%'))  " +
                    "and (course.cid=? or course.cname like concat('%',?,'%')) limit ?,?");
            ps.setString(1, stIdOrName);
            ps.setString(2, stIdOrName);
            ps.setString(3, cIdOrName);
            ps.setString(4, cIdOrName);
            ps.setLong(5, pageNum);
            ps.setLong(6, Long.valueOf(pageSize));
            rs = ps.executeQuery();
            while (rs.next()) {
                Homework homework = new Homework();
                homework.setCid(rs.getString("cid"));
                homework.setCname(rs.getString("cname"));
                homework.setStid(rs.getString("stid"));
                homework.setStname(rs.getString("stname"));
                homework.setScore(rs.getString("score"));
                homework.setCla(rs.getString("cla"));
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
    public List<Kind> findTeacherKind(String cIdOrName, String stIdOrName, long pageNum, String pageSize) {
        Connection conn =null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<Kind> list = new ArrayList<>();
        try {
            conn = DBUtils.getInstance().getConnection();
            ps = conn.prepareStatement("select course.cid as cid,cname,student.stid as stid,stname,kid,score,sumscore," +
                    "classavgscore,gradeavgscore,classranking,graderanking,details,opinion,cla from student,course,kind,details" +
                    ",avgscore,ranking,score where kind.did=details.did and student.stid=kind.stid and course.cid= kind.cid " +
                    "and avgscore.avgid=kind.avgid and ranking.rid=kind.rid and score.sid=kind.sid and (student.stid=? " +
                    "or student.stname like concat('%',?,'%')) and (course.cid=? or course.cname like concat('%',?,'%')) limit ?,?");
            ps.setString(1, stIdOrName);
            ps.setString(2, stIdOrName);
            ps.setString(3, cIdOrName);
            ps.setString(4, cIdOrName);
            ps.setLong(5, pageNum);
            ps.setLong(6, Long.valueOf(pageSize));
            rs = ps.executeQuery();
            while (rs.next()) {
                Kind kind= new Kind();
                kind.setCid(rs.getString("cid"));
                kind.setCname(rs.getString("cname"));
                kind.setStid(rs.getString("stid"));
                kind.setStname(rs.getString("stname"));
                kind.setDetails(rs.getString("details"));
                kind.setOpinion(rs.getString("opinion"));
                kind.setKid(rs.getBoolean("kid"));
                kind.setScore(rs.getString("score"));
                kind.setSumscore(rs.getString("sumscore"));
                kind.setClassavgscore(rs.getString("classavgscore"));
                kind.setGradeavgscore(rs.getString("gradeavgscore"));
                kind.setClassranking(rs.getString("classranking"));
                kind.setGraderanking(rs.getString("graderanking"));
                kind.setCla(rs.getString("cla"));
                list.add(kind);
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
    public long getKindTotal(String cIdOrName, String stIdOrName) {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        long count = 0;
        try {
            conn = DBUtils.getInstance().getConnection();
            ps = conn.prepareStatement("select count(*) as total from student,course,kind,details,avgscore,ranking,score" +
                    " where kind.did=details.did and student.stid=kind.stid and course.cid= kind.cid and avgscore.avgid=kind.avgid " +
                    "and ranking.rid=kind.rid and score.sid=kind.sid and (student.stid=? or student.stname like concat('%',?,'%')) " +
                    "and (course.cid=? or course.cname like concat('%',?,'%'))");
            ps.setString(1, stIdOrName);
            ps.setString(2, stIdOrName);
            ps.setString(3, cIdOrName);
            ps.setString(4, cIdOrName);
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
    public List<Topic> findTeacherTopic(String htid, long pageNum, String pageSize) {
        return null;
    }

    @Override
    public long getTopicTotal(String htid) {
        return 0;
    }

    @Override
    public List<Student> findStudent(long pageNum, String pageSize) {
        Connection conn =null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<Student> list = new ArrayList<>();
        try {
            conn = DBUtils.getInstance().getConnection();
            ps = conn.prepareStatement("select * from student limit ?,?");
            ps.setLong(1, pageNum);
            ps.setLong(2, Long.valueOf(pageSize));
            rs = ps.executeQuery();
            while (rs.next()) {
                Student student = new Student();
                student.setStid(rs.getString("stid"));
                student.setStname(rs.getString("stname"));
                student.setPassword(rs.getString("password"));
                student.setCla(rs.getString("cla"));
                student.setSex(rs.getString("sex"));
                student.setAge(rs.getString("age"));
                student.setGrade(rs.getString("grade"));
                list.add(student);
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
    public long getStudentTotal() {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        long count = 0;
        try {
            conn = DBUtils.getInstance().getConnection();
            ps = conn.prepareStatement("select count(*) as total from student");
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
