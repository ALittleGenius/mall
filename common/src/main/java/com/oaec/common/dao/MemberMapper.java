package com.oaec.common.dao;


import com.oaec.common.po.Member;

public interface MemberMapper {
    /**
     * 根据姓名查询
     * @param username
     * @return
     */
    public Member queryMemberByName(String username);

    /**
     * 添加会员
     * @param member
     * @return
     */
    public int doInsert(Member member);

    /**
     * 根据电话查询
     * @param tel
     * @return
     */
    public Member queryMemberByTel(String tel);
}
