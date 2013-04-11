class HomeController < ApplicationController
  def index
    @home_active = "active"
  end
  
  def about
    @about_active = "active"
    @info = "We are a brand new student group called the Computer Science Research Alliance. Our goal is to connect people with great ideas to programmers. We are looking for professors who have an idea for a program that can a) help with research or b) expand outreach (we design websites and mobile apps). We are also looking for people (students or professors) who would like to create software for nonprofits. We can assign a team of programmers to accomplish these goals. GIMs will be held this Wednesday and Thursday from 8-9pm in Science Library 310. Food and beverage will be provided. For more information, contact csra@binghamton.edu"
  end
  
  def contact
    @contact_active = "active"
  end
end
