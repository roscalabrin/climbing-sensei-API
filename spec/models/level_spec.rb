require 'rails_helper'

describe Level, type: :model do
  it { should validate_presence_of :sets }
  it { should validate_presence_of :duration }
  it { should belong_to :exercise }
end
