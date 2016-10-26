FactoryGirl.define do
  
  tag_names = ["bouldering", "trad", "sport"]
  
  factory :tag do
    name tag_names.sample
  end
end
