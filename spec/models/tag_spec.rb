require 'rails_helper'

describe Tag, type: :model do
  it { should validate_presence_of :name }
  it { should have_many(:exercises).through(:exercises_tags) }
end
