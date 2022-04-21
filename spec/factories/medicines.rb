FactoryBot.define do
  factory :medicine do
    title { Faker::Lorem.word }
    price { Faker::Commerce.price }
    description { Faker::Lorem.paragraph }
    age { 'adult' }
  end
end
