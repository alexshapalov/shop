FactoryBot.define do
  factory :car do
   initialize_with { new }

    name { 'Tesla X' }
    price { 120_000 }
  end
end
