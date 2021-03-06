package com.qushida.service;

//import java.util.Date;
import java.util.List;

import com.qushida.po.Notice;

public interface NoticeService {
	public List<Notice> getAllNotice();
	public int add(String name,String content);
	public int deleteNotice(int id);
	//根据日期降序排前三个公告limite(3)DESC方法?
	public Notice selectNoticeById(int id);
}
