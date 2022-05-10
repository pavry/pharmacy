FactoryBot.define do
  factory :medicine do
    name { Faker::Lorem.word }
    price { Faker::Commerce.price }
    description { Faker::Lorem.paragraph }
    age { 'adult' }
  end
end
