# FactoryBot.define do
#   factory :car do
#     name { "sss" }
#     price { 110_000 }
#   end
# end

FactoryBot.define do
  factory :car do
    #  access all public attributes within the initialize_with block by calling attributes:
    initialize_with { new }

    name { 'Tesla' }
    price { 110_000 }
  end
end
