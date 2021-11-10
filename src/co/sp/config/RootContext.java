package co.sp.config;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.web.context.annotation.SessionScope;

import co.sp.beans.Member_s;

@Configuration

@PropertySource("/WEB-INF/properties/mailInfo.properties")
public class RootContext {

	@Value("${}")
	
	@Bean("loginBean")
	@SessionScope
	public Member_s loginBean() {
		return new Member_s();
	}
	
	

}
