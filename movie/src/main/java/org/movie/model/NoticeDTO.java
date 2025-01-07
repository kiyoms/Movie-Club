package org.movie.model;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import lombok.Data;

@Data
public class NoticeDTO {
	private int bno; 		//글번호
    private String title;	//글제목
    private String writer;	//작성자
    private String content; //글내용
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date regdate;	//작성날짜
    private int viewcnt;	//조회수
    private int comcnt;		//댓글수
    private int recommend;  //추천수
}
