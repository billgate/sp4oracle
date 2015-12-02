package org.zerock.persistence;

import org.zerock.domain.MemberVO;

public interface MemberMapper extends CRUDMapper<MemberVO, String> {

	public String getTime();
}
