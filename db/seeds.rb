100.times do
  

  Resource.create(
    company: Faker::Company.name,
    street_address: Faker::Address.street_address,
    city: Faker::Address.city,
    state_abbr: Faker::Address.state_abbr,
    zip_code: Faker::Address.zip_code,
    url: Faker::Internet.url,
    phone_number: Faker::PhoneNumber.phone_number
    )
end

