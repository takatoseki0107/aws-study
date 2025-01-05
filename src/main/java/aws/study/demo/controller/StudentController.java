package aws.study.demo.controller;

import aws.study.demo.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class StudentController {

  private StudentService service;

  @Autowired
  public StudentController(StudentService service) {
    this.service = service;
  }

    @GetMapping("/")
    public String searchStudentList() {
        return service.searchStudent().toString();
    }
}
