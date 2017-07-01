require_relative '../models/address_book.rb'

RSpec.describe AddressBook do
    context 'attributes' do
        it 'responds to entries' do
            book = AddressBook.new
            expect(book).to respond_to(:entries)
        end

        it 'initializes entries as an array' do
            book = AddressBook.new
            expect(book.entries).to be_an(Array)
        end

        it 'initializes entries as empty' do
            book = AddressBook.new
            expect(book.entries.size).to eq(0)
        end
    end

    context '#remove_entry' do

        it 'removes an entry using name, phone_number, and email' do
            book = AddressBook.new
            book.add_entry('Kalani Brabo', '415.378.0106', 'kjbrabo@gmail.com')

            name = 'Kai Brabo'
            phone_number = '415.377.6516'
            email = 'kaibrabo@gmail.com'
            book.add_entry(name, phone_number, email)

            expect(book.entries.size).to eq(2)
            book.remove_entry(name, phone_number, email)
            expect(book.entries.size).to eq(1)
            expect(book.entries.first.name).to eq('Kalani Brabo')
        end

    end

    context '#add_entry' do
        it 'adds only one entry to the address book' do
            book = AddressBook.new
            book.add_entry('Kai Brabo', '415.377.6516', 'kaibrabo@gmail.com')

            expect(book.entries.size).to eq(1)
        end

        it 'adds the correct information to entries' do
            book = AddressBook.new
            book.add_entry('Kai Brabo', '415.377.6516', 'kaibrabo@gmail.com')
            new_entry = book.entries[0]

            expect(new_entry.name).to eq('Kai Brabo')
            expect(new_entry.phone_number).to eq('415.377.6516')
            expect(new_entry.email).to eq('kaibrabo@gmail.com')
        end
    end


end
