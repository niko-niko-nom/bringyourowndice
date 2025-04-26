extends Node

@onready var buttonContainer = $CanvasLayer/CenterContainer/ButtonContainer
@onready var titleContainer = $CanvasLayer/CategoryContainer/CategoryTitle

var lists = {
	"Gender Expression": [
		"Masculine Genderless", "Feminine Genderless", "Neutral Genderless", 
		"Masculine Male", "Feminine Male", "Neutral Male", 
		"Masculine Female", "Feminine Female", "Neutral Female", 
		"Masculine Non-Binary", "Feminine Non-Binary", "Neutral Non-Binary",
		"Masculine Intersex", "Feminine Intersex", "Neutral Intersex", ],
	"Species": [
		"Humanoid", 
		"Furry", 
		"Scaly", 
		"Avian", 
		"Ungulate", 
		"Aquatic", 
		"Insectoid",
		"Fairy", 
		"Taur", 
		"Construct", 
		"Amorphous", 
		"Undead", 
		"Draconic", 
		"Elemental", 
		"Mythological",],
	"Humanoid Subspecies": [ 
		"Cnidarian", "Cyclops", 
		"Dwarf", 
		"Elf",
		"Gith", "Gnome", "Goblin", "Goliath", "Gobboc", "Golynn",
		"Hadozee", "Halfling", "Hobgoblin", "Human",
		"Kender", 
		"Merfolk", "Minotaur", 
		"Orc", 
		"Shifter", 
		"Tiefling", "Triton", "Troll", 
		"Vedalken", 
		"Werewolf", 
		"Yuan-ti", ],
	"Furry Subspecies": [ 
		"Aardvark", "Aardwolf", "African Wild Dog", "Akita", "Anteater", "Arctic Fox", "Armadillo", 
		"Baboon", "Badger", "Bat", "Beaver", "Binturong", "Border Collie", "Bull Terrier", "Brown Bear", "Bunny", "Bobcat", 
		"Camel", "Capybara", "Cheetah", "Chimpanzee", "Chinchilla", "Chipmunk", "Civet", "Clouded Leopard", "Coatimundi", "Corgi", "Cougar", "Coyote", 
		"Dalmatian", "Dhole", "Dingo", "Doberman", 
		"Elephant", 
		"Fennec", "Ferret", "Fossa", 
		"Genet", "German Shepherd", "Giant Panda", "Gibbon", "Gorilla", "Gray Fox", "Great Dane", "Grizzly Bear", "Guinea Pig", 
		"Hamster", "Hare", "Hedgehog", "Hippopotamus", "Husky", "Hyena", 
		"Jackal", "Jaguar", 
		"Kangaroo", "Kangaroo Mouse", "Kangaroo Rat", "Kinkajou", "Kit Fox", "Koala", "Kodiak Bear", 
		"Labrador", "Lemur", "Leopard", "Liger", "Linsang", "Lion", "Lynx", "Longhair Cat", 
		"Mountain Lion", "Maine Coon Cat", "Malamute", "Mandrill", "Maned Wolf", "Marmoset", "Marten", "Meerkat", "Mink", "Mole", "Mongoose", "Monkey", "Mouse", 
		"Ocelot", "Olingo", "Opossum", "Orangutan", "Otter", 
		"Puma", "Pangolin", "Panther", "Persian Cat", "Pig", "Pika", "Pine Marten", "Platypus", "Polar Bear", "Poodle", "Porcupine", "Procyonid", 
		"Quoll", 
		"Rabbit", "Raccoon", "Rat", "Red Fox", "Red Panda", "Rhinoceros", "Rottweiler", 
		"Sabertooth", "Serval", "Shiba Inu", "Shorthair Cat", "Shrew", "Siamese Cat", "Sifaka", "Silver Fox", "Skunk", "Sloth", "Snow Leopard", "Squirrel", "Stoat", "Sugar Glider", "Sun Bear", "Swift Fox", "Swine",  
		"Tanuki", "Tapir", "Tasmanian Devil", "Thylacine", "Tiger", 
		"Wallaby", "Weasel", "Wolf", "Wolverine", ],
	"Scaly Subspecies": [ 
		"Alligator", "Anaconda", 
		"Crocodile", "Caiman", "Chameleon", 
		"Gecko", 
		"Iguana", 
		"Kobold", "Komodo Dragon", 
		"Lizard", 
		"Monitor Lizard", 
		"Snake", "Serpent", 
		"Turtle", "Tortoise", ],
	"Avian Subspecies": [ 
		"Aarakocra", "Albatross", 
		"Blue Jay", 
		"Chicken", "Cockatiel", "Crane", "Crow", 
		"Duck", 
		"Eagle", 
		"Falcon", "Finch", "Flamingo", 
		"Gallus", "Goose", 
		"Hawk", "Heron", "Hummingbird", 
		"Kenku", 
		"Luma", 
		"Magpie", "Macaw", 
		"Ostrich", "Owl", 
		"Parakeet", "Parrot", "Peafowl", "Penguin", "Pigeon", "Puffin", 
		"Raptor", "Robin", 
		"Seagull", "Secretary Bird", "Sparrow", "Stork", "Swan", 
		"Toucan", 
		"Vulture",],
	"Ungulate Subspecies": [ 
		"Alpaca", "Antelope", 
		"Buffalo", "Bison", 
		"Caribou", "Cow", 
		"Deer", "Donkey", 
		"Gazelle", "Giraffe", "Goat", 
		"Horse", 
		"Impala", 
		"Llama", 
		"Moose", "Mule", "Musk Deer", "Musk Ox", 
		"Okapi", "Oryx", 
		"Pony", 
		"Reindeer", 
		"Sheep", 
		"Zebra", ],
	"Aquatic Subspecies": [ 
		"Axolotl", 
		"Cephalopod", "Crab", "Crayfish", "Crustacean", 
		"Dolphin", 
		"Eel", 
		"Frog", 
		"Locathah", "Lobster", 
		"Manatee", 
		"Newt", 
		"Octopus", "Orca", 
		"Porpoise", 
		"Ray", 
		"Seahorse", "Seal", "Shark", "Squid", 
		"Whale", "Walrus",],
	"Insectoid Subspecies": [ 
		"Arachnid", 
		"Bumblebee", "Butterfly", 
		"Caterpillar", 
		"Honeybee", 
		"Mantid", "Moth", 
		"Salamander", "Scorpion", "Snail", 
		"Thri-kreen", 
		"Wasp",],
	"Fairy Subspecies": [ 
		"Bugbear", 
		"Erina", 
		"Fairy", "Firbolg", 
		"Pixie", 
		"Satyr",	],
	"Taur Subspecies": [ 
		"Centaur",],
	"Construct Subspecies": [ 
		"Autognome", 
		"Geppettin", "Golem", "Gargoyle", 
		"Warforged", "Wechselkind",],
	"Amorphous Subspecies": [ 
		"Plasmoid", 
		"Changeling",],
	"Undead Subspecies": [ 
		"Darakhul", "Disembodied", 
		"Geleton", 
		"Kalashtar", 
		"Shade", ],
	"Draconic Subspecies": [ 
		"Dragonborn", 
		"Eastern Dragon", 
		"Hydra", 
		"Satarre", "Serpent Dragon", 
		"Western Dragon", "Wyvern", "Water Dragon", ],
	"Elemental Subspecies": [ 
		"Air Genasi", 
		"Earth Genasi", 
		"Fire Genasi", 
		"Water Genasi",],
	"Mythological Subspecies": [ 
		"Angel", 
		"Cerberus", "Cockatrice", "Chupacabra", "Chimera", 
		"Daemon", 
		"Displacer Beast", 
		"Gryphon", 
		"Harpy", "Hellhound", "Hippogriff", 
		"Imp", "Incubus", 
		"Jackalope", 
		"Kitsune", "Krin", 
		"Lamia", 
		"Manticore", 
		"Nephilim", "Naga", 
		"Pegasus", "Phoenix", "Peryton", 
		"Sasquatch", "Sphinx", "Succubus", 
		"Unicorn", 
		"Winged Unicorn",],
}

