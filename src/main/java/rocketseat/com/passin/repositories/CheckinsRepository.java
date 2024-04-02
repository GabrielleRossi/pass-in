package rocketseat.com.passin.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import rocketseat.com.passin.domain.checkins.CheckIns;

public interface CheckinsRepository extends JpaRepository<CheckIns, Integer> {
}
