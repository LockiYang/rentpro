package com.rentpro.account.web;

import javax.validation.Valid;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.rentpro.account.entity.User;
import com.rentpro.account.service.AccountService;

/**
 * 用户注册的Controller.
 * 
 * @author calvin
 */
@Controller
@RequestMapping(value = "/register")
public class RegisterController {

	@Autowired
	private AccountService accountService;

	@RequestMapping(method = RequestMethod.GET)
	public String registerForm() {
		return "account/register";
	}

	@RequestMapping(method = RequestMethod.POST)
	public String register(@Valid User user, RedirectAttributes redirectAttributes, Errors errors) {
		if (errors.hasErrors()) {
			
		}
		accountService.register(user);
		UsernamePasswordToken token = new UsernamePasswordToken();
		token.setUsername(user.getLoginMail());
		token.setPassword(user.getPlainPassword().toCharArray());
		token.setRememberMe(true);
		SecurityUtils.getSubject().login(token);
		return "redirect:/";
//		redirectAttributes.addFlashAttribute("username", user.getLoginMail()); //对象重定向传参
//		return "redirect:/login"; //防止刷新重复提交
	}

	/**
	 * Ajax请求校验loginName是否唯一。
	 */
	@RequestMapping(value = "checkLoginMail")
	@ResponseBody
	public String checkLoginName(@RequestParam("loginMail") String loginMail) {
		if (accountService.get(loginMail) == null) {
			return "true";
		} else {
			return "false";
		}
	}
}
