package org.movie.model;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;
@Data
public class CommentDTO {
	
	private int bno;
	private String comwriter;
	private String comcontent;
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date regdate;	//작성날짜
    private int comno;
    
}
