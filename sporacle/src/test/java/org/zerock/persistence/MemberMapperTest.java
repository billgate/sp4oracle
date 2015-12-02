package org.zerock.persistence;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

public class MemberMapperTest extends DataSourceTest {

	@Autowired
	private MemberMapper mapper;
	
	@Test
	public void testTime()throws Exception{
		logger.info(mapper.getTime());
	}
	
}
