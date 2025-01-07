package org.movie.model;

import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import lombok.Data;

@Data
public class ScreenDTO {

	private int snum;
	private String title;
	
	private String story,key;
	private int price;
	private String runtime;
	private String grade;
	private String actor;
	private String director;
	private String open;
	private String ganre;
	private String poster;
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private String reg;

    private String key1;
    private String key2;
    private String key3;
    private String key4;
    private double score;
    
}
