require 'ffaker'

FactoryBot.define do
  factory :user do
    email { FFaker::Internet.email }
    password { 'oussama' }
  end

  factory :admin, class: User do
    email { 'ouss@yopmail.com' }
    password { 'oussama' }
  end

  factory :membership do
    association :user
    association :group
  end

  factory :group do
    title { FFaker::Book.title }
    description { FFaker::Book.description }
    association :user
  end

  factory :post do
    title { FFaker::Book.title }
    content { FFaker::Book.description }
    association :user
  end
end