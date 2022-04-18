FactoryBot.define do
  factory :medicine do
    name { Faker::Name.name }
    price { Faker::Commerce.price }
    description { Faker::Lorem.paragraph }
    age { 'adult' }
  end
end
