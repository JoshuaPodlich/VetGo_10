package Spring20232.VetGo.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import java.nio.file.Path;
import java.nio.file.Paths;

@Configuration
public class WebConfig implements WebMvcConfigurer {
    // To make these images accessible via HTTP, WebMvcConfigurer serves files from that directory as static resources.
    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        Path uploadDir = Paths.get("pet-images");
        String uploadPath = uploadDir.toFile().getAbsolutePath();

        registry.addResourceHandler("/pet-images/**").addResourceLocations("file:" + uploadPath + "/");
    }
}
