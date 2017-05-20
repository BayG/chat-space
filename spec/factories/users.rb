FactoryGirl.define do

  factory :user do
    user.name                   "Test User"
    user.email                  "user@example.com"
    user.password               "password"
    user.password_confirmation  "password"
  end

end
