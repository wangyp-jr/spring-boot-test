package com.broada;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author mamr
 * @date 2022/3/31
 **/
@RestController
public class TestController {

	/**
	 * 这个接口必须写，给K8S用于健康检查使用的
	 */
	@GetMapping("/api/healthy")
	public String heartbeat() {
		return "UP1232323232323";
	}
}
