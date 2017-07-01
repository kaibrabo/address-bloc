require_relative '../models/entry.rb'

RSpec.describe Entry do

    describe "attributes" do
        let(:entry) { Entry.new('Kai Brabo', '415.377.6516', 'kaibrabo@gmail.com') }

        it "responds to name" do
            expect(entry).to respond_to(:name)
        end

        it "responds to name" do
            expect(entry.name).to eq('Kai Brabo')
        end

        it "responds to phone number" do
            expect(entry).to respond_to(:phone_number)
        end

        it "responds to phone number" do
            expect(entry.phone_number).to eq('415.377.6516')
        end

        it "responds to email" do
            expect(entry).to respond_to(:email)
        end

        it "responds to email" do
            expect(entry.email).to eq('kaibrabo@gmail.com')
        end
    end

    describe "to_s" do

        it "prints an entry as a string" do

            entry = Entry.new('Kai Brabo', '415.377.6516', 'kaibrabo@gmail.com')
            expected_string = "Name: Kai Brabo\nPhone Number: 415.377.6516\nEmail: kaibrabo@gmail.com"

            expect(entry.to_s).to eq(expected_string)
        end
    end

end
