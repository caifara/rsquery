When /^matching a single element$/ do
  @result = jquery("#single_element")
end

When /^matching a non\-existing element$/ do
  begin
    jquery("#non-existing")
  rescue StandardError => e
    @result = e
  end
end

When /^matching an element that appears twice on the page$/ do
  begin
    jquery(".twice")
  rescue StandardError => e
    @result = e
  end
end

When /^testing the \(in\)visibility of an object$/ do
  begin
    jquery("#visible").should be_visible
    jquery("#hidden").should_not be_visible
  rescue StandardError => e
    @result = e
  end
end

When /^waiting for a text phrase$/ do
  selenium.execute_js("setTimeout('addText()', 1000)")
  jquery.text.should_not include("some_text")
  jquery.wait_for_text("some_text")
end

When /^waiting for an element to appear$/ do
  selenium.execute_js("setTimeout('addElement()', 1000)")
  jquery.wait_for_element("#new_element")
end

When /^waiting for an element to turn visible$/ do
  selenium.execute_js("setTimeout('makeVisible()', 1000)")
  jquery("#hidden").wait_for_visible
end

When /^waiting for an element to turn hidden$/ do
  selenium.execute_js("setTimeout('makeHidden()', 1000)")
  jquery("#visible").wait_for_invisible
end

When /^calling html of an element$/ do
  selenium.execute_js("addElement()")
  @html = jquery("#container").html
end

When /^calling find with another element of an element$/ do
  selenium.execute_js("addElement()")
  @jq = jquery("#container").find("#new_element")
end

Then /^it returns the element$/ do
  @jq.should == "[object HTMLDivElement]"
end

Then /^it returns all html of that element$/ do
  @html.should == "<div id=\"new_element\"></div>"
end

Then /^the element is hidden$/ do
  jquery("#visible").should_not be_visible
end

Then /^the element is visible$/ do
  jquery("#hidden").should be_visible
end

Then /^the element is on the page$/ do
  jquery("#new_element")
end

Then /^the text is on the page$/ do
  jquery.text.should include("some_text")
end

Then /^it returns correct information$/ do
  @result.should be nil
end

Then /^it crashes$/ do
  @result.to_s.should include("none or too many elements found.")
end

Then /^it matches$/ do
  @result.should_not be_nil
end
