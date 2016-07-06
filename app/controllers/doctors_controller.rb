class DoctorsController < ApplicationController

  def index
    @doctors = Unirest.get("https://api.betterdoctor.com/2016-03-01/doctors?location=37.773%2C-122.413%2C100&user_location=37.773%2C-122.413&user_key=6c0bcb5cc7fb0fd69921d54fc02b09b0").body
  end
end
