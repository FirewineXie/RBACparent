package com.study.atcrowdfunding.service.impl;

import java.util.List;

import com.study.atcrowdfunding.bean.Permission;
import com.study.atcrowdfunding.bean.User;
import com.study.atcrowdfunding.dao.PermissionDao;
import com.study.atcrowdfunding.service.PermissionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



@Service
public class PermissionServiceImpl implements PermissionService {

	@Autowired
	private PermissionDao permissionDao;

	@Override
	public Permission queryRootPermission() {
		return permissionDao.queryRootPermission();
	}

	@Override
	public List<Permission> queryChildPermissions(Integer pid) {
		return permissionDao.queryChildPermissions(pid);
	}

	@Override
	public List<Permission> queryAll() {
		return permissionDao.queryAll();
	}

	@Override
	public void insertPermission(Permission permission) {
		permissionDao.insertPermission(permission);
	}

	@Override
	public Permission queryById(Integer id) {
		return permissionDao.queryById(id);
	}

	@Override
	public void updatePermission(Permission permission) {
		permissionDao.updatePermission(permission);
	}

	@Override
	public void deletePermission(Permission permission) {
		permissionDao.deletePermission(permission);
	}

	@Override
	public List<Integer> queryPermissionidsByRoleid(Integer roleid) {
		return permissionDao.queryPermissionidsByRoleid(roleid);
	}

	@Override
	public List<Permission> queryPermissionsByUser(User dbUser) {
		return permissionDao.queryPermissionsByUser(dbUser);
	}
}
