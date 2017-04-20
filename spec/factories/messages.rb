FactoryGirl.define do

  factory :message do
    body	{ Faker::Internet.body }
    user_id	1
    group_id	1
  end

end
