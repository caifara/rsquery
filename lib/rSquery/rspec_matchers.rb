class BeVisible
  def matches?(jquery_object)
    @model = jquery_object.jquery_matcher
    return jquery_object.selenium.execute_js(
      "$('#{@model}').is(':visible')") == "true"
  end
  
  def description
    "be visible"
  end
  
  def failure_message
    " expected to be visible, but was not."
  end
  
  def negative_failure_message
    " expected not to be visible, but was."
  end
end

def be_visible
  BeVisible.new
end
