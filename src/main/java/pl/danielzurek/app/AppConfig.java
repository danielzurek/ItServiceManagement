package pl.danielzurek.app;

import org.springframework.context.annotation.*;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.format.FormatterRegistry;
import org.springframework.orm.jpa.JpaTransactionManager;
import org.springframework.orm.jpa.LocalEntityManagerFactoryBean;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.validation.Validator;
import org.springframework.validation.beanvalidation.LocalValidatorFactoryBean;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import pl.danielzurek.converter.*;
import pl.danielzurek.entity.Incident;
import pl.danielzurek.service.CustomerService;
import pl.danielzurek.service.CustomerServiceImpl;

import javax.persistence.EntityManagerFactory;

@Configuration
@EnableWebMvc
@ComponentScan(basePackages = {"pl.danielzurek"})
@EnableTransactionManagement
@EnableJpaRepositories(basePackages = "pl.danielzurek.repository")
@ImportResource("classpath:META-INF/appconfig-security.xml")

public class AppConfig extends WebMvcConfigurerAdapter {
    @Bean
    public ViewResolver viewResolver() {
        InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();
        viewResolver.setPrefix("/WEB-INF/views/");
        viewResolver.setSuffix(".jsp");
        return viewResolver;
    }


    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/resources/**")
                .addResourceLocations("/resources/");
    }

    @Override
    public void addFormatters(FormatterRegistry registry) {
        registry.addConverter(UserConverter());
        registry.addConverter(RoleConverter());
        registry.addConverter(GroupConverter());
        registry.addConverter(CompanyConverter());
        registry.addConverter(IncidentConverter());
        registry.addConverter(CustomerConverter());

    }

    @Bean
    public LocalEntityManagerFactoryBean entityManagerFactory() {
        LocalEntityManagerFactoryBean emfb = new LocalEntityManagerFactoryBean();
        emfb.setPersistenceUnitName("ItServiceManagement");
        return emfb;
    }

    @Bean
    public JpaTransactionManager transactionManager(EntityManagerFactory emf) {
        JpaTransactionManager tm = new JpaTransactionManager(emf);
        return tm;
    }

    @Bean
    public UserConverter UserConverter() {
        return new UserConverter();
    }

    @Bean
    public RoleConverter RoleConverter() {
        return new RoleConverter();
    }

    @Bean
    public GroupConverter GroupConverter() {
        return new GroupConverter();
    }

    @Bean
    public CompanyConverter CompanyConverter() {
        return new CompanyConverter();
    }
    @Bean
    public CustomerConverter CustomerConverter() {
        return new CustomerConverter();
    }

    @Bean
    public IncidentConverter IncidentConverter() {
        return new IncidentConverter();
    }

    @Bean
    public CustomerService customerService() {
        return new CustomerServiceImpl();
    }

    @Bean
    public Validator validator() {
        return new LocalValidatorFactoryBean();
    }
}
