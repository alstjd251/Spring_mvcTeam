package co.sp.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.web.context.annotation.SessionScope;

import co.sp.beans.Member_s;

@Configuration

public class RootContext {

	@Bean("loginBean")
	@SessionScope
	public Member_s loginBean() {
		return new Member_s();
	}

}
