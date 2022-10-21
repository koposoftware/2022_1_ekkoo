package kr.ac.kopo.test;

import static org.junit.Assert.assertNotNull;

import java.io.File;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.mail.internet.MimeMessage;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.FileSystemResource;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.github.javafaker.Faker;

import kr.ac.kopo.account.vo.AccountVO;
import kr.ac.kopo.board.vo.BoardVO;
import kr.ac.kopo.cardtransaction.vo.CardTransactionVO;
import kr.ac.kopo.consume.vo.ConsumeVO;
import kr.ac.kopo.member.vo.MemberVO;
import kr.ac.kopo.product.vo.PensionVO;
import kr.ac.kopo.product.vo.TermDepositVO;
import kr.ac.kopo.stock.vo.StockVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:config/spring/spring-mvc.xml" })
public class MyBatisTest {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	// @Test //??
	public void myBatisT() {
		assertNotNull(sqlSessionTemplate);
	}

	// @Test
	public void boardSelectAllTest() {
		List<BoardVO> boardlist = sqlSessionTemplate.selectList("board.dao.boardDAO.selectAll");
		for (BoardVO board : boardlist) {
			System.out.println(board);
		}
	}

	// @Test
	public void boardSelectByNo() {
		BoardVO board = sqlSessionTemplate.selectOne("board.dao.boardDAO.selectByNo", 3);
		System.out.println(board);
	}

	// @Test
	public void inserBoard() {
		BoardVO board = new BoardVO();
		board.setTitle("junit test");
		board.setWriter("tester");
		board.setContent("junit으로 board insert 테스트중입니다");
		sqlSessionTemplate.insert("board.dao.boardDAO.insert", board);
	}

	// @Test
	public void login() {
		MemberVO member = new MemberVO();
		member.setId("lovehana");
		member.setPassword("lovehana");
		MemberVO authMember = sqlSessionTemplate.selectOne("member.dao.memberDAO.selectUser", member);
		System.out.println(authMember);

	}

	// @Test
	public void sysconsume() {
		ConsumeVO consume = new ConsumeVO();
		String cardNo = "761696087260718";
		consume = sqlSessionTemplate.selectOne("card.dao.cardDAO.sysmonthConsume", cardNo);
		System.out.println(consume);

	}

	// @Test
	public void selectStock() {

		String id = "lovehana";
		List<StockVO> stock = sqlSessionTemplate.selectList("account.dao.accountDAO.selectStock", id);
		for (StockVO accountList : stock) {
			System.out.println(accountList);
		}
	}

	// @Test
	public void selectAllAccount() {

		String id = "lovehana";
		List<AccountVO> account = sqlSessionTemplate.selectList("account.dao.accountDAO.selectAll", id);
		for (AccountVO accountList : account) {
			System.out.println(accountList);
		}
	}

	// @Test
	public void pensionRecommend() {
		PensionVO pension = sqlSessionTemplate.selectOne("product.dao.productDAO.pension01Recommend");
		System.out.println(pension);
	}

	// @Test
	public void mailSendTest2() throws Exception {

		String subject = "test 메일";
		String content = "메일 테스트 내용" + "<img src=\"https://t1.daumcdn.net/cfile/tistory/214DCD42594CC40625\">";
		String from = "yikeong99@gmail.com";
		String to = "yikeong99@gmail.com";

		try {
			final MimeMessagePreparator preparator = new MimeMessagePreparator() {

				public void prepare(MimeMessage mimeMessage) throws Exception {
					final MimeMessageHelper mailHelper = new MimeMessageHelper(mimeMessage, true, "UTF-8");

					mailHelper.setFrom(from);
					mailHelper.setTo(to);
					mailHelper.setSubject(subject);
					mailHelper.setText(content, true);

					FileSystemResource file = new FileSystemResource(new File("D:\\test.txt"));
					mailHelper.addAttachment("test.txt", file);

				}

			};
			JavaMailSenderImpl mailSender = new JavaMailSenderImpl();
			mailSender.send(preparator);

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	// @Test
	public void cardTop3consumeTest() {
		String id = "lovehana";

		List<CardTransactionVO> list = sqlSessionTemplate.selectList("transaction.dao.transactionDAO.top3consume", id);
		for (CardTransactionVO accountList : list) {
			System.out.println(accountList);
		}
	}

	//@Test
	public void faker() {
		Faker faker = new Faker(Locale.KOREAN);
		for (int i = 0; i < 10; i++) {

			String name = faker.name().fullName();
			String firstName = faker.name().firstName();
			String lastName = faker.name().lastName();
			
			String email = faker.internet().emailAddress();
			String domain = faker.internet().domainName();
			String ipaddr = faker.internet().ipV4Address();

			String cname = faker.company().name();
			String catchPhrase = faker.company().catchPhrase();
			String streetAddress = faker.address().streetAddress();
			String address = faker.address().fullAddress();
			//System.out.println("insert into t_member values (" +lastName+firstName+ ")");
			System.out.println("insert into t_member values (" +address+ ")");
		}
	}
	//@Test
	public void consultData() {
		Map<String, Object> consult = new HashMap<String, Object>();
		consult.put("searchConsultDate", "2022-10-05 05:32:54");
		consult.put("id", "lovehana");
		Map<String, Object> consultR = new HashMap<String, Object>();
		consultR = sqlSessionTemplate.selectOne("consult.dao.consultDAO.selectConsult",consult);
		System.out.println(consultR);
		
	}
	//@Test
	public void recommendPension() {
		List<PensionVO> a =  sqlSessionTemplate.selectList("product.dao.productDAO.pension01Recommend3");
		for(PensionVO pension : a) {
			System.out.println(pension);
		}
		
	}
	//@Test
	public void recommendTermDeposit() {
		List<TermDepositVO> a =  sqlSessionTemplate.selectList("product.dao.productDAO.termDepositRecommend3",6);
		for(TermDepositVO pension : a) {
			System.out.println(pension);
		}
		
	}
	
}
