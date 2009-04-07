class Selenium::Client::Driver
  def wait_for_js(condition)
    self.wait_for_condition(
      "selenium.browserbot.getCurrentWindow()." + condition )
  end
  
  def execute_js(js)
    self.js_eval( "window." + js )
  end
  
  def wait_for_visible(js)
    self.wait_for_js( "#{js}.is(':visible')" )
  end
  
  def wait_for_invisible(js)
    self.wait_for_js( "#{js}.is(':hidden')")
  end
end