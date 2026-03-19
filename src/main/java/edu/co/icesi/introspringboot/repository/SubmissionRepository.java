package edu.co.icesi.introspringboot.repository;

import edu.co.icesi.introspringboot.entity.Course;
import edu.co.icesi.introspringboot.entity.Student;
import edu.co.icesi.introspringboot.entity.Submission;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;
import java.util.Optional;

public interface SubmissionRepository extends JpaRepository<Submission, Long> {

    // 1. Verifica si existe al menos una entrega para un estudiante con un studentId dado
    boolean existsByStudent_Id(Integer studentId);

    // 2. Verifica si un estudiante específico tiene al menos una entrega aprobada (grade >= 3.0)
    boolean existsByStudent_IdAndGradeGreaterThanEqual(Integer studentId, Double grade);

    // 3. Obtiene la primera entrega registrada en el sistema (la más antigua)
    Optional<Submission> findFirstByOrderBySubmittedAtAsc();

    // 4. Obtiene las 5 entregas con mejor calificación
    List<Submission> findTop5ByOrderByGradeDesc();

    // 5. Obtiene el Top 5 de mejores calificaciones en un topic específico
    List<Submission> findTop5ByTopicOrderByGradeDesc(String topic);

    // 6. Obtiene todas las entregas realizadas en un rango de fechas de examen
    List<Submission> findByExamDayBetween(LocalDate start, LocalDate end);

    // 7. Obtiene todas las entregas realizadas después de cierta fecha (submittedAt)
    List<Submission> findBySubmittedAtAfter(LocalDateTime dateTime);

    // 8. Obtiene todas las entregas de un estudiante (por nombre) ordenadas por fecha de envío descendente
    List<Submission> findByStudent_NameOrderBySubmittedAtDesc(String studentName);

    // 9. Obtiene la mejor entrega (mayor nota) de un estudiante específico
    Optional<Submission> findTopByStudent_IdOrderByGradeDesc(Integer studentId);

    // 10. Verifica si existe al menos una entrega de estudiantes de un programa específico con nota mayor a 4.5
    boolean existsByStudent_ProgramAndGradeGreaterThan(String program, Double grade);

    // 11. Obtiene las entregas ordenadas por fecha de envío descendente de forma paginada
    Page<Submission> findAllByOrderBySubmittedAtDesc(Pageable pageable);


}
