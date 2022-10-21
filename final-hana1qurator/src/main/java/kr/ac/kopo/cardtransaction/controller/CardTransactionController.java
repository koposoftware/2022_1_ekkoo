package kr.ac.kopo.cardtransaction.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import kr.ac.kopo.cardtransaction.service.CardTransactionService;
import kr.ac.kopo.cardtransaction.vo.CardTransactionVO;

@RestController
public class CardTransactionController {
	@Autowired
	private CardTransactionService transactionService;
	
	@GetMapping("/card/transaction.json/{cardNo}")
	public List<CardTransactionVO> allTransaction(@PathVariable("cardNo") String cardNo){
		System.out.println(cardNo);
		List<CardTransactionVO> list = transactionService.allTransaction(cardNo);
		return list;
	}
	
	@ResponseBody
	@GetMapping("/card/top3consume/{ownerId}")
	public List<CardTransactionVO> top3consume(@PathVariable("ownerId") String id){
		List <CardTransactionVO> list = transactionService.top3consume(id);
		return list;
	}
	
	}