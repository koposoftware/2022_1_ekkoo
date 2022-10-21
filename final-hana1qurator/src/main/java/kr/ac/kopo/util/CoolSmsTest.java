package kr.ac.kopo.util;

public class CoolSmsTest {
public static void main(String[] args) {
	MessageService service = new MessageService();
	service.sendMessage("01020617815", "하이");
}
}
