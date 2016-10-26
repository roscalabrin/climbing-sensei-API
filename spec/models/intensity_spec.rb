require 'rails_helper'

describe Intensity, type: :model do
  it { should validate_presence_of :title }
  it { should validate_presence_of :description }
  it { should belong_to :exercise }
end
