require 'rails_helper'

describe Exercise, type: :model do
  it { should validate_presence_of :name }
  it { should validate_presence_of :goal }
  it { should validate_presence_of :video_path }
  it { should validate_presence_of :reps_number }
  it { should validate_presence_of :rest_time }
  it { should validate_presence_of :description }
  it { should validate_presence_of :beta }
  it { should have_many :intensities }
  it { should have_many :levels }
  it { should have_many(:tags).through(:exercises_tags) }
  it { should have_many(:saved_days).through(:saved_days_exercises) }
end
