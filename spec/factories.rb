FactoryGirl.define do
  factory :user do
    coy "Name Surname"
    email "name@domain.com"
    title "Title"
    password "12345678"
    password_confirmation "12345678"
  end

  factory :post do
    name "Lorem Ipsum"
    url "http://www.domain.com"
    description "This is description"
    user
  end
end