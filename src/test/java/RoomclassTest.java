import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.memory.ischool.domain.Roomclass;
import org.memory.ischool.service.IRoomclassService;

import java.util.Date;
import java.util.List;

/**
 * Created by zmh on 2017/8/21.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:application-mvc.xml")
public class RoomclassTest {


    @Autowired
    private IRoomclassService roomclassService;

    @Test
    public void testinsert() throws Exception{
        Roomclass roomclass = new Roomclass();
        roomclass.setClassroom("11");
        roomclass.setInputdate(new Date());
        roomclass.setRemark("未使用");
        roomclass.setTotalstudent(120L);
        for (int i = 0; i <30 ; i++) {
            roomclassService.insert(roomclass);
        }
    }


    @Test
    public void teststudentclass() throws  Exception{
            //roomclassService.insert()
    }



    @Test
    public void testdelete() throws  Exception{
        roomclassService.deleteByPrimaryKey(2L);
    }
    @Test
    public void testupdate() throws  Exception{

    }


    @Test
    public void testlist() throws  Exception{


    }
    @Test
    public void testget() throws  Exception{
        List<Roomclass> list = roomclassService.selectAll();
        for (Roomclass roomclass : list) {
            System.out.println(roomclass);
        }
    }



}
