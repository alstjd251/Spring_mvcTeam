package co.sp.dao;

import org.springframework.beans.factory.annotation.Autowired;

import co.sp.beans.Course_s;
import co.sp.mapper.CourseMapper;

public class CurseDao {
	@Autowired
	private CourseMapper coursemapper;
	
	public void addNotice(Course_s courseBean) {
		coursemapper.addCourse(courseBean);
	}
	
	public void deleteNotice(Course_s courseBean) {
		coursemapper.deleteCourse(courseBean);
	}
	
	public void getNotice(Course_s courseBean) {
		coursemapper.getCourse(courseBean);
	}
	
	public void updateNotice(Course_s courseBean) {
		coursemapper.updateCourse(courseBean);
	}
}
