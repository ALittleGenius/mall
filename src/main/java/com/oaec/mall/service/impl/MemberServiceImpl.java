package com.oaec.mall.service.impl;

import com.oaec.mall.dao.MemberMapper;
import com.oaec.mall.po.Member;
import com.oaec.mall.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("memberService")
public class MemberServiceImpl implements MemberService{

    @SuppressWarnings("SpringJavaAutowiringInspection")
    @Autowired
    private MemberMapper memberMapper;

    @Override
    public Member login(String name) {
        return memberMapper.queryMemberByName(name);
    }

    @Override
    public int register(Member member) {
        Member name = memberMapper.queryMemberByName(member.getUsername());
        Member tel = memberMapper.queryMemberByTel(member.getTel());
        int i = 0;
        if(name==null&&tel==null){
             i = memberMapper.doInsert(member);
        }
        return i;
    }

    @Override
    public Member getMemberByTel(String tel) {
        return memberMapper.queryMemberByTel(tel);
    }
}
