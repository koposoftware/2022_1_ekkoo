package kr.ac.kopo.util;

import java.io.IOException;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class SendEmail {
	
	@GetMapping(value = "/product/sendEmail")
	public void sendEmail() {
		//authentication info
	      final String username = "yikeong99@gmail.com";
	      final String password = "hnigecgejyenkzaw";
	      String fromEmail = "yikeong99@gmail.com";
	      String toEmail = "yikeong99@gmail.com";
	      
	      Properties properties = new Properties();
	      properties.put("mail.smtp.starttls.enable", "true");
	      properties.put("mail.smtp.auth", "true");
	      properties.put("mail.transport.protocol", "smtp");
	      properties.put("mail.debug", "true");
	      properties.put("mail.smtp.starttls.enable", "true");
	      properties.put("mail.smtp.ssl.trust", "smtp.gmail.com");
	      properties.put("mail.smtp.port", "587");
	      properties.put("mail.smtp.host", "smtp.gmail.com");
	      properties.put("mail.smtp.ssl.protocols", "TLSv1.2");
	      
	      Session session = Session.getInstance(properties, new javax.mail.Authenticator() {
	         protected PasswordAuthentication getPasswordAuthentication() {
	            return new PasswordAuthentication(username,password);
	         }
	      });
	      //Start our mail message
	      MimeMessage msg = new MimeMessage(session);
	      try {
	         msg.setFrom(new InternetAddress(fromEmail));
	         msg.addRecipient(Message.RecipientType.TO, new InternetAddress(toEmail));
	         msg.setSubject("하나원큐레이터 상품 가입 약관서");
	         
	         Multipart emailContent = new MimeMultipart();
	         
	         //Text body part
	         MimeBodyPart textBodyPart = new MimeBodyPart();
	         textBodyPart.setText("안녕하세요 고객님");
	         
	         //Attachment body part.
	         MimeBodyPart pdfAttachment = new MimeBodyPart();
	         pdfAttachment.attachFile("C:/Users/test/Desktop/hana_final_project/hanaSavings.pdf");
	         
	         //Attach body parts
	         emailContent.addBodyPart(textBodyPart);
	         emailContent.addBodyPart(pdfAttachment);
	         
	         //Attach multipart to message
	         msg.setContent(emailContent);
	         
	         Transport.send(msg);
	         
	         System.out.println("Sent message");
	      } catch (MessagingException e) {
	         e.printStackTrace();
	      } catch (IOException e) {
	         // TODO Auto-generated catch block
	         e.printStackTrace();
	      }

	   }

	}

