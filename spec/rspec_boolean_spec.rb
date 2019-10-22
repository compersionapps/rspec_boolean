require 'spec_helper'

describe RspecBoolean do
  it 'has a version number' do
    expect(RspecBoolean::VERSION).not_to be nil
  end

  context 'basic behavior' do
    it 'does the dirty job of matching true' do
      expect(true).to be_boolean
    end

    it 'does the dirty job of matching false' do
      expect(false).to be_boolean
    end

    it 'does the dirty job of testing negations of boolean values' do
      expect("test").to_not be_boolean
    end
  end

  context 'failure messages' do
    it 'gives details when a value should have been boolean' do
      expect {
        expect(42).to be_boolean # should fail
      }.to raise_error(RSpec::Expectations::ExpectationNotMetError, 'expected 42 to be true or false')
    end

    it 'gives details when a value should have been something else' do
      expect {
        expect(true).not_to be_boolean # should fail
      }.to raise_error(RSpec::Expectations::ExpectationNotMetError, 'expected true to be something other than true or false')
    end
  end
end