var active_lists = []

var final_character = {}

var current_list_index = 0

var rolled_options = []

func _ready():
	start_generator()

func start_generator():
	active_lists = ["Gender Expression", "Species", ]
	current_list_index = 0
	show_next_list()

func show_next_list():
	
	for child in buttonContainer.get_children():
		child.queue_free()
	
	if current_list_index >= active_lists.size():
		show_final_character()
		return
	
	titleContainer.text = active_lists[current_list_index]
	
	var list_name = active_lists[current_list_index]
	var options = lists[list_name]
	
	if options.size() <= 6:
		rolled_options = pick_random_options(options, 4)
	elif options.size() <= 8:
		rolled_options = pick_random_options(options, 6)
	elif options.size() <= 10:
		rolled_options = pick_random_options(options, 8)
	elif options.size() <= 12:
		rolled_options = pick_random_options(options, 10)
	elif options.size() <= 20:
		rolled_options = pick_random_options(options, 12)
	else:
		rolled_options = pick_random_options(options, 20)
	
	display_options_to_user(list_name, rolled_options)

func user_picked(option):
	var list_name = active_lists[current_list_index]
	final_character[list_name] = rolled_options[option]
	current_list_index += 1
	print(rolled_options[option])
	if list_name == "Species":
		if rolled_options[option] == "Humanoid":
			active_lists.append("Humanoid Subspecies")
		elif rolled_options[option] == "Furry":
			active_lists.append("Furry Subspecies")
		elif rolled_options[option] == "Scaly":
			active_lists.append("Scaly Subspecies")
		elif rolled_options[option] == "Avian":
			active_lists.append("Avian Subspecies")
		elif rolled_options[option] == "Ungulate":
			active_lists.append("Ungulate Subspecies")
		elif rolled_options[option] == "Aquatic":
			active_lists.append("Aquatic Subspecies")
		elif rolled_options[option] == "Insectoid":
			active_lists.append("Insectoid Subspecies")
		elif rolled_options[option] == "Fairy":
			active_lists.append("Fairy Subspecies")
		elif rolled_options[option] == "Taur":
			active_lists.append("Taur Subspecies")
		elif rolled_options[option] == "Construct":
			active_lists.append("Construct Subspecies")
		elif rolled_options[option] == "Amorphous":
			active_lists.append("Amorphous Subspecies")
		elif rolled_options[option] == "Undead":
			active_lists.append("Undead Subspecies")
		elif rolled_options[option] == "Draconic":
			active_lists.append("Draconic Subspecies")
		elif rolled_options[option] == "Elemental":
			active_lists.append("Elemental Subspecies")
		else: 
			active_lists.append("Mythological Subspecies")
	show_next_list()

