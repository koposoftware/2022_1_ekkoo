package kr.ac.kopo.board.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.board.vo.BoardVO;

//db에 접속하는 애들은 respository라는 어노테이션을 붙인다. 
@Repository
public class BoardDAOImpl implements BoardDAO {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public List<BoardVO> selectAll() {
		List<BoardVO> list = new ArrayList<>();
		list = sqlSessionTemplate.selectList("board.dao.boardDAO.selectAll");
		return list;
	}

}
