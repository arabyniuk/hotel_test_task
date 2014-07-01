FactoryGirl.define do
  factory :user do
    sequence(:email) {|n| "person#{n}@example.com" }
    password "Hf,by.r2014"
    password_confirmation "Hf,by.r2014"
  end
end