require 'rails_helper'

describe Review do
  it { should validate_presence_of :brew_id }
  it { should validate_presence_of :author }
  it { should validate_presence_of :content }
  it { should validate_presence_of :rating }
  it { should belong_to :brew }
end
