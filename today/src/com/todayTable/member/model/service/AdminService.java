package com.todayTable.member.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.todayTable.member.model.dao.AdminDao;
import com.todayTable.member.model.vo.Member;
import com.todayTable.notice.model.dao.NoticeDao;

import static com.todayTable.common.JDBCTemplate.*;

public class AdminService {

	public Member loginAdmin(String adminPwd) {
		Connection conn = getConnection();
		
		Member m = new AdminDao().loginAdmin(conn, adminPwd);
		
		close(conn);
		
		return m;
	}
	
	public ArrayList<Member> selectMemberById(String searchContent){
		Connection conn = getConnection();
		
		ArrayList<Member> list = new AdminDao().selectMemberById(conn, searchContent);
		
		close(conn);
		
		return list;
	}
	
	public ArrayList<Member> selectMemberByNick(String searchContent){
		Connection conn = getConnection();
		
		ArrayList<Member> list = new AdminDao().selectMemberByNick(conn, searchContent);
		
		close(conn);
		
		return list;
	}
	
	
}
