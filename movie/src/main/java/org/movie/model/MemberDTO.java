package org.movie.model;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;
import lombok.Data;

@Data
public class MemberDTO {
	
	
	private String id;
	private String pw;
	private String name;
	private String gender;
	private String phone1;
	private String phone2;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date birth;
	private String email1;
	private String email2;
	private String point;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date reg;
}

