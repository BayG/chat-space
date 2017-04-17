FactoryGirl.define do

  factory :message do
    body							"Hello"
    image							"sample.png"
    user_id						"1"
    group_id					"1"
  end

end
