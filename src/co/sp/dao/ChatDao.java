package co.sp.dao;

import org.springframework.beans.factory.annotation.Autowired;

import co.sp.beans.Chat_s;
import co.sp.mapper.ChatMapper;

public class ChatDao {
	@Autowired
	private ChatMapper chatmapper;
	
	public void addNotice(Chat_s chatBean) {
		chatmapper.addChat(chatBean);
	}
	
	public void deleteNotice(Chat_s chatBean) {
		chatmapper.deleteChat(chatBean);
	}
	
	public void getNotice(Chat_s chatBean) {
		chatmapper.getChat(chatBean);
	}
	
	public void updateNotice(Chat_s chatBean) {
		chatmapper.updateChat(chatBean);
	}
}
