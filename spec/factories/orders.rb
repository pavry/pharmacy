FactoryBot.define do
  factory :order do
    totalPrice { Faker::Commerce.price }
    state { "in progress" }
  end
end
