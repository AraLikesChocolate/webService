package com.encore.frontPattern;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.encore.model.AddressVO;
import com.encore.model.UserService;

public class setMyAddController implements CommonCtroller {
	UserService service = new UserService();
	@Override
	public void execute(Map<String, Object> map) {
		// TODO Auto-generated method stub
		if(map.get("method").equals("get")) {
			List<AddressVO> addlist = service.selectAllAdd((String) map.get("id"));
			map.put("addlist", addlist);
		}
	}

}
