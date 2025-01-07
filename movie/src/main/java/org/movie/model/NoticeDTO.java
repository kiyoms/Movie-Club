package org.movie.model;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import lombok.Data;

@Data
public class NoticeDTO {
	private int bno; 		//�۹�ȣ
    private String title;	//������
    private String writer;	//�ۼ���
    private String content; //�۳���
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date regdate;	//�ۼ���¥
    private int viewcnt;	//��ȸ��
    private int comcnt;		//��ۼ�
    private int recommend;  //��õ��
}
