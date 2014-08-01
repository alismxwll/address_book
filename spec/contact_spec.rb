require 'rspec'
require 'contact'

describe Contact do
  before do
    Contact.clear
  end

    describe '.all' do
      it 'is an empty array for contacts' do
        expect(Contact.all).to eq []
      end
    end

    describe '#save' do
      it ' adds contacts to the array of saved contacts' do
        test_contact = Contact.new('Batman')
        test_contact.save
        expect(Contact.all). to eq [test_contact]
      end
    end

    describe '.clear' do
      it 'empties out all of the saved tasks' do
        Contact.new('Batman').save
        Contact.clear
        expect(Contact.all).to eq []
      end
    end

  it 'starts out with an empty contact' do
    test_contact = Contact.new('Batman')
    expect(test_contact).to be_an_instance_of Contact
  end

  it 'is initialized with a name' do
    test_contact = Contact.new('Batman')
    expect(test_contact.name).to eq 'Batman'
  end

  it 'add info to contact class' do
    test_contact = Contact.new('Batman')
    test_number = Phone.new('6509066721')
    # test_email = Email.new('batman@gmail.com')
    # test_address = Address.new('1234 Oak Street')
    test_contact.add_info(test_number)
    expect(test_contact.phones).to eq([test_number])
  end
end

describe Phone do
  it 'starts out with an empty phone number' do
    test_number = Phone.new('6509066721')
    expect(test_number).to be_an_instance_of Phone
  end

  it 'is initialized with a number' do
    test_number = Phone.new('6509066721')
    expect(test_number.phones).to eq '6509066721'
  end
end

# describe Email do
#   it 'starts out with an empty email' do
#     test_email = Email.new('batman@gmail.com')
#     expect(test_email).to be_an_instance_of Email
#   end

#   it 'is initialized with an email' do
#     test_email = Email.new('batman@gmail.com')
#     expect(test_email.email).to eq 'batman@gmail.com'
#   end
# end

# describe Address do
#   it 'starts out with an empty address' do
#     test_address = Address.new('1234 Oak Street')
#     expect(test_address).to be_an_instance_of Address
#   end

#   it 'is initialized with an address' do
#     test_address = Address.new('1234 Oak Street')
#     expect(test_address.address).to eq '1234 Oak Street'
#   end
# end
