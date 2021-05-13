package dao.Student;

import bean.*;

import java.util.List;

public interface StudentDao {
    Student findUserByNameAndPass(String stid, String password);

    List<Usual> findStudentUsual(String idOrName,String stid , long pageNum, String pageSize);

    long getUsualTotal(String idOrName, String stid);

    List<OnlineTime> findStudentTime(String stid, long pageNum, String pageSize);

    long getTimeTotal(String stid);

    List<Homework> findStudentHomework(String s, String stid, long pageNum, String pageSize);

    long getHomeworkTotal(String idOrName, String stid);

    List<Topic> findStudentTopic(String htid, long pageNum, String pageSize);

    long getTopicTotal(String htid);

    List<Experiment> findStudentExperiment(String idOrName, String stid, long pageNum, String pageSize);

    long getExperimentTotal(String idOrName, String stid);

    List<Test> findStudentTest(String idOrName, String stid, long pageNum, String pageSize);

    long getTestTotal(String idOrName, String stid);
}
