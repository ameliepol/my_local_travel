require "open-uri"
puts "Cleaning DB..."

SelectedActivity.destroy_all
Day.destroy_all
Trip.destroy_all
User.destroy_all
Activity.destroy_all
puts "DB destroyed!"


puts "Creating users ...."

user1 = User.create!(email: "murielle@gmail.com", password: "password_user1", nickname: "Mumu", photo_url: "", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
user2 = User.create!(email: "richard@gmail.com", password: "password_user2", nickname: "Riton", photo_url: "", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
user3 = User.create!(email: "kevin@gmail.com", password: "password_user3", nickname: "Kev", photo_url: "", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
user4 = User.create!(email: "carla@gmail.com", password: "password_user4", nickname: "Carlita", photo_url: "", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
user5 = User.create!(email: "diego@gmail.com", password: "password_user5", nickname: "Don Diego", photo_url: "", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
user6 = User.create!(email: "germaine@gmail.com", password: "password_user6", nickname: "Mamie Germaine", photo_url: "", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")

puts "Users created!"


puts "Creating activities..."

activity_1 = Activity.create!(name: "Camping des pins", fee: 49, localisation: "Fourton", mood: 3, category: 1, photo_url: "", budget: 2, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
activity_2 = Activity.create!(name: "Chalet de la rivière", fee: 79, localisation: "Néac", mood: 3, category: 1, photo_url: "", budget: 2, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
activity_3 = Activity.create!(name: "Cabane Spa Dolce Vita", fee: 80, localisation: "Cestas", mood: 3, category: 1, photo_url: "", budget: 2, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
activity_4 = Activity.create!(name: "Smart Green Corner", fee: 30, localisation: "Saint-Médard-en-Jalles", mood: 3, category: 2, photo_url: "", budget: 2, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
activity_5 = Activity.create!(name: "Domaine de la détente", fee: 30, localisation: "Lanton", mood: 3, category: 2, photo_url: "", budget: 2, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
activity_6 = Activity.create!(name: "Relais de Margaux", fee: 50, localisation: "Margaux", mood: 3, category: 2, photo_url: "", budget: 2, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
activity_7 = Activity.create!(name: "Hatha Yoga", fee: 25, localisation: "Canéjan", mood: 3, category: 3, photo_url: "", budget: 2, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
activity_8 = Activity.create!(name: "Pêche", fee: 25, localisation: "Hourtin", mood: 3, category: 3, photo_url: "", budget: 2, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
activity_9 = Activity.create!(name: "Spa éc(h)o", fee: 45, localisation: "Talence", mood: 3, category: 3, photo_url: "", budget: 2, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
activity_10 = Activity.create!(name: "Marché noctune", fee: 19, localisation: "Marcenais", mood: 3, category: 4, photo_url: "", budget: 2, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
activity_11 = Activity.create!(name: "Guinguette du phare", fee: 25, localisation: "Lestiac-sur-Garonne", mood: 3, category: 4, photo_url: "", budget: 2, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
activity_12 = Activity.create!(name: "Croisière nocturne", fee: 25, localisation: "Ile de Patiras", mood: 3, category: 4, photo_url: "", budget: 2, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
activity_13 = Activity.create!(name: "Cueillette de fleurs", fee: 25, localisation: "Saucats", mood: 3, category: 3, photo_url: "", budget: 2, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
activity_14 = Activity.create!(name: "Soirée sur la Dune", fee: 50, localisation: "Dune du pyla", mood: 3, category: 1, photo_url: "", budget: 2, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
activity_15 = Activity.create!(name: "Le cabanon", fee: 25, localisation: "Gujan-Mestras", mood: 3, category: 2, photo_url: "", budget: 2, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
activity_16 = Activity.create!(name: "Enjoy the waves", fee: 20, localisation: "La Teste de Buch", mood: 3, category: 3, photo_url: "", budget: 2, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
activity_17 = Activity.create!(name: "Peche sous les etoiles", fee: 25, localisation: "Pyla-sur-mer", mood: 3, category: 4, photo_url: "", budget: 2, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
activity_18 = Activity.create!(name: "Visite du Domaine", fee: 27,  localisation: "Targon", mood: 3, category: 3, photo_url: "", budget: 2, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
activity_19 = Activity.create!(name: "Balade à cheval au coucher du soleil", fee: 40, localisation: "Carcans", mood: 3, category: 4, photo_url: "", budget: 2, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
activity_20 = Activity.create!(name: "Atelier confection et déjeuner végétarien", fee: 30, localisation: "Hostens", mood: 3, category: 2, photo_url: "", budget: 2, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
activity_21 = Activity.create!(name: "Chambre double avec vue sur la citadelle", fee: 85, localisation: "Cissac-Médoc", mood: 3, category: 1, photo_url: "", budget: 2, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
activity_22 = Activity.create!(name: "Atelier Patisserie Gourmand & Croquant", fee: 25, localisation: "Sauternes", mood: 3, category: 3, photo_url: "",  budget: 2, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
activity_23 = Activity.create!(name: "Dégustation de vins nature", fee: 25, localisation: "Ambès", mood: 3, category: 2, photo_url: "", budget: 2, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
activity_24 = Activity.create!(name: "Visite gourmande du marché des producteurs", fee: 20, localisation: "Lacanau-de-Mios",  mood: 3, category: 2, photo_url: "", budget: 2, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
activity_25 = Activity.create!(name: "Pique-Nique Gourmand", fee: 30, localisation: "Saumos", mood: 3, category: 2, photo_url: "", budget: 2, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
activity_26 = Activity.create!(name: "Cabane cocoon au bord de l’eau", fee: 70, localisation: "Valeyrac", mood: 3, category: 1, photo_url: "",  budget: 2, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
activity_27 = Activity.create!(name: "Initiation à la biodynamie et dégustation", fee: 30, localisation: "Saint-Emilion",  mood: 3, category: 3, photo_url: "",  budget: 2, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
activity_28 = Activity.create!(name: "Visite de la Ferme", fee: 25, localisation: "Queyrac",  mood: 3, category: 3, photo_url: "",  budget: 2, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
activity_29 = Activity.create!(name: "Sur les Anciens Chemins de Fer", fee: 15, localisation: "Salaunes", mood: 3, category: 3, photo_url: "",  budget: 1, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
activity_30 = Activity.create!(name: "Initiation à la Pêche à la mouche", fee: 20, localisation: "Langoiran", mood: 3, category: 3, photo_url: "", budget: 2, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
activity_31 = Activity.create!(name: "Camping du Lac", fee: 20, localisation: "Hourtin", mood: 3, category: 1, photo_url: "",  budget: 2, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
activity_32 = Activity.create!(name: "Balade en canoë et observation des oiseaux", fee: 20,  localisation: "Cadillac", mood: 3, category: 3, photo_url: "",  budget: 1, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
# activity_33 = Activity.create!(name: "Maison tout confort et calme", fee: 60, localisation: "Podensac", mood: 3, category: 1, photo_url: "", budget: 2, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
# activity_34 = Activity.create!(name: "Maison du bonheur", fee: 79, localisation: "Clérac", mood: 3, category: 1, photo_url: "", budget: 2, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
# activity_35 = Activity.create!(name: "Descente de la Leyre en canoë", fee: 15, localisation: "Mios", mood: 3, category: 3, photo_url: "", budget: 2, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
# activity_36 = Activity.create!(name: "Geocaching", fee: 20, localisation: "Montendre", mood: 3, category: 3, photo_url: "", budget: 1, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
# activity_37 = Activity.create!(name: "Paleosite", fee: 21, localisation: "Saint-Savin", mood: 3, category: 3, photo_url: "", budget: 2, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
# activity_38 = Activity.create!(name: "Parc aventure", fee: 25, localisation: "Cavignac", mood: 3, category: 3, photo_url: "", budget: 2, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
# activity_39 = Activity.create!(name: "Zoodysée", fee: 25, localisation: "Laruscade",  mood: 3, category: 3, photo_url: "", budget: 2, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
# activity_40 = Activity.create!(name: "Location de rosalies", fee: 25, localisation: "Hourtin", mood: 3, category: 3, photo_url: "", budget: 2, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
# activity_41 = Activity.create!(name: "Chez Oliv", fee: 19, localisation: "Libourne", mood: 3, category: 2, photo_url: "", budget: 2, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
# activity_42 = Activity.create!(name: "O petit Gavroche", fee: 19, localisation: "Bedenac", mood: 3, category: 2, photo_url: "", budget: 2, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
# activity_43 = Activity.create!(name: "La Grange aux oies", fee: 17, localisation: "Castillon-la-Bataille",  mood: 3, category: 2, photo_url: "", budget: 2, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
# activity_44 = Activity.create!(name: "Graines et Garenne", fee: 18, localisation: "Coutras",  mood: 3, category: 2, photo_url: "", budget: 2, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
# activity_45 = Activity.create!(name: "L'Estaminet", fee: 19, localisation: "Pomerol", mood: 3, category: 2, photo_url: "", budget: 2, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
# activity_46 = Activity.create!(name: "Chez Loulou", fee: 20, localisation: "La Brède", mood: 3, category: 2, photo_url: "", budget: 2, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
# activity_47 = Activity.create!(name: "La Belle Epoque", fee: 21, localisation: "Saucats", mood: 3, category: 2, photo_url: "", budget: 2, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
# activity_48 = Activity.create!(name: "Au jardin", fee: 22, localisation: "Saint-Morillon", mood: 3, category: 2, photo_url: "", budget: 2, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
# activity_49 = Activity.create!(name: "Le Chergui", fee: 23, localisation: "Cabanac-et-Villagrains", mood: 3, category: 2, photo_url: "",  budget: 2, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
# activity_50 = Activity.create!(name: "Le Vieux moulin", fee: 24, localisation: "Sauternes", mood: 3, category: 2, photo_url: "", budget: 2, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
# activity_51 = Activity.create!(name: "Chez Oncle Phil", fee: 25, localisation: "Le Barp", mood: 3, category: 2, photo_url: "", budget: 2, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
# activity_52 = Activity.create!(name: "Café Saigon", fee: 26, localisation: "Andernos-les-Bains", mood: 3, category: 2, photo_url: "", budget: 2, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
# activity_53 = Activity.create!(name: "Les perles à Pimpin", fee: 27, localisation: "Le Barp", mood: 3, category: 2, photo_url: "", budget: 2, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
# activity_54 = Activity.create!(name: "La Mona", fee: 28, localisation: "Léognan", mood: 3, category: 2, photo_url: "", budget: 2, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
# activity_55 = Activity.create!(name: "La Taupinère", fee: 29, localisation: "Martillac", mood: 3, category: 2, photo_url: "", budget: 2, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
# activity_56 = Activity.create!(name: "Ona", fee: 30, localisation: "Martillac", mood: 3, category: 2, photo_url: "", budget: 2, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
# activity_57 = Activity.create!(name: "Aroma", fee: 31, localisation: "Lanton", mood: 3, category: 2, photo_url: "", budget: 2, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
# activity_58 = Activity.create!(name: "Le Cl3m", fee: 32, localisation: "Audenge", mood: 3, category: 2, photo_url: "", budget: 2, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
# activity_59 = Activity.create!(name: "Banana", fee: 33, localisation: "Saint-Jean-d'Illac", mood: 3, category: 2, photo_url: "", budget: 2, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
# activity_60 = Activity.create!(name: "Le Pitey", fee: 34, localisation: "Martignas-sur-Jalle", mood: 3, category: 2, photo_url: "", budget: 2, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
# activity_61 = Activity.create!(name: "Parc de la Coccinnelle", fee: 25, localisation: "Gujan-Mestras", mood: 3, category: 3, photo_url: "", budget: 2, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
# activity_62 = Activity.create!(name: "Ferme exotique", fee: 25, localisation: "Cadaujac", mood: 3, category: 3, photo_url: "", budget: 2, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
# activity_63 = Activity.create!(name: "Parc de l'aventure", fee: 25, localisation: "Salaunes", mood: 3, category: 3, photo_url: "", budget: 2, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
# activity_64 = Activity.create!(name: "Animalia Parc", fee: 25, localisation: "Naujac-sur-Mer", mood: 3, category: 3, photo_url: "", budget: 2, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
# activity_65 = Activity.create!(name: "Stage de cirque", fee: 25, localisation: "Lansac", mood: 3, category: 3, photo_url: "", budget: 2, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
# activity_66 = Activity.create!(name: "Sorties nature avec la ligue pour la protection des oiseaux", fee: 25, localisation: "Audenge", mood: 3, category: 3, photo_url: "", budget: 2, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
# activity_67 = Activity.create!(name: "Course à obstacles des activitys", fee: 25, localisation: "Marcheprime", mood: 3, category: 3, photo_url: "", budget: 2, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
# activity_68 = Activity.create!(name: "Ferme pédagogique", fee: 25, localisation: "Castelnau-de-Médoc", mood: 3, category: 3, photo_url: "", budget: 2, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
# activity_69 = Activity.create!(name: "Cours de danse indienne", fee: 25, localisation: "Lège-Cap-Ferret", mood: 3, category: 3, photo_url: "", budget: 2, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
# activity_70 = Activity.create!(name: "Balade avec chiens de traîneau", fee: 25, localisation: "Budos", mood: 3, category: 3, photo_url: "", budget: 2, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
# activity_71 = Activity.create!(name: "Terres d'Oiseaux", fee: 25, localisation: "Braud-et-Saint-Louis", mood: 3, category: 3, photo_url: "", budget: 2, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
# activity_72 = Activity.create!(name: "Planète Céramique", fee: 25, localisation: "Blagon", mood: 3, category: 3, photo_url: "", budget: 2, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
# activity_73 = Activity.create!(name: "La Forêt de Robin", fee: 25, localisation: "Listrac-Médoc", mood: 3, category: 3, photo_url: "", budget: 2, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
# activity_74 = Activity.create!(name: "Crazy Fun Parc", fee: 25, localisation: "Avensan", mood: 3, category: 3, photo_url: "", budget: 2, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
# activity_75 = Activity.create!(name: "Location terrain de tennis", fee: 25, localisation: "Lanton", mood: 3, category: 3, photo_url: "", budget: 2, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
# activity_76 = Activity.create!(name: "Ferme Saint-Henri", fee: 25, localisation: "Gujan-Mestras", mood: 3, category: 3, photo_url: "", budget: 2, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
# activity_77 = Activity.create!(name: "Domaine d'Écoline : ferme et cueillette en activity", fee: 25, localisation: "Sadirac", mood: 3, category: 3, photo_url: "", budget: 2, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
# activity_78 = Activity.create!(name: "Réserve Ornithologique du Teich", fee: 25, localisation: "Le Teich", mood: 3, category: 3, photo_url: "", budget: 2, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
# activity_79 = Activity.create!(name: "Au paradis du papillon", fee: 25, localisation: "Biganos", mood: 3, category: 3, photo_url: "", budget: 2, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
# activity_80 = Activity.create!(name: "Écosite du Bourgailh", fee: 25, localisation: "Pessac", mood: 3, category: 3, photo_url: "", budget: 2, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
# activity_81 = Activity.create!(name: "Camping Val de l'Eyre", fee: 49, localisation: "Curchade", mood: 3, category: 1, photo_url: "", budget: 2, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
# activity_82 = Activity.create!(name: "Camping Les Peupliers", fee: 49, localisation: "Naujac-sur-Mer", mood: 3, category: 1, photo_url: "", budget: 2, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
# activity_83 = Activity.create!(name: "Domaine Résidentiel de Plein Air Medoc Plage", fee: 49, localisation: "Vendays Montalivet", mood: 3, category: 1, photo_url: "", budget: 2, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
# activity_84 = Activity.create!(name: "Les Ecogîtes Floréale", fee: 49, localisation: "Audenge", mood: 3, category: 1, photo_url: "", budget: 2, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
# activity_85 = Activity.create!(name: "Camping Municipal les Gabarreys", fee: 49, localisation: "Pauillac", mood: 3, category: 1, photo_url: "", budget: 2, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
# activity_86 = Activity.create!(name: "Camping Le Paradis", fee: 49, localisation: "Saint-Laurent-Médoc", mood: 3, category: 1, photo_url: "", budget: 2, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
# activity_87 = Activity.create!(name: "Gîte La Maison dans les Vignes", fee: 49, localisation: "Riocaud", mood: 3, category: 1, photo_url: "", budget: 2, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
# activity_88 = Activity.create!(name: "Camping Village Panorama du Pyla", fee: 49, localisation: "Pyla-sur-mer", mood: 3, category: 1, photo_url: "", budget: 2, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
# activity_89 = Activity.create!(name: "Chambres d'hôtes les Cygnes", fee: 49, localisation: "Gaillan-en-Médoc", mood: 3, category: 1, photo_url: "", budget: 2, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
# activity_90 = Activity.create!(name: "Chambres d'hôtes Les Prés Verts", fee: 49, localisation: "Civrac-en-Médoc", mood: 3, category: 1, photo_url: "", budget: 2, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
# activity_91 = Activity.create!(name: "Les Glycines", fee: 49, localisation: "Saint-Sève", mood: 3, category: 1, photo_url: "", budget: 2, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
# activity_92 = Activity.create!(name: "La Cabane du château de Courtebotte", fee: 49, localisation: "Saint-Jean-de-Blaignac", mood: 3, category: 1, photo_url: "", budget: 2, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
# activity_93 = Activity.create!(name: "Gîte de Naulet", fee: 49, localisation: "Mourens", mood: 3, category: 1, photo_url: "", budget: 2, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
# activity_94 = Activity.create!(name: "Airotel Camping de la Côte d'Argent", fee: 49, localisation: "Hourtin", mood: 3, category: 1, photo_url: "", budget: 2, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
# activity_95 = Activity.create!(name: "Domaine Ecotelia", fee: 49, localisation: "Le Nizan", mood: 3, category: 1, photo_url: "", budget: 2, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")

Trip.create!(start_date: Date.today, end_date: Date.today, user: User.first, address: "Bordeaux", radius: 10, mood: 3, budget: 2)

file1 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1598992455/actv1_1_wptrsq.jpg')
file2 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1598992450/actv1_2_ateokk.jpg')
file3 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1598992444/actv1_3_duax9y.jpg')
activity_1.photos.attach([
  {io: file1, filename: 'file1.jpg', content_type: 'image/png'},
  {io: file2, filename: 'file2.jpg', content_type: 'image/png'},
  {io: file3, filename: 'file3.jpg', content_type: 'image/png'}
])
activity_1.save

file4 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1598992676/actv2_1_xw0d79.jpg')
file5 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1598992677/actv2_3_rzvuqt.jpg')
file6 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1598992677/actv2_2_ridh7v.jpg')
activity_2.photos.attach([
  {io: file4, filename: 'file4.jpg', content_type: 'image/png'},
  {io: file5, filename: 'file5.jpg', content_type: 'image/png'},
  {io: file6, filename: 'file6.jpg', content_type: 'image/png'}
])
activity_2.save

file7 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1598993286/actv3_3_tqinoc.jpg')
file8 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1598993286/actv3_2_v6prcj.jpg')
file9 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1598993286/actv3_1_gy4nvz.jpg')
activity_3.photos.attach([
  {io: file7, filename: 'file7.jpg', content_type: 'image/png'},
  {io: file8, filename: 'file8.jpg', content_type: 'image/png'},
  {io: file9, filename: 'file9.jpg', content_type: 'image/png'}
])
activity_3.save


file10 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1598993286/actv4_1_d3qgko.jpg')
file11 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1598993286/actv4_2_hf734p.jpg')
file12 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1598993286/actv4_3_tk6ma7.jpg')
activity_4.photos.attach([
  {io: file10, filename: 'file10.jpg', content_type: 'image/png'},
  {io: file11, filename: 'file11.jpg', content_type: 'image/png'},
  {io: file12, filename: 'file12.jpg', content_type: 'image/png'}
])
activity_4.save

file13 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1598994524/actv5_1_r7ckia.jpg')
file14 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1598994524/actv5_2_xqz6ed.jpg')
file15 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1598994524/actv5_3_f6kaib.jpg')
activity_5.photos.attach([
  {io: file13, filename: 'file13.jpg', content_type: 'image/png'},
  {io: file14, filename: 'file14.jpg', content_type: 'image/png'},
  {io: file15, filename: 'file15.jpg', content_type: 'image/png'}
])
activity_5.save


fil16 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1598994524/actv6_1_dzqd0d.jpg')
file17 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1598994524/actv6_2_c4mub7.jpg')
file18 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1598994525/actv6_3_q7r5r4.jpg')
activity_6.photos.attach([
  {io: file16, filename: 'file16.jpg', content_type: 'image/png'},
  {io: file17, filename: 'file17.jpg', content_type: 'image/png'},
  {io: file18, filename: 'file18.jpg', content_type: 'image/png'}
])
activity_6.save

file19 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1598994524/actv7_3_my7qum.jpg')
file20 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1598994524/actv7_2_rmgfmw.jpg')
file21 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1598994525/actv7_1_srhsks.jpg')
activity_7.photos.attach([
  {io: file19, filename: 'file19.jpg', content_type: 'image/png'},
  {io: file20, filename: 'file20.jpg', content_type: 'image/png'},
  {io: file21, filename: 'file21.jpg', content_type: 'image/png'}
])
activity_7.save


file22 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1598994525/actv8_3_rpxods.jpg')
file23 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1598994524/actv8_1_jvecto.jpg')
file24 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1598994524/actv8_2_djjq9d.jpg')
activity_8.photos.attach([
  {io: file22, filename: 'file22.jpg', content_type: 'image/png'},
  {io: file23, filename: 'file23.jpg', content_type: 'image/png'},
  {io: file24, filename: 'file24.jpg', content_type: 'image/png'}
])
activity_8.save

file25 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1598997112/actv9_1_ukkurh.jpg')
file26 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1598997110/actv9_2_ccizim.jpg')
file27 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1598997109/actv9_3_xuzlhz.jpg')
activity_9.photos.attach([
  {io: file25, filename: 'file25.jpg', content_type: 'image/png'},
  {io: file26, filename: 'file26.jpg', content_type: 'image/png'},
  {io: file27, filename: 'file27.jpg', content_type: 'image/png'}
])
activity_9.save


file28 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1598997110/actv10_2_q275xd.jpg')
file29 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1598997111/actv10_1_oor5dg.jpg')
file30 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1598997110/actv10_3_aqml1s.jpg')
activity_10.photos.attach([
  {io: file28, filename: 'file28.jpg', content_type: 'image/png'},
  {io: file29, filename: 'file29.jpg', content_type: 'image/png'},
  {io: file30, filename: 'file30.jpg', content_type: 'image/png'}
])
activity_10.save

file31 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1598997109/actv11_3_spvfsw.jpg')
file32 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1598997109/actv11_2_vuk7kq.jpg')
file33 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1598818685/guinguette_cdhmpv.jpg')
activity_11.photos.attach([
  {io: file31, filename: 'file31.jpg', content_type: 'image/png'},
  {io: file32, filename: 'file32.jpg', content_type: 'image/png'},
  {io: file33, filename: 'file33.jpg', content_type: 'image/png'}
])
activity_11.save


file34 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1598997111/actv12_1_uhyxhi.jpg')
file35 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1598997110/actv12_2_g3qxoe.jpg')
file36 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1598997111/actv12_3_jovj25.jpg')
activity_12.photos.attach([
  {io: file34, filename: 'file34.jpg', content_type: 'image/png'},
  {io: file35, filename: 'file35.jpg', content_type: 'image/png'},
  {io: file36, filename: 'file36.jpg', content_type: 'image/png'}
])
activity_12.save

file37 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1598818685/cueillette_g51zmj.jpg')
file38 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1598997110/actv13_1_ynpdya.jpg')
file39 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1598997109/actv13_2_k9szgy.jpg')
activity_13.photos.attach([
  {io: file37, filename: 'file37.jpg', content_type: 'image/png'},
  {io: file38, filename: 'file38.jpg', content_type: 'image/png'},
  {io: file39, filename: 'file39.jpg', content_type: 'image/png'}
])
activity_13.save


file40 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1598997109/actv14_1_n1tck3.jpg')
file41 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1598997109/actv14_2_vvzwbe.jpg')
file42 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1598997112/actv14_3_q68y9m.jpg')
activity_14.photos.attach([
  {io: file40, filename: 'file40.jpg', content_type: 'image/png'},
  {io: file41, filename: 'file41.jpg', content_type: 'image/png'},
  {io: file42, filename: 'file42.jpg', content_type: 'image/png'}
])
activity_14.save

file43 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1598997111/actv15_1_y8ji2n.jpg')
file44 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1598997110/actv15_2_jpcarb.jpg')
file45 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1598997110/actv15_3_dnt8wn.jpg')
activity_15.photos.attach([
  {io: file43, filename: 'file43.jpg', content_type: 'image/png'},
  {io: file44, filename: 'file44.jpg', content_type: 'image/png'},
  {io: file45, filename: 'file45.jpg', content_type: 'image/png'}
])
activity_15.save


file46 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1598997109/actv16_1_ruvy68.jpg')
file47 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1598997110/actv16_3_yszcs0.jpg')
file48 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1598997110/actv16_2_tz3hld.jpg')
activity_16.photos.attach([
  {io: file46, filename: 'file46.jpg', content_type: 'image/png'},
  {io: file47, filename: 'file47.jpg', content_type: 'image/png'},
  {io: file48, filename: 'file48.jpg', content_type: 'image/png'}
])
activity_16.save

file49 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1599053775/actv17_1_shqcbw.jpg')
file50 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1599053775/actv17_2_nyi93i.jpg')
file51 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1599053775/actv17_3_ikjrs0.jpg')
activity_17.photos.attach([
  {io: file49, filename: 'file49.jpg', content_type: 'image/png'},
  {io: file50, filename: 'file50.jpg', content_type: 'image/png'},
  {io: file51, filename: 'file51.jpg', content_type: 'image/png'}
])
activity_17.save


file52 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1599053775/actv18_1_zxyro8.jpg')
file53 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1599053774/actv18_2_awojwm.jpg')
file54 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1599053774/actv18_3_mbsuar.jpg')
activity_18.photos.attach([
  {io: file52, filename: 'file52.jpg', content_type: 'image/png'},
  {io: file53, filename: 'file53.jpg', content_type: 'image/png'},
  {io: file54, filename: 'file54.jpg', content_type: 'image/png'}
])
activity_18.save

file55 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1599053775/actv19_3_upkuzm.jpg')
file56 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1599053775/actv19_2_tsjfcb.jpg')
file57 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1599053776/actv19_1_pydlv0.jpg')
activity_19.photos.attach([
  {io: file55, filename: 'file55.jpg', content_type: 'image/png'},
  {io: file56, filename: 'file56.jpg', content_type: 'image/png'},
  {io: file57, filename: 'file57.jpg', content_type: 'image/png'}
])
activity_19.save


file58 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1599053775/actv20_1_clgpyv.jpg')
file59 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1599053774/actv20_2_wyw7qf.jpg')
file60 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1599053775/actv20_3_vyuyul.jpg')
activity_20.photos.attach([
  {io: file58, filename: 'file58.jpg', content_type: 'image/png'},
  {io: file59, filename: 'file59.jpg', content_type: 'image/png'},
  {io: file60, filename: 'file60.jpg', content_type: 'image/png'}
])
activity_20.save

file61 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1599053776/actv21_1_by3h9f.jpg')
file62 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1599053775/actv21_2_uorcnk.jpg')
file63 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1599053775/actv21_3_uznfep.jpg')
activity_21.photos.attach([
  {io: file61, filename: 'file61.jpg', content_type: 'image/png'},
  {io: file62, filename: 'file62.jpg', content_type: 'image/png'},
  {io: file63, filename: 'file63.jpg', content_type: 'image/png'}
])
activity_21.save


file64 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1599053775/actv22_1_njjtmu.jpg')
file65 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1599053774/actv22_2_ojicba.jpg')
file66 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1599053774/actv22_3_a7gkgv.jpg')
activity_22.photos.attach([
  {io: file64, filename: 'file64.jpg', content_type: 'image/png'},
  {io: file65, filename: 'file65.jpg', content_type: 'image/png'},
  {io: file66, filename: 'file66.jpg', content_type: 'image/png'}
])
activity_22.save

file67 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1599053784/actv23_1_dyvgzv.jpg')
file68 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1599053776/actv23_2_jr7vza.jpg')
file69 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1599053775/actv23_3_htqj38.jpg')
activity_23.photos.attach([
  {io: file67, filename: 'file67.jpg', content_type: 'image/png'},
  {io: file68, filename: 'file68.jpg', content_type: 'image/png'},
  {io: file69, filename: 'file69.jpg', content_type: 'image/png'}
])
activity_23.save


file70 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1598994525/actv8_3_rpxods.jpg')
file71 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1598994524/actv8_1_jvecto.jpg')
file72 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1598994524/actv8_2_djjq9d.jpg')
activity_24.photos.attach([
  {io: file70, filename: 'file70.jpg', content_type: 'image/png'},
  {io: file71, filename: 'file71.jpg', content_type: 'image/png'},
  {io: file72, filename: 'file72.jpg', content_type: 'image/png'}
])
activity_24.save

file73 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1598997112/actv9_1_ukkurh.jpg')
file74 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1598997110/actv9_2_ccizim.jpg')
file75 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1598997109/actv9_3_xuzlhz.jpg')
activity_25.photos.attach([
  {io: file73, filename: 'file73.jpg', content_type: 'image/png'},
  {io: file74, filename: 'file74.jpg', content_type: 'image/png'},
  {io: file75, filename: 'file75.jpg', content_type: 'image/png'}
])
activity_25.save


file76 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1598997110/actv10_2_q275xd.jpg')
file77 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1598997111/actv10_1_oor5dg.jpg')
file78 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1598997110/actv10_3_aqml1s.jpg')
activity_26.photos.attach([
  {io: file76, filename: 'file76.jpg', content_type: 'image/png'},
  {io: file77, filename: 'file77.jpg', content_type: 'image/png'},
  {io: file78, filename: 'file78.jpg', content_type: 'image/png'}
])
activity_26.save

file79 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1598997109/actv11_3_spvfsw.jpg')
file80 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1598997109/actv11_2_vuk7kq.jpg')
file81 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1598818685/guinguette_cdhmpv.jpg')
activity_27.photos.attach([
  {io: file79, filename: 'file79.jpg', content_type: 'image/png'},
  {io: file80, filename: 'file80.jpg', content_type: 'image/png'},
  {io: file81, filename: 'file81.jpg', content_type: 'image/png'}
])
activity_27.save


file82 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1598997111/actv12_1_uhyxhi.jpg')
file83 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1598997110/actv12_2_g3qxoe.jpg')
file84 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1598997111/actv12_3_jovj25.jpg')
activity_28.photos.attach([
  {io: file82, filename: 'file82.jpg', content_type: 'image/png'},
  {io: file83, filename: 'file83.jpg', content_type: 'image/png'},
  {io: file84, filename: 'file84.jpg', content_type: 'image/png'}
])
activity_28.save

file85 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1598818685/cueillette_g51zmj.jpg')
file86 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1598997110/actv13_1_ynpdya.jpg')
file87 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1598997109/actv13_2_k9szgy.jpg')
activity_29.photos.attach([
  {io: file85, filename: 'file85.jpg', content_type: 'image/png'},
  {io: file86, filename: 'file86.jpg', content_type: 'image/png'},
  {io: file87, filename: 'file87.jpg', content_type: 'image/png'}
])
activity_29.save

file88 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1598997109/actv14_1_n1tck3.jpg')
file89 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1598997109/actv14_2_vvzwbe.jpg')
file90 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1598997112/actv14_3_q68y9m.jpg')
activity_30.photos.attach([
  {io: file88, filename: 'file88.jpg', content_type: 'image/png'},
  {io: file89, filename: 'file89.jpg', content_type: 'image/png'},
  {io: file90, filename: 'file90.jpg', content_type: 'image/png'}
])
activity_30.save

file91 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1598997111/actv15_1_y8ji2n.jpg')
file92 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1598997110/actv15_2_jpcarb.jpg')
file93 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1598997110/actv15_3_dnt8wn.jpg')
activity_31.photos.attach([
  {io: file91, filename: 'file91.jpg', content_type: 'image/png'},
  {io: file92, filename: 'file92.jpg', content_type: 'image/png'},
  {io: file93, filename: 'file93.jpg', content_type: 'image/png'}
])
activity_31.save


file94 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1598997109/actv16_1_ruvy68.jpg')
file95 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1598997110/actv16_3_yszcs0.jpg')
file96 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1598997110/actv16_2_tz3hld.jpg')
activity_32.photos.attach([
  {io: file94, filename: 'file94.jpg', content_type: 'image/png'},
  {io: file95, filename: 'file95.jpg', content_type: 'image/png'},
  {io: file96, filename: 'file96.jpg', content_type: 'image/png'}
])
activity_32.save

puts "Activities created!"
