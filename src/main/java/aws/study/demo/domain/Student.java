package aws.study.demo.domain;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Student {
    
    private String id;
  
    private String name;

    @Override
    public String toString() {
        return "受講生ID：" + this.id + "\n" + "受講生名：" + this.name;
    }
}
