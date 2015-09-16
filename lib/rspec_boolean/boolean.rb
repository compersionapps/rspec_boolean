require "rspec"
RSpec::Matchers.define :be_boolean do |expected|
  match do |actual|
    return true if actual == true
    return true if actual == false
  end
  failure_message_when_negated do |actual|
    "expected that #{actual} would be a true or false"
  end
end