
binding pry
退出 !!!

:: 全局变量
method 和 attribute都是instance/object上的
object 是按照class创造的
@width, @height = w, h

.new是呼叫initial method


require 'date'
#puts Date.today   2019-2-27
class Car
    attr_reader :make, :year, :mileage, :color
    def initialize(make, year, mileage,color)  # 创建 attributes
        @make = make                     # 指定local变量 = attributes
        @year = year
        @mileage = mileage
        @color = color


    end

    # def description
    #     return "Make: #{@make}, Year: #{@year}, Mileage: #{@mileage} Color: #{@color}"
    # end

    def drive(distance)
        @mileage += distance
        puts "print mileage + distance_input"
    end

    def is_vintage?()
        if DateTime.now.year - @year > 30
            puts"This is a vintage car"
            return true                          #     return ture
        else                                     #  end
            puts"This is not a vintage Car"      #     return false
            return false
        end                       #new
    end
end

work_car = Car.new('Toyota', 2018, 5000, "green")
# work_car.make
puts ("The work car make is #{work_car.make} ")


#{work_car.description}
# puts work_car.make

# work_car.drive(10*5)
trips = [30,10,50,30,20]
trips.each do |day_km|
    puts day_km          # each
    work_car.drive(day_km)
    puts ("The work car is #{work_car.description()}")
end
weekend_car = Car.new('Forester', 2019, 10, "white")
puts ("The work car is #{weekend_car.description}")

# # call out initialize method 对应 attributes
# puts ("The work car is #{work_car.description()}")
# work_car.drive(100)
# puts ("The work car is #{work_car.description()}")
weekend_car.is_vintage?()

# def

#             # ""  # atrribute : method   = feature : action
# # creating a car object
#             work_car = Car.new('toyota', 2018, 5000)
#             # matching initialize ()
#             puts work_car2 = Car.new('mazda', 2016,12000)
#             puts work_car.make
#             car3 = Car.new("new car", 1999, 99)
#             #accesing methods on the car

#             # work_car =

# def

#     c
class Hamburger
    # attr_reader :patty, :bun, :cheese, :condiments
    def initialize(patty,bun)
        @patty = patty
        @bun = bun    # @意思说你可以在class里用这个变量
       
    end

    def whats_burger()
        "This hamburger has #{@patty} patty on a #{@bun} bun #{ @cheese ? 'with cheese' : 'with no cheese' } "
    end
# if @cheese is true

    # true = "with cheese"
    # false ="with no cheese"
end

puts"patty"
patty = gets().strip
puts"bun"

bun =gets().strip


hamburger1 = Hamburger.new(patty, bun)
puts (hamburger1.whats_burger())  #没有attr_reader也能呼出local变量,但只能通过method呼出



puts "hamburger1 has #{hamburger1.patty} patty and #{hamburger1.bun} bun #{hamburger1.cheese} and with #{hamburger1.condiments}"



hamburger2 = Hamburger.new('chicken', 'sesame', false, ['alio', 'tartar'])
puts "hamburger2 has #{hamburger2.patty} patty and #{hamburger2.bun} bun #{hamburger2.cheese} and with #{hamburger2.condiments}"
hamburger3 = Hamburger.new('veggie patty', 'turkish', true, ['big mac sauce'])
puts "hamburger3 has #{hamburger3.patty} patty and #{hamburger3.bun} bun #{hamburger3.cheese} and with #{hamburger3.condiments}"

puts (hamburger2.whats_burger())


# call out a song out of Class RecordStore

class RecordStore
    attr_reader :name, :artists
    def initialize(name)
        @name = name
        @artists = []
    end

    def add_artist(artist)
        @artists << artist
    end
end

add_artist("Jay")
print RecordStore.artists

jbhifi = RecordStore.new("JB Hifi")
sanity = RecordStore.new("sanity")
puts jbhifi.name
puts sanity
class Artist
    attr_reader :name, :albums
    def initialize(name, albums)
        @name = name
        @albums = []
    end
    def add_album(album)
        @albums << album
    end
end

batles = Artist.new("Bentles")
elvis = Artist.new("Elvis")

jbhifi.add_artist (batles)
jbhifi.artists
jbhifi.artists[0]
sanity.artists[0] # nil
jbhifi.add_artist (elvis)

class album
    attr_reader (:name, :tracks)
    def initialize(name, tracks)
        @name = name
        @tracks= []
    end
end

help = Album.new("Help")
white = Album.new("The White")
black = Album.new ("The Black")
batles.add_album(help)
batles.add_album(white)
batles.add_album(black)

jbhifi.artist[0].albums[2].name


class Artist
    def initialize(name)   #initialize也要def
        @name = name
        artists = []
    end

    def add_album
        artists << name
    end


end

class Album
    def initialize()


        def album_count
            @albums.length

# Class method vs instance methond

    # Class Method
class helloHi
    def self.class_method
        "Hello, from a class method"
    end

     def intstance_method
        "Hello, from a class method"
     end
end


puts helloHi.class_method

class SayHello
	# Class Method
    def self.from_the_class
        "Hello, from a class method"
    end
end

puts SayHello.from_the_class

