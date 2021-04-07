package com.tmax.app.member;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAO {

	@Autowired
	SqlSessionTemplate temp;
	// 저장고 temp 필드는 session.xml 문서 id로 접근
	
	public int memberCheck(MemberDTO dto) {
		int count = temp.selectOne("session.idcheck", dto);
		return count;
	}
}
