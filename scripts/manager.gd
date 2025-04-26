extends Node

var lists = {
	"SpeciesCategory": [
		"Humanoid", 
		"Furry", 
		"Scaly", 
		"Avian", 
		"Ungulates", 
		"Aquatic", 
		"Insectoid",
		"Fairy", 
		"Taur", 
		"Construct", 
		"Amorphous", 
		"Undead", 
		"Draconic", 
		"Elemental", 
		"Mythological",
	],
	"HumanoidSubspecies": [ 
		"Cnidarian", "Cyclopian", 
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
		"Yuan-ti", 
	],
	"FurrySubspecies": [ 
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
		"Wallaby", "Weasel", "Wolf", "Wolverine", 
	],
	"ScalySubspecies": [ 
		"Alligator", "Anaconda", 
		"Crocodile", "Caiman", "Chameleon", 
		"Gecko", 
		"Iguana", 
		"Kobold", "Komodo Dragon", 
		"Lizard", 
		"Monitor Lizard", 
		"Snake", "Serpent", 
		"Turtle", "Tortoise", 
	],
	"AvianSubspecies": [ 
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
		"Vulture", 
	],
	"UngulatesSubspecies": [ 
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
		"Zebra", 
	],
	"AquaticSubspecies": [ 
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
		"Whale", "Walrus", 
	],
	"InsectoidSubspecies": [ 
		"Arachnid", 
		"Bumblebee", "Butterfly", 
		"Caterpillar", 
		"Honeybee", 
		"Mantid", "Moth", 
		"Salamander", "Scorpion", "Snail", 
		"Thri-kreen", 
		"Wasp", 
	],
	"FairySubspecies": [ 
		"Bugbear", 
		"Erina", 
		"Fairy", "Firbolg", 
		"Pixie", 
		"Satyr", 
	],
	"TaurSubspecies": [ 
		"Centaur", 
	],
	"ConstructSubspecies": [ 
		"Autognome", 
		"Geppettin", "Golem", "Gargoyle", 
		"Warforged", "Wechselkind", 
	],
	"AmorphousSubspecies": [ 
		"Plasmoid", 
		"Changeling", 
	],
	"UndeadSubspecies": [ 
		"Darakhul", "Disembodied", 
		"Geleton", 
		"Kalashtar", 
		"Shade", 
	],
	"DraconicSubspecies": [ 
		"Dragonborn", 
		"Eastern Dragon", 
		"Hydra", 
		"Satarre", "Serpent Dragon", 
		"Western Dragon", "Wyvern", "Water Dragon", 
	],
	"ElementalSubspecies": [ 
		"Air Genasi", 
		"Earth Genasi", 
		"Fire Genasi", 
		"Water Genasi", 
	],
	"MythologicalSubspecies": [ 
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
		"Winged Unicorn", 
	],
}

var active_lists = []

var final_character = {}

var current_list_index = 0

func start_generator():
	active_lists = lists
	current_list_index = 0
	show_next_list()

func show_next_list():
	if current_list_index >= active_lists.size():
		show_final_character()
		return
	
	var list_name = active_lists[current_list_index]
	var options = lists[list_name]
	
	var rolled_options = pick_random_options(options, 6)
	
	display_options_to_user(list_name, rolled_options)

func user_picked(option):
	var list_name = active_lists[current_list_index]
	final_character[list_name] = option
	current_list_index += 1
	show_next_list()

func pick_random_options(options, amount):
	var options_copy = options.duplicate()
	options_copy.shuffle()
	return options_copy.slice(0, amount)

func show_final_character():
	print(final_character)
