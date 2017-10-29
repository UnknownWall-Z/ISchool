import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.memory.ischool.domain.Studentclass;
import org.memory.ischool.service.IEmployeeService;
import org.memory.ischool.service.IRoomclassService;
import org.memory.ischool.service.IStudentclassService;

import java.util.List;

/**
 * Created by zmh on 2017/8/21.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:application-mvc.xml")
public class EmployeeTest {

    @Autowired
    private IEmployeeService service;
    @Autowired
    private IStudentclassService studentclassService;

    @Autowired
    private IRoomclassService roomclassService;

    @Test
    public void test1() throws Exception{



    }


    @Test
    public void teststudentclass() throws  Exception{

        Studentclass studentclass = new Studentclass();
        studentclass.setAffilliation("计算机系");
        studentclass.setClassname("Java14期");
        studentclass.setSeating(120L);
        studentclass.setTatolstudent(117L);
        studentclass.setClasslocation("B栋7楼705");
        for (int i = 0; i <30 ; i++) {
        studentclassService.insert(studentclass);
        }
    }



    @Test
    public void testdelete() throws  Exception{
        studentclassService.deleteByPrimaryKey(2L);
    }
    @Test
    public void testupdate() throws  Exception{
        Studentclass studentclass = new Studentclass();
        studentclass.setClassname("UI班");
        studentclass.setId(1L);
        studentclassService.updateByPrimaryKey(studentclass);
    }


    @Test
    public void testlist() throws  Exception{
        List<Studentclass> list = studentclassService.selectAll();
        for (Studentclass studentclass : list) {
            System.out.println(studentclass);
        }
    }



}
