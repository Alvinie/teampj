package com.care.dao;

import com.care.dto.MemberDTO;

public interface MemberDAO {

	
	
	
	// Register
	public void register(MemberDTO dto) throws Exception;
	
	
	// Login
	public MemberDTO login(MemberDTO dto) throws Exception;
		
	
	// Update Member Info
	public void memberUpdate(MemberDTO dto) throws Exception;
	
	
	// Delete Account
	public void memberDelete(MemberDTO dto) throws Exception;
	
	// Check for ID Duplicates
	public MemberDTO regiDupe(MemberDTO dto) throws Exception;
	
}
