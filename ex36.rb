def start
  puts "You are standing on a lonely street in Kyoto."
  puts "You have an urgent appointment and are desperate to get to the Keihan Station asap."
  puts "You can see a Starbucks to your left and a bridge crossing the Kamogawa."
  puts "Where do you want to go to? Starbucks? Or bridge?"

  choice = $stdin.gets.chomp
  if choice.to_s.downcase == ("starbucks" || "left")
    puts "You chose Starbucks!"
  	starbucks
  elsif choice.to_s.downcase == "bridge"
    puts "You chose the bridge"
    bridge
  else
    puts "You chose #{choice}. I don't understand that."
  end

end

def starbucks
  puts "You enter the Starbucks. They have a Sakura Latte special on offer."
  puts "Do you want to buy the Sakura Latte or do you want to leave through the veranda?"
  latte_check = $stdin.gets.chomp
  if latte_check == "latte"
    latte = true
    puts "You bough the wonderful Sakura Latte and leave through the backdoor."
    river
  elsif latte_check == "leave"
    puts "You're in a hurry and don't feel like getting a latte."
    puts "You leave through the backdoor."
    river
  else
    puts "I don't understand what you want. Try it again!"
    starbucks
  end
end

def bridge
  puts "You intend to cross the bridge and go the Keihan Station."
  puts "The weather is nice and life is good."
  puts "But a big, ugly ogre with a huge knife is blocking your road."
  puts "Do you want to wait or do you want to attack him?"
  ogre_choice = $stdin.gets.chomp
  if ogre_choice == "attack"
    puts "You rush toward the Ogre, hoping to tackle him with a surprise attack."
    puts "Which is a very stupid idea. Never tackle an ogre with a knife."
    puts "Half-way through the bridge he throws his knife at you and kills you."
    exit(0)
  elsif ogre_choice == "wait"
    puts "The ogre gets upset that you're just standing there doing nothing."
    puts "as impatient as he is, he suddenly throws his knife at you."
    puts "The knife misses you by an inch and hits the railing beside you"
    puts "You pick up the knife and flee to the river."
    river
  end 
end

def river
  puts "You arrive on the beautiful Kamogawa river of Kyoto."
  puts "You feel very happy as you can see the Keihan Station on the other side of the river."
  puts "A boatman is standing at the riverside waiting for you to cross the river."
  puts "He asks you:'What can you offer me?'"
  puts "> "
  choice = $stdin.gets.chomp
  if choice.include?("latte")
    puts "Do you want to offer your latte to him?"
    boat_offer = $stdin.gets.chomp
    if boat_offer == "yes"
      happy_end
    else
      puts "He is offended and leaves with his boat. You are left by yourself on this side of the river for the rest of your life."
    end
  elsif choice.include?("knife")
    puts "Do you want to use your knife?"
    boat_offer = $stdin.gets.chomp
    if boat_offer == "yes"
      puts "You give him your knife."
      happy_end
    else
      puts "The boatman is offended and leaves with his boat. You sit there all by yourself, desperate, looking at the river."
      puts "You ask yourself where you made the crucial mistake."
      exit(0)
    end
  else
    puts "You can't offer him anything of value and spend the rest of your life on this side of the Kamogawa river."
  end
end

def happy_end
  puts "The boatman takes your latte and gladly takes you to his boat."
  puts "You cross the river and arrive at the Keihan Station just in time to catch your train."
  puts "Life is good."
  puts "Surely goodness shall follow you all the days of your life."
end

start

