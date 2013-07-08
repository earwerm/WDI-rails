class HomeController < ApplicationController
  def home
  end

  def numbers
    @amount = 234
    @large_number = 388496738200912387654323456
    @phone_number = 5551212
  end

  def text
    @numbers = (1..20).to_a
    @person_count1 = 1
    @person_count2 = 2
    @story = "Once upon a time, in a land far far away..."
  end

  def assets
  end

  def url
  end
end
