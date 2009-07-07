class JQ
  attr_accessor :jquery_matcher
  attr_accessor :selenium
  
  def initialize(jquery_matcher, selenium)
    @jquery_matcher = jquery_matcher.gsub(/'/, "\"")
    @selenium = selenium
    @basic_command = "$('#{@jquery_matcher}')"
    check_me
  end
  
  def check_me
    if @selenium.execute_js("#{@basic_command}.length == '0'") == "true"
      raise "'#{@jquery_matcher}' no elements found."
    elsif @selenium.execute_js("#{@basic_command}.length > '1'") == "true"
      raise "'#{@jquery_matcher}' too many elements found." 
    end
  end
  
  def method_missing(method, *arguments)
    arguments = arguments.length > 0 ? "'#{arguments.join("','")}'" : nil
    @selenium.execute_js(
      "#{@basic_command}.#{method}(#{arguments})")
  end
  
  def wait_for_text(text)
    condition = "#{@basic_command}.text().search('#{text}') > -1"
    @selenium.wait_for_js("#{condition}")
  end
  
  def wait_for_element(element)
    condition = "#{@basic_command}.find('#{element}').length > 0"
    @selenium.wait_for_js("#{condition}")
  end
  
  def wait_for_no_element(element)
    condition = "#{@basic_command}.find('#{element}').length == 0"
    @selenium.wait_for_js("#{condition}")
  end
  
  def wait_for_visible
    @selenium.wait_for_visible(@basic_command)
  end
  
  def wait_for_invisible
    @selenium.wait_for_invisible(@basic_command)
  end
end

def jquery(jquery_matcher="")
  JQ.new(jquery_matcher, selenium)
end
