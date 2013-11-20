require 'rspec'
require_relative '../lib/instead_of'

describe "instead_of" do

  it "should not replace the value if no rule applies" do
    expect((2 + 2).but(5.instead_of(3))).to eq(4)
  end


  it "should replace the value if the only rule applies" do
    expect((2 + 2).but(5.instead_of(4))).to eq(5)
  end


  it "should replace the value if one of the rules applies" do
    expect((2 + 2).but(6.instead_of(3), 7.instead_of(4))).to eq(7)
  end

end