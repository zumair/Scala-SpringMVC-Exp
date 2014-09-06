package com.zohaib.research.web.services

import org.springframework.stereotype.Controller
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.servlet.ModelAndView
import org.springframework.web.bind.annotation.RequestParam

@Controller
@RequestMapping(value=Array("/userService"))
class UserService {
  
  val homePage = "home"
  
  @RequestMapping(value=Array("/home"))
  def home:String = {
    homePage 
    
  }
  
  @RequestMapping(value=Array("/hello"))
  def hello(@RequestParam(value="name") name: String):ModelAndView = {
    new ModelAndView{
      addObject("name", name)
      setViewName("hello")
    }
    
  }

}