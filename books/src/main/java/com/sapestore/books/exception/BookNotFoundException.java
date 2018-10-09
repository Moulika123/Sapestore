package com.sapestore.books.exception;


public class BookNotFoundException extends Exception {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	public BookNotFoundException() {
		super();
	}
 public BookNotFoundException(String msg) {
	 super(msg);
 }
}
