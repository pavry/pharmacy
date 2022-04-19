FactoryBot.define do
  factory :medicine do
    title { Faker::Name.title }
    price { Faker::Commerce.price }
    description { Faker::Lorem.paragraph }
    age { 'adult' }
  end
end
