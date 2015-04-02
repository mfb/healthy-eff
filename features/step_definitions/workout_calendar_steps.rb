# encoding: UTF-8

Given /the following months exist/ do |months_table|
  months_table.hashes.each do |month|
    Month.create!(month)
  end
end


Given /the following days exist/ do |day_table|
  day_table.hashes.each do |day|
    Day.create!(day)
  end
end

Given /the following activities exist/ do |activities_table|
  activities_table.hashes.each do |activity|
    Activity.create!(activity)
  end
end

And /I should see a calendar with my logged activities/ do
  page.should have_content("April 2015")
  page.should have_content("Running")
  page.should have_content("80")
end

When /^(?:|I )click the "([^"]*)"$/ do |selector|
  find(:xpath, '//button[@class="fc-text-arrow"]').click

end