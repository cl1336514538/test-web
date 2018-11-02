package com.syaccp.easybuy.contrtroller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.syaccp.easybuy.service.NewsService;


@Controller
@RequestMapping("/news")
public class NewsController {
	
	@Resource
	NewsService newsService;
	
	
	public NewsController(){
		super();
		System.out.println("NewsController 造出来了++++");
	}
	
	@RequestMapping("")
	public String list(){
		System.out.println("NewsController list");
		
		newsService.delete(704);
		
		return "/role";
	}
	
	@RequestMapping(value="/delete/{id}",method=RequestMethod.GET)
	public String delete(@PathVariable("id")Integer id){
		
		System.out.println(id+"++++++++++++++++++++");
		return "redirect:/news";
	}
	
	

	
	
	
	@RequestMapping(value="/save")
	//,method=RequestMethod.POST
//	@PathVariable(value="id")
	public String save(@RequestParam("image") MultipartFile part){
		
		String fileName = part.getOriginalFilename();
		
		System.out.println(fileName+"+++++++++++++++++++++++++++");
		
		System.out.println("NewsController save");
		
		return "redirect:/news";
	}
}
