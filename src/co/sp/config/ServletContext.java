package co.sp.config;

import java.util.Properties;

import javax.annotation.Resource;

import org.apache.commons.dbcp2.BasicDataSource;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.mapper.MapperFactoryBean;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.context.support.PropertySourcesPlaceholderConfigurer;
import org.springframework.context.support.ReloadableResourceBundleMessageSource;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewResolverRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import co.sp.beans.Member_s;
import co.sp.mapper.MemMapper;
import co.sp.mapper.NoticeMapper;
import co.sp.mapper.ResMapper;

// MVC 프로젝트 설정

@Configuration
@EnableWebMvc
@ComponentScan("co.sp.controller")
@ComponentScan("co.sp.dao")
@ComponentScan("co.sp.service")

@PropertySource("/WEB-INF/properties/dbconnection.properties")
@PropertySource("/WEB-INF/properties/error_message.properties")
@PropertySource("/WEB-INF/properties/MailProperties.properties")
public class ServletContext implements WebMvcConfigurer {

	@Value("${dbconnection.classname}")
	private String db_classname;

	@Value("${dbconnection.url}")
	private String db_url;

	@Value("${dbconnection.username}")
	private String db_username;

	@Value("${dbconnection.password}")
	private String db_password;
	
	@Value("${mail.username}")
	private String username;
	
	@Value("${mail.password}")
	private String password;
	
	@Resource(name = "loginBean")
	private Member_s loginBean;
	
	@Override
	public void configureViewResolvers(ViewResolverRegistry re) {
		WebMvcConfigurer.super.configureViewResolvers(re);
		re.jsp("/WEB-INF/views/", ".jsp");
	}

	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		// TODO Auto-generated method stub
		WebMvcConfigurer.super.addResourceHandlers(registry);
		registry.addResourceHandler("/resource/**").addResourceLocations("/resource/");
		registry.addResourceHandler("/img/**").addResourceLocations("/resource/img/");
		registry.addResourceHandler("/js/**").addResourceLocations("/resource/js/");
		registry.addResourceHandler("/css/**").addResourceLocations("/resource/css/");
		registry.addResourceHandler("/modal/**").addResourceLocations("/resource/modal/");
	}

	// DB 접속 정보 관리
	@Bean
	public BasicDataSource dataSource() {
		BasicDataSource source = new BasicDataSource();
		source.setDriverClassName(db_classname);
		source.setUrl(db_url);
		source.setUsername(db_username);
		source.setPassword(db_password);

		return source;
	}

	// 쿼리문과 접속 관리 하는 객체
	@Bean
	public SqlSessionFactory fac(BasicDataSource source) throws Exception {
		SqlSessionFactoryBean f = new SqlSessionFactoryBean();
		f.setDataSource(source);

		SqlSessionFactory fac = f.getObject();
		return fac;
	}
	
	// 쿼리문 실행
	// mapper를 주입받아 쿼리문을 실행시킨다.
	@Bean
	public MapperFactoryBean<MemMapper> MemMapper(SqlSessionFactory fac) throws Exception {

		MapperFactoryBean<MemMapper> f = new MapperFactoryBean<MemMapper>(MemMapper.class);
		f.setSqlSessionFactory(fac);
		return f;
	}

	@Bean
	public MapperFactoryBean<ResMapper> ResMapper(SqlSessionFactory fac) throws Exception {

		MapperFactoryBean<ResMapper> f = new MapperFactoryBean<ResMapper>(ResMapper.class);
		f.setSqlSessionFactory(fac);
		return f;
	}

	@Bean
	public MapperFactoryBean<NoticeMapper> NoticeMapper(SqlSessionFactory fac) throws Exception {

		MapperFactoryBean<NoticeMapper> f = new MapperFactoryBean<NoticeMapper>(NoticeMapper.class);
		f.setSqlSessionFactory(fac);
		return f;
	}
	

	@Bean
	public static PropertySourcesPlaceholderConfigurer PropertySourcesPlaceholderConfigurer() {
		return new PropertySourcesPlaceholderConfigurer();
	}
	
	// Validation
	@Bean
	public ReloadableResourceBundleMessageSource messageSource() {
		ReloadableResourceBundleMessageSource res = new ReloadableResourceBundleMessageSource();
		res.setBasenames("/WEB-INF/properties/error_message");
		return res;
	}
	
	@Bean
	public JavaMailSenderImpl mailSender() {
		
		JavaMailSenderImpl mailsender = new JavaMailSenderImpl();
		
		mailsender.setHost("smtp.gmail.com");
		mailsender.setPort(25);
		mailsender.setUsername(username);
		mailsender.setPassword(password);
		Properties props = new Properties();
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.auth", "true");
		mailsender.setJavaMailProperties(props);
		
		return mailsender;
	}
	
	
	
	
	
	// Interceptors
	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		// TODO Auto-generated method stub
		WebMvcConfigurer.super.addInterceptors(registry);
		
//		TopMenuInterceptor topMenuInterceptor = new TopMenuInterceptor(topMenuService, loginBean);
//		
//		InterceptorRegistration reg1 = registry.addInterceptor(topMenuInterceptor);
//		reg1.addPathPatterns("/**");
//		
//		LoginInterceptor loginInterceptor = new LoginInterceptor(loginBean);
//		InterceptorRegistration reg2 = registry.addInterceptor(loginInterceptor);
//		reg2.addPathPatterns("/user/modify", "/user/logout", "/board/*");
//		reg2.excludePathPatterns("/board/main");
//		
//		WriterInterceptor writerInterceptor = new WriterInterceptor(loginBean, boardService);
//		InterceptorRegistration reg3 = registry.addInterceptor(writerInterceptor);
//		reg3.addPathPatterns("/board/modify", "/board/delete");
	}
}
