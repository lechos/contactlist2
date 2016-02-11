require 'csv'
require 'pry'
read_contacts = CSV.read('contactlist2.csv')

# Represents a person in an address book.
class Contact

  attr_accessor :name, :email, :id

  def initialize(id, name, email)
    @id = id
    @email = email
    @name = name
    # TODO: Assign parameter values to instance variables.
  end

  # Provides functionality for managing a list of Contacts in a database.
  class << self

    @@file_path = 'contactlist2.csv'

    def list_all
      contacts = CSV.read(@@file_path)
      puts contacts
    end

    # Returns an Array of Contacts loaded from the database.
    def print_id
      contacts = CSV.read(@@file_path)
      # TODO: Return an Array of Contact instances made from the data in 'contacts.csv'.
    end

    # Creates a new contact, adding it to the database, returning the new contact.
    # def create(name, email)
    #   #binding.pry
    #   #contact = Contact.new(name, email)
    #   CSV.open(@@file_path).each do |csv| csv << [contact.name, contact.email]
    #   end
    # #   # TODO: Instantiate a Contact, add its data to the 'contacts.csv' file, and return it.
    # end
    #

    
    # Returns the contact with the specified id. If no contact has the id, returns nil.
    def show(id)
      print_id.each do |contact|
        if contact[0] == id
          puts contact
        end
      end
    end

    # Returns an array of contacts who match the given term.
    def search(query)
      print_id.each do |contact|
        found = false
          contact.each do |column|
          if column.include? query
            found = true
            puts contact
          end
        end
      end
    end

    def create(name, email)
      #take in two parameters, add to array
      CSV.open(@@file_path) do |csv|
      csv << name && csv << email
      # array = []
      # array.to_s << name && array.to_s << email
      # CSV << array.to_s
    end
    end
  end
end
# if contact[1] == name
        #   puts contact
        # end
          # if contact[1].include?(query) || contact[2].include?(query)
          #   puts contact
          # end
