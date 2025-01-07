package org.movie.model;

import lombok.Data;

@Data
public class Pagination {

    /** ������ ����Ʈ�� �ԽõǴ� ������ �� **/
    private int pageSize = 10;
    /** �� �������� �Խõ� ������ �� **/
    private int rangeSize = 5;
    /** ���� ������ **/
    private int curPage = 1;
    /** ���� ��(range) **/
    private int curRange = 1;
    /** �� �Խñ� �� **/
    private int listCnt;
    /** �� ������ �� **/
    private int pageCnt;
    /** �� ��(range) �� **/
    private int rangeCnt;
    /** ���� ������ **/
    private int startPage = 1;
    /** �� ������ **/
    private int endPage = 1;
    /** ���� index **/
    private int startIndex = 0;
    private int lastIndex;
    /** ���� ������ **/
    private int prevPage;
    /** ���� ������ **/
    private int nextPage;
    private int realEnd;
    
    
    
 public Pagination(int listCnt, int curPage){
        
        /**
         * ����¡ ó�� ����
         * 1. �� ��������
         * 2. �� ��(range)��
         * 3. range setting
         */
        
        // �� �Խù� ���� ���� �������� Controller�� ���� �޾ƿ´�.
        /** ���������� **/
        setCurPage(curPage);
        /** �� �Խù� �� **/
        setListCnt(listCnt);
        
        /** 1. �� ������ �� **/
        setPageCnt(listCnt);
        /** 2. �� ��(range)�� **/
        setRangeCnt(pageCnt);
        /** 3. ��(range) setting **/
        rangeSetting(curPage);
        
        /** DB ���Ǹ� ���� startIndex ���� **/
        setStartIndex(curPage);
    }
 	
 	public void setCurPage(int curPage) {
 		this.curPage = curPage;
 	}
 	public void setListCnt(int listCnt) {
 		this.listCnt = listCnt;
 	}
    public void setPageCnt(int listCnt) {
        this.pageCnt = (int) Math.ceil(listCnt*1.0/pageSize);
    }
    public void setRangeCnt(int pageCnt) {
        this.rangeCnt = (int) Math.ceil(pageCnt*1.0/rangeSize);
    }
    public void rangeSetting(int curPage){
        
        setCurRange(curPage);        
        this.startPage = (curRange - 1) * rangeSize + 1;
        this.endPage = startPage + rangeSize - 1;
        
        if(endPage > pageCnt){
            this.endPage = pageCnt;
        }
        
        this.prevPage = curPage - 1;
        this.nextPage = curPage + 1;
    }
    
    
    public void setCurRange(int curPage) {
        this.curRange = (int)((curPage-1)/rangeSize) + 1;
    }
    public void setStartIndex(int curPage) {
        this.startIndex = (curPage-1) * pageSize;
        this.lastIndex = startIndex + pageSize;
    }
    public int getStartIndex() {
    	return startIndex;
    }
}

