class Contact

  attr_accessor :firstname, :lastname, :phonenumber
  attr_reader :id

  @@address_book = []

  def initialize(attributes)
    @firstname = attributes.fetch(:firstname)
    @lastname = attributes.fetch(:lastname)
    @phonenumber = attributes.fetch(:phonenumber)
    @id = @@address_book.length + 1
  end

  def save
  @@address_book.push(self)
  end

  def self.all
    return @@address_book
  end

  def self.find(id)
    item_id = id.to_i()
    @@address_book.each do |item|
      if item.id == item_id
        return item
      end
    end
  end
end

# Example contact
# contact = Contact.new({:firstname => "Miles", :lastname => "Bradt", :phonenumber => "555-555-5555"})

big  = Contact.new({:firstname => "Big", :lastname => "Kitty", :phonenumber => "555-555-5555"})
#
