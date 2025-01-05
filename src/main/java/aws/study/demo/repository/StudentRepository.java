package aws.study.demo.repository;

import aws.study.demo.domain.Student;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface StudentRepository {

    @Select("SELECT * FROM student;")
    Student searchStudent();
}
