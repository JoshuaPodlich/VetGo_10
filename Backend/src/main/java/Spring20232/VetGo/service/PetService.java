package Spring20232.VetGo.service;

import Spring20232.VetGo.filestore.FileStore;
import Spring20232.VetGo.model.*;
import Spring20232.VetGo.repository.OwnerRepository;
import Spring20232.VetGo.repository.PetRepository;
import Spring20232.VetGo.repository.UserRepository;
import com.amazonaws.services.alexaforbusiness.model.NotFoundException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.*;

@Service
public class PetService implements PetServiceInterface {
    private final PetRepository petRepository;

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private OwnerRepository ownerRepository;

    private final FileStore fileStore;

    @Autowired
    public PetService(PetRepository petRepository, FileStore fileStore) {
        this.petRepository = petRepository;
        this.fileStore = fileStore;
    }
    @Value("${aws.s3.bucket}")
    private String bucketName;
    @Override
    public void uploadRecord(Long pid, MultipartFile file) {

        // Checks if file is empty
        isFileEmpty(file);

        // Search for the if pet exist
        Pet pet1 = getPetProfileOrElseThrow(pid);

        // Stores and maps out metadata of file uploaded
        Map<String, String> metadata = extractMetadata(file);

        // Store files in s3
        String path = String.format("%s/%s", bucketName, pet1.getId());
        String filename = String.format("%s-%s", file.getName(), UUID.randomUUID());

        try {
            fileStore.save(path, filename, Optional.of(metadata), file.getInputStream());
            pet1.addFileLink(filename);
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }

    }

    @Transactional
    public void uploadPetImage(long pid, MultipartFile image) throws IOException {
        String uploadDir = "pet-images/";
        Pet pet = petRepository.findById(pid).orElse(null);
        if (pet == null) throw new NotFoundException("Unable to find pet in database.");

        // Check if pet already has an image; delete it if it does.
        String existingImageUrl = pet.getImageURL();
        if (existingImageUrl != null && !existingImageUrl.isEmpty()) {
            Path existingImagePath = Paths.get(existingImageUrl);
            try {
                Files.deleteIfExists(existingImagePath);
            } catch (IOException e) {
                throw new RuntimeException("Failed to delete existing image file.", e);
            }
        }

        String fileName = StringUtils.cleanPath(Objects.requireNonNull(image.getOriginalFilename()));
        Path uploadPath = Paths.get(uploadDir);

        if (!Files.exists(uploadPath)) {
            Files.createDirectories(uploadPath);
        }

        try (InputStream inputStream = image.getInputStream()) {
            Path filePath = uploadPath.resolve(fileName);
            Files.copy(inputStream, filePath, StandardCopyOption.REPLACE_EXISTING);

            pet.setImageURL(uploadDir + fileName);

        } catch (IOException e) {
            throw new RuntimeException("Failed to upload image file.", e);
        }
    }

    @Override
    public List<byte[]> getPetRecords(Long pid) {
        Pet pet = getPetProfileOrElseThrow(pid);
        String path = String.format("%s/%s/", bucketName, pet.getId());
        List<String> fileList = pet.getFileLink();

        if (fileList == null) {
            return null;
        }

        return fileStore.download(path, fileList);
    }

    private Map<String, String> extractMetadata(MultipartFile file) {
        Map<String, String> metadata = new HashMap<>();
        metadata.put("Content-Type", file.getContentType());
        metadata.put("Content-Length", String.valueOf(file.getSize()));
        return metadata;
    }

    private void isFileEmpty(MultipartFile file) {
        if (file.isEmpty()) {
            throw new IllegalStateException("Cannot upload empty file [ " + file.getSize() + "]");
        }
    }

    private Pet getPetProfileOrElseThrow(Long pid) {
        Pet pet1 = petRepository
                .findAll()
                .stream()
                .filter(pet -> pet.getOwner().getUser().getId().equals(pid))
                .findFirst()
                .orElseThrow(()-> new IllegalStateException(String.format("Pet profile %s not found", pid)));
        return pet1;
    }

    @Transactional
    public void addOwnerPet(Pet pet, Long uid) {
        User user = userRepository.findById(uid).orElse(null);
        if (user == null) throw new NotFoundException("Unable to find user in database.");

        Owner owner = ownerRepository.findByUser(user);
        if (owner == null) throw new NotFoundException("Unable to find owner in database.");

        pet.setOwner(owner);
        petRepository.save(pet);
        owner.addPetList(pet);
    }

    public List<Pet> getOwnersPets(Long uid) {
        User user = userRepository.findById(uid).orElse(null);
        if (user == null) throw new NotFoundException("Unable to find user in database.");
        Owner owner = ownerRepository.findByUser(user);
        if (owner == null) throw new NotFoundException("Unable to find owner in database.");

        return new ArrayList<>(petRepository.findAllByOwner(owner));
    }

    public void deleteOwnersPet(Long pid) {
        Pet pet = petRepository.findById(pid).orElse(null);
        if (pet == null) throw new NotFoundException("Unable to find pet in database.");

        petRepository.delete(pet);
    }

    @Transactional
    public void updateOwnersDog(Long pid, Dog updatedDog) {
        Dog existingPet = (Dog) petRepository.findById(pid).orElse(null);
        if (existingPet == null) throw new NotFoundException("Unable to find cat in database.");

        existingPet.updateFrom(updatedDog);
    }

    @Transactional
    public void updateOwnersCat(Long pid, Cat updatedCat) {
        Cat existingPet = (Cat) petRepository.findById(pid).orElse(null);
        if (existingPet == null) throw new NotFoundException("Unable to find cat in database.");

        existingPet.updateFrom(updatedCat);
    }

    @Transactional
    public void updateOwnersBird(Long pid, Bird updatedBird) {
        Bird existingPet = (Bird) petRepository.findById(pid).orElse(null);
        if (existingPet == null) throw new NotFoundException("Unable to find cat in database.");

        existingPet.updateFrom(updatedBird);
    }

    @Transactional
    public void updateOwnersReptile(Long pid, Reptile updatedReptile) {
        Reptile existingPet = (Reptile) petRepository.findById(pid).orElse(null);
        if (existingPet == null) throw new NotFoundException("Unable to find cat in database.");

        existingPet.updateFrom(updatedReptile);
    }

    @Transactional
    public void updateOwnersFish(Long pid, Fish updatedFish) {
        Fish existingPet = (Fish) petRepository.findById(pid).orElse(null);
        if (existingPet == null) throw new NotFoundException("Unable to find cat in database.");

        existingPet.updateFrom(updatedFish);
    }

    @Transactional
    public void updateOwnersRodent(Long pid, Rodent updatedRodent) {
        Rodent existingPet = (Rodent) petRepository.findById(pid).orElse(null);
        if (existingPet == null) throw new NotFoundException("Unable to find cat in database.");

        existingPet.updateFrom(updatedRodent);
    }

    @Transactional
    public void updateOwnersOtherPet(Long pid, OtherPet updatedOtherPet) {
        OtherPet existingPet = (OtherPet) petRepository.findById(pid).orElse(null);
        if (existingPet == null) throw new NotFoundException("Unable to find cat in database.");

        existingPet.updateFrom(updatedOtherPet);
    }
}
