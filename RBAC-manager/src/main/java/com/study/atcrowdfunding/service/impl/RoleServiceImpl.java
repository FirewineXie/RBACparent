package com.study.atcrowdfunding.service.impl;

import java.util.List;
import java.util.Map;

import com.study.atcrowdfunding.bean.Role;
import com.study.atcrowdfunding.dao.RoleDao;
import com.study.atcrowdfunding.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class RoleServiceImpl implements RoleService {

	@Autowired
	private RoleDao roleDao;


	@Override
	public List<Role> pageQueryData(Map<String, Object> map) {
		return roleDao.pageQueryData(map);
	}
	@Override
	public int pageQueryCount(Map<String, Object> map) {
		return roleDao.pageQueryCount(map);
	}
	@Override
	public List<Role> queryAll() {
		return roleDao.queryAll();
	}
	@Override
	public void insertRolePermission(Map<String, Object> paramMap) {
		roleDao.deleteRolePermissions(paramMap);
		roleDao.insertRolePermission(paramMap);
	}

}
