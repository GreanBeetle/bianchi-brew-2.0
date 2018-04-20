require 'rails_helper'

describe Review do
  it { should validate_presence_of :brew_id }
  it { should validate_presence_of :author }
  it { should validate_presence_of :content }
  it { should validate_presence_of :rating }
  it { should belong_to :brew }
  it { should validate_length_of :content }
  it { should validate_inclusion_of(:rating).in_range(1..5) }
end
