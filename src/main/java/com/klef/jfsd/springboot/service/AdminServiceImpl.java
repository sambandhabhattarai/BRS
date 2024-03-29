package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Employee;
import com.klef.jfsd.springboot.repository.AdminRepository;
import com.klef.jfsd.springboot.repository.EmployeeRepository;

@Service
public class AdminServiceImpl implements AdminService
{
	@Autowired
	private AdminRepository adminRepository;
	
	@Autowired
	private EmployeeRepository employeeRepository;
	
	@Override
	public Admin checkadminlogin(String uname, String pwd) 
	{
		return adminRepository.checkadnminlogin(uname, pwd);
	}

	@Override
	public List<Employee> viewallusers() 
	{
		return (List<Employee>) employeeRepository.findAll();
	}

	@Override
	public void deleteemployee(int id)
	{
		employeeRepository.deleteById(id);
		
	}

	@Override
	public Employee viewuserbyid(int id)
	{
		return employeeRepository.findById(id).get();
	}
}
