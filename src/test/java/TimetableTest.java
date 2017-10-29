import lombok.Setter;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.memory.ischool.domain.Employee;
import org.memory.ischool.service.ITimetableService;

/**
 * Created by zmh on 2017/8/21.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:application-mvc.xml")
public class TimetableTest {


    @Autowired
    private ITimetableService timetableService;

    @Setter
    private Employee  employee = new Employee();

    @Test
    public void testinsert() throws Exception{


        System.out.println(employee.getId());

        //timetableService//.insert();

    }


    @Test
    public void teststudentclass() throws  Exception{
            //roomclassService.insert()
    }



    @Test
    public void testdelete() throws  Exception{
    }
    @Test
    public void testupdate() throws  Exception{

    }


    @Test
    public void testlist() throws  Exception{


    }
    @Test
    public void testget() throws  Exception{

    }



}
