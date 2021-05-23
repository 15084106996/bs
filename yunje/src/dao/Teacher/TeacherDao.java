package dao.Teacher;

import bean.*;

import java.util.List;

public interface TeacherDao {
    Teacher findUserByNameAndPass(String tid, String password);

    List<Usual> findTeacherUsual(String cIdOrName, String stIdOrName, long pageNum, String pageSize);

    long getUsualTotal(String cIdOrName, String stIdOrName);

    List<Experiment> findTeacherExperiment(String cIdOrName, String stIdOrName, long pageNum, String pageSize);

    long getExperimentTotal(String cIdOrName, String stIdOrName);

    List<SumScore> findTeacherSumScore(String cIdOrName, String stIdOrName, long pageNum, String pageSize);

    long getSumScoreTotal(String cIdOrName, String stIdOrName);

    List<Test> findTeacherTest(String cIdOrName, String stIdOrName, long pageNum, String pageSize);

    long getTestTotal(String cIdOrName, String stIdOrName);

    long getTimeTotal(String cIdOrName, String stIdOrName);

    List<OnlineTime> findTeacherTime(String cIdOrName, String stIdOrName, long pageNum, String pageSize);

    long getHomeworkTotal(String cIdOrName, String stIdOrName);

    List<Homework> findTeacherHomework(String cIdOrName, String stIdOrName, long pageNum, String pageSize);

    List<Kind> findTeacherKind(String cIdOrName, String stIdOrName, long pageNum, String pageSize);

    long getKindTotal(String cIdOrName, String stIdOrName);
}
