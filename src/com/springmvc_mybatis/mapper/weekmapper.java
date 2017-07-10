package com.springmvc_mybatis.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.springmvc_mybatis.bean.week;

//userMapper鍙兘浼犲叆涓�涓弬鏁�,澶氫釜鐨勮瘽闇�瑕佹敞瑙�
public interface weekmapper {

	List<week> getAllWeek();
	void setWeek(@Param(value = "meetingfield") String meetingfield, @Param(value = "fact") String fact,@Param(value = "updatetime") String updatetime);
	
	void clearWeek(@Param(value = "meetingfield") String meetingfield,@Param(value = "updatetime") String updatetime);
}
