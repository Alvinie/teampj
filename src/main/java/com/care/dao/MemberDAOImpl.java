package com.care.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.care.dto.MemberDTO;


@Repository
public class MemberDAOImpl implements MemberDAO {
	
	@Inject SqlSession sql;
	
	
	
	// Register
	@Override
	public void register(MemberDTO dto) throws Exception {
		sql.insert("memberMapper.register", dto);
	}


	// Login
	@Override
	public MemberDTO login(MemberDTO dto) throws Exception {
		
		return sql.selectOne("memberMapper.login", dto);
	}


	@Override
	public void memberUpdate(MemberDTO dto) throws Exception {
		
		sql.update("memberMapper.memberUpdate", dto);
		
	}


	@Override
	public void memberDelete(MemberDTO dto) throws Exception {

		sql.delete("memberMapper.memberDelete", dto);
	}


	@Override
	public MemberDTO regiDupe(MemberDTO dto) throws Exception {
		return sql.selectOne("memberMapper.regiDupe", dto);
	}


	
	
	
	
	
	
}