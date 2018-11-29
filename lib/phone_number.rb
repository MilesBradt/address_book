class PhoneNumber
  attr_accessor :phonenumber, :kind

  def display_phone
    "#{kind}: #{phonenumber}"
  end
end

# number = PhoneNumber.new
# number.phonenumber = "503-704-6762"
# number.kind = "tincup"
