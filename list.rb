require 'pry'

class List
  attr_accessor( :name, :item_array)
  
#this method creates a new item
  def initialize(name)
    @name = name
    @item_array = []
  end

  def display_menu
    while true
      puts """
      What would you like to do?
        1. Display List
        2. Add item
        3. Remove item
        4. Mark an item complete
        5. exit
        """
      choice = gets.chomp
      if choice == '1'
        display_list
      elsif choice == '2'
        puts 'Name of list item:'
        item_name = gets.chomp
        puts 'Add a description: '
        description = gets.chomp
        puts 'Is this complete?'
        complete = gets.chomp
        add_item(item_name, description, complete)
      elsif choice == '3'
        display_list_with_index
        print 'Choose an item number to delete: '
        index_for_deletion = gets.chomp.to_i
        @item_array.delete_at(index_for_deletion)
        puts 'Item deleted!'
      elsif choice == '4'
        display_list_with_index
        print "Please indicate if item has been purchased"
        choice = gets.chomp.to_i
        item_completion(choice)
        puts @item_array[choice].complete

      end
    end
  end

  def add_item(name, description, complete)
    @item_array << Item.new(name, description, complete)
  end

  def display_list
    @item_array.each do |item|
      puts item.item_name + ' -- ' + item.description
    end
  end

  def display_list_with_index
    @item_array.each_with_index do |item, index|
      puts index.to_s + ' - ' + item.item_name + ' -- ' + item.description
    end
  end
end


class Item
  attr_accessor :item_name, :description, :complete

  def initialize(item_name, description, complete)
    @item_name = item_name
    @description = description
    @complete = complete



  end
end

def item_completion(index)
  @item_array[index].complete = true
end

l = List.new('todo')
l.display_menu
pry



# def remove_item
#   puts "Which item would you like to remove from the list? Please select one if it doesn't meet your criteria"
#   while true 
#   @menu_delete_options = { 
#       @remove_items => { '1' => ['Baking Soda'], 
#                          '2' => ['Pepsi'],
#                          '3' => ['Broom'],
#                          '4' => ['Batteries'],
#                          '5' => ['Toenail Clippers'],
#                          '6' => ['Avocadoes'],
#                          '7' => ['Mozzerella Cheese Balls'],
#                          '8' => ['Cereal','Captain Crunch', 'CocoPuffs'],
#                          '9' => ['Angel Hair Spaghetti Noodles'],
#                         '10' => ['Scotch Tape']
#                       }
#                           }
#       choice = gets.chomp
#       if choice == '1'


#     3. Broom,
#     4. Batteries,
#     5. Toenail Clippers,
#     6. Avocadoes
#     7. Mozzerella Cheese Balls
#     8. Cereal: Captain Crunch
#     9. Angel Hair Spaghetti Noodles
#     10. Scotch Tape
#     """
#     choice = gets.chomp
#       if choice == '1'



# end

# def mark_an_item_complete
#   puts "Please select an item you no longer wish to purchase:"
#   user_choice = gets.chomp 





