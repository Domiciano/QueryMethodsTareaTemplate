package edu.co.icesi.introspringboot.controller;

import edu.co.icesi.introspringboot.entity.Course;
import edu.co.icesi.introspringboot.entity.Student;
import edu.co.icesi.introspringboot.entity.Submission;
import edu.co.icesi.introspringboot.repository.SubmissionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/submissions")
public class SubmissionController {

    @Autowired
    private SubmissionRepository submissionRepository;

    // 1. ¿Existe al menos una entrega para el estudiante con ese id?
    // GET /submissions/exists-by-student?studentId=1
    @GetMapping("/exists-by-student")
    public boolean existsByStudent(@RequestParam Integer studentId) {
        return submissionRepository.existsByStudent_Id(studentId);
    }

    // 2. ¿Tiene el estudiante al menos una entrega aprobada (grade >= 3.0)?
    // GET /submissions/has-approved?studentId=1&grade=3.0
    @GetMapping("/has-approved")
    public boolean hasApproved(@RequestParam Integer studentId,
                               @RequestParam Double grade) {
        return submissionRepository.existsByStudent_IdAndGradeGreaterThanEqual(studentId, grade);
    }

    // 3. Primera entrega registrada en el sistema (la más antigua)
    // GET /submissions/first
    @GetMapping("/first")
    public Optional<Submission> firstSubmission() {
        return submissionRepository.findFirstByOrderBySubmittedAtAsc();
    }

    // 4. Top 5 entregas con mejor calificación
    // GET /submissions/top5
    @GetMapping("/top5")
    public List<Submission> top5() {
        return submissionRepository.findTop5ByOrderByGradeDesc();
    }

    // 5. Top 5 mejores calificaciones en un topic específico
    // GET /submissions/top5-by-topic?topic=Parcial de Programacion
    @GetMapping("/top5-by-topic")
    public List<Submission> top5ByTopic(@RequestParam String topic) {
        return submissionRepository.findTop5ByTopicOrderByGradeDesc(topic);
    }

    // 6. Entregas en un rango de fechas de examen (exam_day)
    // GET /submissions/by-exam-range?start=2025-03-01&end=2025-03-15
    @GetMapping("/by-exam-range")
    public List<Submission> byExamRange(@RequestParam String start,
                                        @RequestParam String end) {
        return submissionRepository.findByExamDayBetween(
                LocalDate.parse(start),
                LocalDate.parse(end));
    }

    // 7. Entregas realizadas después de cierta fecha (submitted_at)
    // GET /submissions/after?dateTime=2025-03-10T18:00:00
    @GetMapping("/after")
    public List<Submission> after(@RequestParam String dateTime) {
        return submissionRepository.findBySubmittedAtAfter(LocalDateTime.parse(dateTime));
    }

    // 8. Entregas de un estudiante (por nombre) ordenadas por fecha de envío descendente
    // GET /submissions/by-student-name?name=Laura Garcia
    @GetMapping("/by-student-name")
    public List<Submission> byStudentName(@RequestParam String name) {
        return submissionRepository.findByStudent_NameOrderBySubmittedAtDesc(name);
    }

    // 9. Mejor entrega (mayor nota) de un estudiante específico
    // GET /submissions/best-by-student?studentId=1
    @GetMapping("/best-by-student")
    public Optional<Submission> bestByStudent(@RequestParam Integer studentId) {
        return submissionRepository.findTopByStudent_IdOrderByGradeDesc(studentId);
    }

    // 10. ¿Existe al menos una entrega de un programa con nota mayor a 4.5?
    // GET /submissions/exists-by-program?program=Medicina&grade=4.5
    @GetMapping("/exists-by-program")
    public boolean existsByProgram(@RequestParam String program,
                                   @RequestParam Double grade) {
        return submissionRepository.existsByStudent_ProgramAndGradeGreaterThan(program, grade);
    }

    // 11. Entregas ordenadas por fecha de envío descendente (paginado)
    // GET /submissions/paged?page=0&size=5
    @GetMapping("/paged")
    public Page<Submission> paged(@RequestParam(defaultValue = "0") int page,
                                  @RequestParam(defaultValue = "5") int size) {
        return submissionRepository.findAllByOrderBySubmittedAtDesc(PageRequest.of(page, size));
    }


}
