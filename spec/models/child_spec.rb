require 'spec_helper'

describe Child do

  it 'is invalid without a name' do
    unnamed = Child.new(first_name: nil)
    expect(unnamed).to be_invalid
  end

end
