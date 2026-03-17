package edu.co.icesi.introspringboot.entity;

import jakarta.persistence.*;
import java.time.LocalDate;
import java.time.LocalDateTime;

@Entity
@Table(name = "submission")
public class Submission {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false)
    private String topic;

    // Se mapea a DATE en SQL — solo almacena año, mes y día
    @Column(name = "exam_day", nullable = false)
    private LocalDate examDay;

    // Se mapea a TIMESTAMP en SQL — almacena fecha y hora exacta
    @Column(name = "submitted_at", nullable = false)
    private LocalDateTime submittedAt;

    @Column(nullable = false)
    private Double grade;

    @ManyToOne
    @JoinColumn(name = "student_id", nullable = false)
    private Student student;

    public Submission() {}

    public Long getId() { return id; }
    public void setId(Long id) { this.id = id; }
    public String getTopic() { return topic; }
    public void setTopic(String topic) { this.topic = topic; }
    public LocalDate getExamDay() { return examDay; }
    public void setExamDay(LocalDate examDay) { this.examDay = examDay; }
    public LocalDateTime getSubmittedAt() { return submittedAt; }
    public void setSubmittedAt(LocalDateTime submittedAt) { this.submittedAt = submittedAt; }
    public Double getGrade() { return grade; }
    public void setGrade(Double grade) { this.grade = grade; }
    public Student getStudent() { return student; }
    public void setStudent(Student student) { this.student = student; }
}
