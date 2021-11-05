package co.sp.mapper;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import co.sp.beans.Chat_s;

public interface ChatMapper {
	@Insert("insert into chat_s values(#{s_keyword}, #{s_keyword})")
	void addNotice(Chat_s chatBean);
	
	@Delete("delete from chat_s where s_keyword LIKE #{s_keyword}")
	void deleteNotice(Chat_s chatBean);
	
	@Select("select s_answer from chat_s where s_keyword LIKE #{s_keyword}")
	void getNotice(Chat_s chatBean);
	
	@Update("update chat_s set s_answer = #{s_answer} where s_keyword LIKE #{s_keyword}")
	void updateNotice(Chat_s chatBean);
}
