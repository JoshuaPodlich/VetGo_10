package Spring20232.VetGo.repository;

import Spring20232.VetGo.model.Owner;
import Spring20232.VetGo.model.Pet;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.UUID;
@Repository
public interface PetRepository extends JpaRepository<Pet, Long> {
    @Async
    Pet findByName(String name);

    List<Pet> findAllByOwner(Owner owner);
}
