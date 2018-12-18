package com.encore.frontPattern;

import java.util.Map;

import com.encore.model.UserService;


public class IdCheckController implements CommonCtroller {
	UserService service = new UserService();

	@Override
	public void execute(Map<String, Object> map) {
		if (((String) map.get("method")).equals("get")) {
			boolean idCheck = service.checkUserId((String)map.get("id"));
//			System.out.println(idCheck);
			if(idCheck) {
				map.put("message", idCheck);
			} else {
				map.put("message", idCheck);
			}
		}
	}

}
