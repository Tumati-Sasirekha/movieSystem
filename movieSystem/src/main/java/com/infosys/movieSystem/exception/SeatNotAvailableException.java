package com.infosys.movieSystem.exception;

public class SeatNotAvailableException extends RuntimeException{
	static final long serialVersionUID=1L;
	private String type;
	public SeatNotAvailableException(String type) {
		super();
		this.type = type;
	}
	public SeatNotAvailableException() {
		super();
		
	}
	public String getMessage() {
		return "No seats are available for "+type;
	}


}
 