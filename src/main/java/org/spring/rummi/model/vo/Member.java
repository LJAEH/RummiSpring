package org.spring.rummi.model.vo;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@NoArgsConstructor
public class Member {
	private int memNo;
	private String id;
	private String pw;
	private String nick;
	private String enroll;
	private String secession;
	private String img;
}
