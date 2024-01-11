package com.klef.jfsd.springboot.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jmx.export.annotation.ManagedAttribute;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Employee;
import com.klef.jfsd.springboot.service.AdminService;
import com.klef.jfsd.springboot.service.EmployeeService;

@Controller
public class ClientController
{
	@Autowired
	private AdminService adminService;
	
	@Autowired
	private EmployeeService employeeService;
	
	@GetMapping("/")
	public String home()
	{
		return "index";
	}
	
	@GetMapping("/contact")
	public String contact()
	{
		return "contact";
	}
	
	@GetMapping("/bookings")
	public String bookings()
	{
		return "bookings";
	}
	
	@GetMapping("/seats")
	public String seats()
	{
		return "seats";
	}
	
	@GetMapping("/payment")
	public String payment()
	{
		return "payment";
	}
	
	@GetMapping("/test")
	public String test()
	{
		return "test";
	}
	@GetMapping("/buses")
	public String buses()
	{
		return "buses";
	}
	
	@GetMapping("/magic")
	public String magic()
	{
		return "magic";
	}
	
	
	@GetMapping("/adminlogin")
	public ModelAndView adminlogindemo()
	{
		ModelAndView mv = new ModelAndView("adminlogin");
		
		return mv;
	}
	
	@GetMapping("/employeelogin")
	public ModelAndView employeeogindemo()
	{
		ModelAndView mv = new ModelAndView("employeelogin");
		
		return mv;
	}
	
	@GetMapping("/employeereg")
	public ModelAndView employeeregdemo()
	{
		ModelAndView mv = new ModelAndView("employeeregistration", "emp",new Employee());
		return mv;
	}
	
	@GetMapping("/adminhome")
	public ModelAndView adminhomedemo()
	{
		ModelAndView mv = new ModelAndView("adminhome");
		
		return mv;
	}
	
	@GetMapping("/employeehome")
	public ModelAndView employeehomedemo(HttpServletRequest request)
	{
		ModelAndView mv = new ModelAndView("employeehome");
		
		HttpSession session = request.getSession();
		
		String euname = (String) session.getAttribute("euname");
		
		mv.addObject("euname", euname);
		
		return mv;
	}
	
	@GetMapping("/viewallusers")
	public ModelAndView viewallempsdemo()
	{
		ModelAndView mv = new ModelAndView("viewallusers");
		
		List<Employee> emplist = adminService.viewallusers();
		mv.addObject("emplist",emplist);
		
		return mv;
	}
	
	@PostMapping("/checkadminlogin")
	public ModelAndView checkadminlogindemo(HttpServletRequest request)
	{
		ModelAndView mv =  new ModelAndView();
		
		String auname = request.getParameter("auname");
		String apwd = request.getParameter("apwd");
		
		Admin admin = adminService.checkadminlogin(auname, apwd);
		
		if(admin!=null)
		{
			
			HttpSession session = request.getSession();
			
			session.setAttribute("auname", auname);
			
			mv.setViewName("adminhome");
		}
		else
		{
			mv.setViewName("adminlogin");
			mv.addObject("message", "Unauthorised User");
		}
		
		
		return mv;
	}
	
	
	@PostMapping("/checkemplogin")
	public ModelAndView checkemplogindemo(HttpServletRequest request)
	{
		ModelAndView mv =  new ModelAndView();
		
		String euname = request.getParameter("euname");
		String epwd = request.getParameter("epwd");
		
		Employee emp = employeeService.checkemplogin(euname, epwd);
		
		if(emp!=null)
		{
			HttpSession session = request.getSession();
			
			session.setAttribute("euname", euname);
			
			mv.setViewName("employeehome");
		}
		else
		{
			mv.setViewName("employeelogin");
			mv.addObject("message", "Email or Password is incorrect");
		}
		
		
		return mv;
	}
	
	
	@PostMapping("/addemployee")
	public String addemployeedemo(@ModelAttribute("emp") Employee employee, RedirectAttributes redirectAttributes, Model model) {
	    try {
	        employeeService.addemployee(employee);
	        redirectAttributes.addFlashAttribute("message", "Registered Successfully");
	        return "redirect:employeelogin";
	    } catch (Exception e) {
	        model.addAttribute("error", "Registration failed. Username or Email Already Registered");
	        return "employeeregistration"; // Replace "your-registration-page" with the actual registration page name
	    }
	}



	
	@GetMapping("/deleteemp")
	public String deleteuser(@RequestParam("id") int eid, RedirectAttributes redirectAttributes) {
	    adminService.deleteemployee(eid);
	    
	    redirectAttributes.addFlashAttribute("successMessage", "User with ID " + eid + " has been successfully deleted");
	    
	    return "redirect:viewallusers";
	}

	
	@GetMapping("/viewuserdetail")
	public ModelAndView viewemp(HttpServletRequest request)
	{
		HttpSession session = request.getSession();
		
		String euname = (String) session.getAttribute("euname");
		
		Employee emp =  employeeService.viewemployee(euname);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("viewemployee");
		mv.addObject("emp",emp);
		
		return mv;
	}
	
	@GetMapping("/echangepwd")
	public ModelAndView echangepwd(HttpServletRequest request)
	{
		HttpSession session = request.getSession();
		
		String euname = (String) session.getAttribute("euname");
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("empchangepwd");
		mv.addObject("euname",euname);
		
		return mv;
	}
	
	@PostMapping("/updateemppwd")
	public ModelAndView updateemppwddemo(HttpServletRequest request)
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("empchangepwd");
		
		HttpSession session = request.getSession();
		
		String euname = (String) session.getAttribute("euname");
		
		String eoldpwd = request.getParameter("eopwd");
		String enewpwd = request.getParameter("enpwd");
		
		int n = employeeService.changeemployeepassword(eoldpwd, enewpwd, euname);
		
		if(n > 0)
		{
			
			mv.addObject("message","Password Updated Successfully");
		}
		else
		{
			mv.addObject("message","Old Password is Incorrect");
		}
		
		return mv;
	}
	
	@GetMapping("/viewuserbyid")
	public ModelAndView viewempbyiddemo(@RequestParam("id") int eid)
	{
		Employee emp = adminService.viewuserbyid(eid);
		
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("viewuserbyid");
		mv.addObject("emp",emp);
		
		return mv;
	}
	
}
