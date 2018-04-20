require 'rails_helper'

describe Brew do
  it { should validate_presence_of :name }
  it { should validate_presence_of :price }
  it { should validate_presence_of :state }
  it { should have_many :reviews }
end
