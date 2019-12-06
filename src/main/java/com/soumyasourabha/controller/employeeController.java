package com.soumyasourabha.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.soumyasourabha.dao.employeeMapper;
import com.soumyasourabha.model.employee;

@Controller
public class employeeController {
	
	@Autowired
	employeeMapper mapper;
	
	@RequestMapping("/employees")
	public ModelAndView getAllEmployees() {
		
		ModelAndView mv = new ModelAndView("employee-list");
		mv.addObject("employeeList",mapper.getAllEmployee());
		
		return mv;
	}
	
	@RequestMapping("/employeeForm")
	public ModelAndView showForm() {
		ModelAndView mv = new ModelAndView("add-employee");
		mv.addObject("employee",new employee());
		return mv;
	}
	@RequestMapping("/save")
	public String saveEmployee(@ModelAttribute("employee") employee emp) {
		if(emp.getId() == null) {
			mapper.saveEmployee(emp);
		}else {
			mapper.updateEmployee(emp);
		}		
		return "redirect:/employees"; //to redirect the /employees
	}
	
	@RequestMapping("/deleteEmployee")
	public String deleteEmployee(@RequestParam("empid") int empid) {
		mapper.deleteEmployee(empid);
		return "redirect:/employees";
	}
	
	@RequestMapping("/editEmployee")
	public ModelAndView editEmployee(@RequestParam("empid") int empid) {
		ModelAndView mv = new ModelAndView("add-employee");
		employee emp = mapper.findById(empid);
		mv.addObject("employee",emp);
		return mv;
	}
	
	
}
