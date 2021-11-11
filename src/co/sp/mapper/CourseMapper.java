package co.sp.mapper;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import co.sp.beans.Course_s;

public interface CourseMapper {
	@Insert("insert into course_s values(#{c_coursenum}, #{c_coursename}, #{c_price}, #{c_route1}, #{c_route2}, #{c_route3}, #{c_route4}, #{c_route5}, #{c_route6}, #{c_route7}, #{c_lcode})")
	void addCourse(Course_s courseBean);
	
	@Delete("delete from course_s where c_coursenum LIKE #{c_coursenum}")
	void deleteCourse(Course_s courseBean);
	
	@Select("select * from course_s where c_coursenum LIKE #{c_coursenum}")
	void getCourse(Course_s courseBean);
	
	@Update("update course_s set c_coursename  = #{c_coursename}, c_price = #{c_price}, c_route1 = #{c_route1}, c_route2 = #{c_route2}, c_route3 = #{c_route3}, c_route4 = #{c_route4}, c_route5 = #{c_route5}, c_route6 = #{c_route6}, c_route7 = #{c_route7} where c_coursenum LIKE #{c_coursenum}")
	void updateCourse(Course_s courseBean);
}
