package co.sp.beans;

//게시판 페이징용 빈
public class BoardPage {
	private int contentNum;
	private int pageNum;
	
	private int prevPage;
	private int nextPage;
	private int currentPage;
	
	private int min;
	private int max;

	public BoardPage(int contentCount, int currentPage, int contentPageCount, int pa) {

		this.currentPage = currentPage;

		pageNum = contentCount / contentPageCount;
		if (contentCount % contentPageCount > 0) {
			pageNum++;
		}

		min = ((currentPage - 1) / contentPageCount) * contentPageCount + 1;
		max = min + pa - 1;

		if (max > pageNum) {
			max = pageNum;
		}

		prevPage = min - 1;
		nextPage = max + 1;
		if (nextPage > pageNum) {
			nextPage = pageNum;
		}
	}

	public int getContentNum() {
		return contentNum;
	}

	public void setContentNum(int contentNum) {
		this.contentNum = contentNum;
	}

	public int getPageNum() {
		return pageNum;
	}

	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}

	public int getPrevPage() {
		return prevPage;
	}

	public void setPrevPage(int prevPage) {
		this.prevPage = prevPage;
	}

	public int getNextPage() {
		return nextPage;
	}

	public void setNextPage(int nextPage) {
		this.nextPage = nextPage;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getMin() {
		return min;
	}

	public void setMin(int min) {
		this.min = min;
	}

	public int getMax() {
		return max;
	}

	public void setMax(int max) {
		this.max = max;
	}
}
