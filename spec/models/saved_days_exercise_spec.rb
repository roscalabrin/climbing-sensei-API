require 'rails_helper'

describe SavedDaysExercise, type: :model do
  it { should belong_to :saved_day }
  it { should belong_to :exercise }
end
