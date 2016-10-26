require 'rails_helper'

describe SavedDay, type: :model do
  it { should validate_presence_of :title }
  it { should belong_to :user }
  it { should have_many(:exercises).through(:saved_days_exercises) }
end
