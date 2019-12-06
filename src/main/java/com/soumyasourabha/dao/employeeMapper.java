package com.soumyasourabha.dao;

import java.util.List;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.soumyasourabha.Util.employeeUtil;
import com.soumyasourabha.model.employee;

@Repository
public class employeeMapper {
	
	
		public List<employee> getAllEmployee(){
			SqlSession session = employeeUtil.getsessionFactory().openSession();
			
			List<employee> employees = session.selectList("getAllEmployees");
			session.commit();
			session.close();
			
			return employees;	
		}
		
		public void saveEmployee(employee employee) {
			SqlSession session = employeeUtil.getsessionFactory().openSession();
			session.insert("insertEmployee",employee);
			session.commit();
			session.close();
		}
		
		public void deleteEmployee(int empid) {
			SqlSession session = employeeUtil.getsessionFactory().openSession();
			session.delete("deleteEmployee",empid);
			session.commit();
			session.close();
		}
		
		public employee findById(int empid) {
			SqlSession session = employeeUtil.getsessionFactory().openSession();
			employee emp = session.selectOne("getEmployee", empid);
			session.commit();
			session.close();
			return emp;
		}
		
		public void updateEmployee(employee emp) {
			SqlSession session = employeeUtil.getsessionFactory().openSession();
			session.update("updateEmployee",emp);
			session.commit();
			session.close();
		}

}
