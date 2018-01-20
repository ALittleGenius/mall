package com.oaec.front.interceptions;

import com.oaec.common.po.Member;
import com.oaec.front.service.MemberCarService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;
import java.util.Map;

@Component
public class CommonInterceptor implements HandlerInterceptor {
    @Autowired
    private MemberCarService memberCarService;

    @Override
    public boolean preHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o) throws Exception {
        return true;
    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object o, ModelAndView modelAndView) throws Exception {
        Member member = (Member) request.getSession().getAttribute("member");
        if(member != null){
            if(modelAndView == null){
                modelAndView = new ModelAndView();
            }
            String requestURI = request.getRequestURI();
            System.out.println("requestURI = " + requestURI);
            List<Map<String, Object>> carByMId = memberCarService.getCarByMId(member.getId());
            System.out.println("carByMId = " + carByMId);
            System.out.println("o = " + o);
            modelAndView.addObject("car",carByMId);
            modelAndView.addObject("size",carByMId.size());
        }

    }

    @Override
    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {

    }
}
