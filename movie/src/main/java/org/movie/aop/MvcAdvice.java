package org.movie.aop;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestAttributes;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

@Aspect
@Component
public class MvcAdvice {
	
	@Around("execution(public * org.movie.controller.*.aop*(..))")
	public Object around(ProceedingJoinPoint jp) throws Throwable{
		ServletRequestAttributes sra = (ServletRequestAttributes)RequestContextHolder.currentRequestAttributes();
		HttpSession session = sra.getRequest().getSession();   
		if(session.getAttribute("memId") == null) {
			return "menu/notice";
		}
		return jp.proceed();
	}
}












