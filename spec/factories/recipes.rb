FactoryBot.define do
  factory :recipe do
    customer_id { 1 }
    totalPrice { Faker::Commerce.price }
    number { 432 }
    validity { 11802001 }
    age { 'baby'}
  end
end
