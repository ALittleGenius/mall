package com.oaec.front.service;


import com.oaec.common.po.Member;

public interface MemberService {
    /**
     * 登录
     * @param name
     * @return
     */
    public Member login(String name);

    /**
     * 注册
     * @param member
     * @return
     */
    public int register(Member member);

    public Member getMemberByTel(String tel);
}
