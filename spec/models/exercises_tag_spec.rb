require 'rails_helper'

describe ExercisesTag, type: :model do
  it { should belong_to :exercise }
  it { should belong_to :tag }
end
