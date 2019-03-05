# A group of friends have just finished lunch. Write method to work out how much each person owes.

# - Your app should ask "Enter a customer's name"- Your first line of code is:

orders = []


def ask_for_name()
    puts "Enter a customer's name."
    customer_name = gets.strip().downcase
    return customer_name
end

def ask_for_order()
    puts "What would you like to order? Soup - $8.50, Coke - $2.50, Hamburger - $18.00"
    order = gets.strip().downcase
    return order
end

def add_order_to_backlog(name, order, hash_of_orders)
    new_order = Hash.new{}
    new_order[:customer] = name
    new_order[:item] = order
    if order == "soup"
        new_order[:cost] = 8.50
    elsif order == "coke"
        new_order[:cost] = 2.50
    elsif order == "hamburger"
        new_order[:cost] = 18.0
    end
    hash_of_orders << new_order
end

def print_customer_bill(customer, array_of_orders)
    bill_total = 0
    array_of_orders.each do |hash|
        if hash[:customer] == customer
        hash.each do |key, value|
            if value.class == Float
                bill_total += value
            end
        end
        end
    end
    puts "#{customer.capitalize} owes $#{bill_total.round(2)}"
    return bill_total
end

run_program = "yes"
while run_program == "yes"

    new_customer = ask_for_name()
    new_order = ask_for_order()
    add_order_to_backlog(new_customer, new_order, orders)

    puts "Would you like to make another order - yes or no?"
    run_program = gets.strip().downcase
end

print_customer_bill(new_customer, orders)
puts
print orders



# - Your app should output, for example: "John owes $11.0"

## Beast
# Format your total so it always shows two decimal places, e.g. $11.00 
# Allow items to be added to the list. E.g. "Press 1 to add items, press 2 to work out a total".