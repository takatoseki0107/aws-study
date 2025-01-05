package aws.study.demo.service;

import aws.study.demo.domain.Student;
import aws.study.demo.repository.StudentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class StudentService {

  private final StudentRepository repository;

  @Autowired
  public StudentService(StudentRepository repository) {
    this.repository = repository;
  }

  public Student searchStudent() {
    return repository.searchStudent();
  }
}