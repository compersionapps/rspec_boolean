require 'spec_helper'

describe RspecBoolean do
  it 'has a version number' do
    expect(RspecBoolean::VERSION).not_to be nil
  end

  it 'does the dirty job of testing boolean values' do
    expect(false).to be_boolean
  end
end
