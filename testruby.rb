require 'rubygems'
require 'selenium-webdriver'
wd = Selenium::WebDriver.for :firefox

wd.get "https://www.google.co.in/search?q=selenium+builder&ie=utf-8&oe=utf-8&aq=t&rls=org.mozilla:en-US:official&client=firefox-a&channel=fflb&gfe_rd=cr&ei=TMWrVL2BH4vFuASFyYEg"
wd.find_element(:id, "gbqfb").click
wd.action.double_click(wd.find_element(:id, "sb_ifc0")).perform
wd.find_element(:id, "gbqfq").click
wd.find_element(:id, "gbqfq").clear
wd.find_element(:id, "gbqfq").send_keys "prashanthsams"
wd.find_element(:css, "div.sbqs_c").click
wd.quit
