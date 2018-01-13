package com.oaec.mall.service;

import com.oaec.mall.po.Member;

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
