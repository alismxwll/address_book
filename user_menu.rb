require './lib/contact'

def main_menu
  loop do
    puts "press 'a' to add a contact"
    puts "press 'add' to add info to add info to a contact"
    puts "press 'd' to view contacts"
    puts "press 'x' to exit"
    main_choice = gets.chomp
    if main_choice == 'a'
      add_contact
    elsif main_choice == 'add'
      add_info
    elsif main_choice == 'd'
      view_contacts
    elsif main_choice == 'x'
      exit
    else
      puts "That was not a valid input"
    end
  end
end

def add_contact
  puts "Enter the contact name:"
  name = gets.chomp
  puts "\n"
  new_contact = Contact.new(name).save
  puts "You created a new contact: #{Contact.all.last.name}"
end

def view_contacts
  Contact.all.each do |contact|
    puts contact.name
  end
  puts 'What contact would you like to review?'
  input = gets.chomp
    Contact.all.each do |contact|
      if input == contact.name
        contact.phones.each do |phone|
          puts phone.phones
      end
    end
  end
end

def add_info
  puts "What contact would you like to edit?"
  input = gets.chomp
  puts "\n"
  Contact.all.each do |contact|
  if input == contact.name
    # @selected_contact = contact
    puts "add a phone number"
    number_input = gets.chomp

    contact.add_info(Phone.new(number_input))
    puts "Number added"
  end
end
end

main_menu


# @total_info = []
# @total_info << input #contact.name
# @total_info << @selected_contact

# line 45:
# puts total_info[1]
