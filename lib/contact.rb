class Contact
  @@all_contacts = []

  def Contact.all
    @@all_contacts
  end

  def save
    @@all_contacts << self
  end

  def Contact.clear
    @@all_contacts = []
  end

  def initialize(name)
    @name = name
    @phones = []
  end

  def name
    @name
  end

  def add_info(number)
    @phones << number
  end

  def phones
    @phones
  end
end

class Phone
  def initialize(number)
    @number = number
  end
  def phones
    @number
  end
end

# class Email
#   def initialize (email)
#     @email = email
#   end

#   def email
#     @email
#   end
# end

# class Address
#   def initialize (address)
#     @address = address
#   end

#   def address
#     @address
#   end
# end
