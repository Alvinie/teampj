package com.care.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.care.dao.MemberDAO;
import com.care.dto.MemberDTO;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Inject MemberDAO dao;
	
	@Override
	public void register(MemberDTO dto) throws Exception {
		
		dao.register(dto);
		
	}

	@Override
	public MemberDTO login(MemberDTO dto) throws Exception {
		
		return dao.login(dto);
	}

	@Override
	public void memberUpdate(MemberDTO dto) throws Exception {
		
		dao.memberUpdate(dto);
		
	}

	@Override
	public void memberDelete(MemberDTO dto) throws Exception {
		
		dao.memberDelete(dto);
	}

	@Override
	public MemberDTO regiDupe(MemberDTO dto) throws Exception {
		return dao.regiDupe(dto);
	}


	
}