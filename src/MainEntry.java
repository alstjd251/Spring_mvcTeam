import java.util.Properties;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class MainEntry {
	static final String FROM = "bably1@naver.com";
    static final String FROMNAME = "윤정우";
    static final String TO = "jbbllee@naver.com";
    static final String SMTP_USERNAME = "bably1@naver.com";
    static final String SMTP_PASSWORD = "MUFS47WJU8SE";
    static final String HOST = "smtp.naver.com";
    static final int PORT = 587;
    static final String SUBJECT = "토트넘 흥해라!!!!";
    static final String BODY = String.join(
    		System.getProperty("line.separator"),
    		"<h1>뻥이고 망해라!!!!</h1>",
    		"<p>토트넘 망해라!!!!!</p>"
    		);

	public static void main(String[] args) throws Exception {
		Properties props = System.getProperties();
		props.put("mail.transport.protocol", "smtp");
		props.put("mail.smtp.port", PORT);
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.auth", "true");
		
		Session session = Session.getDefaultInstance(props);
		
		MimeMessage msg = new MimeMessage(session);
		msg.setFrom(new InternetAddress(FROM, FROMNAME));
		msg.setRecipient(Message.RecipientType.TO, new InternetAddress(TO));
		msg.setSubject(SUBJECT);
		msg.setContent(BODY, "text/html;charset=UTF-8");
		
		Transport transport = session.getTransport();
		
		try {
			System.out.println("Sending...");
			transport.connect(HOST, SMTP_USERNAME, SMTP_PASSWORD);
			transport.sendMessage(msg, msg.getAllRecipients());
			
			System.out.println("Email sent!");
		} catch(Exception ex) {
			ex.printStackTrace();
		} finally {
			transport.close();
		}
	}

}
