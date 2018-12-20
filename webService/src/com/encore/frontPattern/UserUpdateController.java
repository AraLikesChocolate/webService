package com.encore.frontPattern;

import java.util.Map;


import com.encore.model.UserService;
import com.encore.model.UserVO;
import com.encore.util.DateUtil;

public class UserUpdateController implements CommonCtroller {
	UserService service = new UserService();
	@Override
	public void execute(Map<String, Object> map) {
		if (((String) map.get("method")).equals("get")) {
			UserVO user = service.selectUser((String) map.get("id"), (String) map.get("password"));
			map.put("user", user);
		} else {
			UserVO user = new UserVO((String) map.get("id"), (String) map.get("password"),
					(String) map.get("name"), (String)map.get("email"), (String)map.get("gender"),
					DateUtil.stringToDate((String) map.get("birthday")), (String)map.get("userinfo"));
			int count = service.updateUser(user);
			map.put("user", user);
			map.put("userResult", count > 0 ? "회원정보 수정에 성공하였습니다." : "회원정보 수정에 실패했습니다.");
		}

	}

}
