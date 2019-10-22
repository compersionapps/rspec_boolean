require "rspec"
RSpec::Matchers.define :be_boolean do |expected|
  match do |actual|
    return true if actual == true
    return true if actual == false
  end

  failure_message do |actual|
    "expected #{actual} to be true or false"
  end

  failure_message_when_negated do |actual|
    "expected #{actual} to be something other than true or false"
  end
end