func display_options_to_user(list_name: String, rolled_options: Array):
	print("Choose from list:", list_name)
	
	for i in range(rolled_options.size()):
		var option = rolled_options[i]
		
		var button = Button.new()
		button.custom_minimum_size = Vector2(1920/3, 1080/20)
		buttonContainer.add_child(button)

		var hbox = HBoxContainer.new()
		hbox.anchor_right = 1
		hbox.anchor_bottom = 1
		hbox.grow_horizontal = Control.GROW_DIRECTION_END
		button.add_child(hbox)

		var number_label = RichTextLabel.new()
		number_label.text = "(" + str(i + 1) + ")"
		number_label.fit_content = true
		number_label.scroll_active = false
		number_label.autowrap_mode = 0
		number_label.add_theme_font_size_override("font_size", 24)
		number_label.add_theme_color_override("default_color", Color.WHITE)
		number_label.custom_minimum_size = Vector2(100, 0)
		number_label.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
		number_label.vertical_alignment = VERTICAL_ALIGNMENT_CENTER
		hbox.add_child(number_label)

		var option_label = RichTextLabel.new()
		option_label.text = option
		option_label.fit_content = true
		option_label.scroll_active = false
		option_label.autowrap_mode = 0
		option_label.add_theme_font_size_override("font_size", 24)
		option_label.add_theme_color_override("default_color", Color.WHITE)
		option_label.horizontal_alignment = HORIZONTAL_ALIGNMENT_LEFT
		option_label.vertical_alignment = VERTICAL_ALIGNMENT_CENTER
		hbox.add_child(option_label)
		
		button.pressed.connect(user_picked.bind(i))

func pick_random_options(options, amount):
	var options_copy = options.duplicate()
	options_copy.shuffle()
	return options_copy.slice(0, amount)

func show_final_character():
	print("--- Final Character ---")
	for key in final_character.keys():
		print(str(key) + ": " + str(final_character[key]))
	get_tree().change_scene_to_file("res://scenes/finalcharacter.tscn")
