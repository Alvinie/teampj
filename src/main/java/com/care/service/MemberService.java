package com.care.service;

import com.care.dto.MemberDTO;

public interface MemberService {

	
	public void register(MemberDTO dto) throws Exception;
	
	public MemberDTO login(MemberDTO dto) throws Exception;
	
	public void memberUpdate(MemberDTO dto) throws Exception;
	
	public void memberDelete(MemberDTO dto) throws Exception;
	
	public MemberDTO regiDupe(MemberDTO dto) throws Exception;
	
}
