
class Address
  attr_accessor :kind, :street_1, :street_2, :city, :state, :postal_code

  def display_address
  "#{city}, #{state}, #{postal_code}"
  end
end

# 
# home = Address.new
# home.kind = "Home"
# home.street_1 = "123 Main St."
# home.city = "Portland"
# home.state = "OR"
# home.postal_code = "12345"
