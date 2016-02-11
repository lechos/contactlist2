require_relative 'contact'

# Interfaces between a user and their contact list. Reads from and writes to standard I/O.
class ContactListUi
  
  def run(args)
    case args[0]
    when 'create' then create
    when 'list' then Contact.list_all
    when 'show' then Contact.show(args[1])
    when 'search' then Contact.search(args[1])
    else exit
    end
  end

  def user_menu
    puts "\n" + 
    "Here is a list of available commands:\n" +
    "\n" + 
    "create\n" +
    "list all\n" + 
    "show\n" +
    "quit"
  end

  def create
    puts "Name: "
    name = $stdin.gets.chomp
    puts "Email: "
    email = $stdin.gets.chomp
    contact = Contact.create(name, email)
  end


  # def get_user_input
  #   input = gets.chomp
  #   if input == "create"    #
  #     puts "please add name"
  #     name = gets.chomp
  #     puts "please add email"
  #     email = gets.chomp
  #     elsif input == "list all"
  #     puts Contact::list_all
  #     elsif input == "show"
  #     puts "Please enter ID"
  #     id = gets.chomp
  #     puts Contact::show
  #     else input == "quit"
  #     puts Contact::quit
  #   end
  # end
  # TODO: Implement user interaction. This should be the only file where you use `puts` and `gets`.
end

ui = ContactListUi.new
ui.run(ARGV)


# ui.user_menu
# ui.get_user_input
