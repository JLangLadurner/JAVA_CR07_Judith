package com.CR07.login.repository;

import com.CR07.login.model.Student;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository("studentRepository")

public interface StudentRepository extends JpaRepository<Student,Long>{
    Student findByEmail(String email);
}
