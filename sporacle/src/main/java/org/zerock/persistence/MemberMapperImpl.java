package org.zerock.persistence;

import org.springframework.stereotype.Repository;
import org.zerock.domain.MemberVO;

@Repository
public class MemberMapperImpl extends AbstractCRUDMapper<MemberVO, String> implements MemberMapper {

	@Override
	public String getTime() {
	
		return session.selectOne(namespace+".getTime");
		
	}

}
