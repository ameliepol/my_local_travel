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
# user2 = User.create!(email: "richard@gmail.com", password: "password_user2", nickname: "Riton", photo_url: "", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
user3 = User.create!(email: "kevin@gmail.com", password: "password_user3", nickname: "Kev", photo_url: "", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
# user4 = User.create!(email: "carla@gmail.com", password: "password_user4", nickname: "Carlita", photo_url: "", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
# user5 = User.create!(email: "diego@gmail.com", password: "password_user5", nickname: "Don Diego", photo_url: "", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
# user6 = User.create!(email: "germaine@gmail.com", password: "password_user6", nickname: "Mamie Germaine", photo_url: "", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")

puts "Users created!"


puts "Creating activities..."

activity_1 = Activity.create!(name: "Camping des pins", fee: 49, localisation: "Fourton", mood: 2, category: 1, photo_url: "", budget: 2, content: "Un lieu confidentiel où bien-être et calme s'unissent pour des moments uniques : Du bois brut pour une communion avec la nature, le corps et l’esprit. Vibrez grâce à l’atmosphère singulière du lieu... Offrez-vous un séjour inoubliable dans un écrin de verdure, près de Bordeaux…")
activity_2 = Activity.create!(name: "Chalet de la rivière", fee: 79, localisation: "Néac", mood: 2, category: 1, photo_url: "", budget: 2, content: "Un lieu confidentiel où bien-être et calme s'unissent pour des moments uniques : Du bois brut pour une communion avec la nature, le corps et l’esprit. Vibrez grâce à l’atmosphère singulière du lieu... Offrez-vous un séjour inoubliable dans un écrin de verdure, près de Bordeaux…")
activity_3 = Activity.create!(name: "Cabane Spa Dolce Vita", fee: 80, localisation: "Cestas", mood: 2, category: 1, photo_url: "", budget: 2, content: "Un lieu confidentiel où bien-être et calme s'unissent pour des moments uniques : Du bois brut pour une communion avec la nature, le corps et l’esprit. Vibrez grâce à l’atmosphère singulière du lieu... Offrez-vous un séjour inoubliable dans un écrin de verdure, près de Bordeaux…")
activity_4 = Activity.create!(name: "Smart Green Corner", fee: 30, localisation: "Saint-Médard-en-Jalles", mood: 2, category: 2, photo_url: "", budget: 2, content: "Un lieu confidentiel où bien-être et calme s'unissent pour des moments uniques : Du bois brut pour une communion avec la nature, le corps et l’esprit. Vibrez grâce à l’atmosphère singulière du lieu... Offrez-vous un séjour inoubliable dans un écrin de verdure, près de Bordeaux…")
activity_5 = Activity.create!(name: "Domaine de la détente", fee: 70, localisation: "Lanton", mood: 2, category: 1, photo_url: "", budget: 2, content: "Un lieu confidentiel où bien-être et calme s'unissent pour des moments uniques : Du bois brut pour une communion avec la nature, le corps et l’esprit. Vibrez grâce à l’atmosphère singulière du lieu... Offrez-vous un séjour inoubliable dans un écrin de verdure, près de Bordeaux…")
activity_6 = Activity.create!(name: "Hatha Yoga", fee: 25, localisation: "Canéjan", mood: 2, category: 3, photo_url: "", budget: 2, content: "Un lieu confidentiel où bien-être et calme s'unissent pour des moments uniques : Du bois brut pour une communion avec la nature, le corps et l’esprit. Vibrez grâce à l’atmosphère singulière du lieu... Offrez-vous un séjour inoubliable dans un écrin de verdure, près de Bordeaux…")
activity_7 = Activity.create!(name: "Spa éc(h)o", fee: 45, localisation: "Talence", mood: 2, category: 3, photo_url: "", budget: 2, content: "Un lieu confidentiel où bien-être et calme s'unissent pour des moments uniques : Du bois brut pour une communion avec la nature, le corps et l’esprit. Vibrez grâce à l’atmosphère singulière du lieu... Offrez-vous un séjour inoubliable dans un écrin de verdure, près de Bordeaux…")
activity_8 = Activity.create!(name: "Marché noctune", fee: 15, localisation: "Marcenais", mood: 2, category: 4, photo_url: "", budget: 2, content: "Un lieu confidentiel où bien-être et calme s'unissent pour des moments uniques : Du bois brut pour une communion avec la nature, le corps et l’esprit. Vibrez grâce à l’atmosphère singulière du lieu... Offrez-vous un séjour inoubliable dans un écrin de verdure, près de Bordeaux…")
activity_9 = Activity.create!(name: "Guinguette du phare", fee: 25, localisation: "Lestiac-sur-Garonne", mood: 2, category: 4, photo_url: "", budget: 2, content: "Un lieu confidentiel où bien-être et calme s'unissent pour des moments uniques : Du bois brut pour une communion avec la nature, le corps et l’esprit. Vibrez grâce à l’atmosphère singulière du lieu... Offrez-vous un séjour inoubliable dans un écrin de verdure, près de Bordeaux…")
activity_10 = Activity.create!(name: "Croisière nocturne", fee: 30, localisation: "Ile de Patiras", mood: 2, category: 4, photo_url: "", budget: 2, content: "Un lieu confidentiel où bien-être et calme s'unissent pour des moments uniques : Du bois brut pour une communion avec la nature, le corps et l’esprit. Vibrez grâce à l’atmosphère singulière du lieu... Offrez-vous un séjour inoubliable dans un écrin de verdure, près de Bordeaux…")
activity_11 = Activity.create!(name: "Cueillette de fleurs", fee: 19, localisation: "Saucats", mood: 2, category: 3, photo_url: "", budget: 2, content: "Un lieu confidentiel où bien-être et calme s'unissent pour des moments uniques : Du bois brut pour une communion avec la nature, le corps et l’esprit. Vibrez grâce à l’atmosphère singulière du lieu... Offrez-vous un séjour inoubliable dans un écrin de verdure, près de Bordeaux…")
activity_12 = Activity.create!(name: "Soirée sur la Dune", fee: 40, localisation: "Dune du pyla", mood: 2, category: 1, photo_url: "", budget: 2, content: "Un lieu confidentiel où bien-être et calme s'unissent pour des moments uniques : Du bois brut pour une communion avec la nature, le corps et l’esprit. Vibrez grâce à l’atmosphère singulière du lieu... Offrez-vous un séjour inoubliable dans un écrin de verdure, près de Bordeaux…")
activity_13 = Activity.create!(name: "Le cabanon", fee: 25, localisation: "Gujan-Mestras", mood: 2, category: 2, photo_url: "", budget: 2, content: "Un lieu confidentiel où bien-être et calme s'unissent pour des moments uniques : Du bois brut pour une communion avec la nature, le corps et l’esprit. Vibrez grâce à l’atmosphère singulière du lieu... Offrez-vous un séjour inoubliable dans un écrin de verdure, près de Bordeaux…")
activity_14 = Activity.create!(name: "Pêche sous les etoiles", fee: 25, localisation: "Pyla-sur-mer", mood: 2, category: 4, photo_url: "", budget: 2, content: "Un lieu confidentiel où bien-être et calme s'unissent pour des moments uniques : Du bois brut pour une communion avec la nature, le corps et l’esprit. Vibrez grâce à l’atmosphère singulière du lieu... Offrez-vous un séjour inoubliable dans un écrin de verdure, près de Bordeaux…")
activity_15 = Activity.create!(name: "Visite du Domaine", fee: 27,  localisation: "Targon", mood: 2, category: 3, photo_url: "", budget: 2, content: "Un lieu confidentiel où bien-être et calme s'unissent pour des moments uniques : Du bois brut pour une communion avec la nature, le corps et l’esprit. Vibrez grâce à l’atmosphère singulière du lieu... Offrez-vous un séjour inoubliable dans un écrin de verdure, près de Bordeaux…")
activity_16 = Activity.create!(name: "Balade à cheval au coucher du soleil", fee: 40, localisation: "Carcans", mood: 2, category: 4, photo_url: "", budget: 2, content: "Un lieu confidentiel où bien-être et calme s'unissent pour des moments uniques : Du bois brut pour une communion avec la nature, le corps et l’esprit. Vibrez grâce à l’atmosphère singulière du lieu... Offrez-vous un séjour inoubliable dans un écrin de verdure, près de Bordeaux…")
activity_17 = Activity.create!(name: "Atelier artisanat et déjeuner végétarien", fee: 30, localisation: "Hostens", mood: 2, category: 2, photo_url: "", budget: 2, content: "Un lieu confidentiel où bien-être et calme s'unissent pour des moments uniques : Du bois brut pour une communion avec la nature, le corps et l’esprit. Vibrez grâce à l’atmosphère singulière du lieu... Offrez-vous un séjour inoubliable dans un écrin de verdure, près de Bordeaux…")
activity_18 = Activity.create!(name: "Hôtel avec vue sur la citadelle", fee: 85, localisation: "Cissac-Médoc", mood: 2, category: 1, photo_url: "", budget: 2, content: "Un lieu confidentiel où bien-être et calme s'unissent pour des moments uniques : Du bois brut pour une communion avec la nature, le corps et l’esprit. Vibrez grâce à l’atmosphère singulière du lieu... Offrez-vous un séjour inoubliable dans un écrin de verdure, près de Bordeaux…")
activity_19 = Activity.create!(name: "Atelier Patisserie Gourmand & Croquant", fee: 25, localisation: "Sauternes", mood: 2, category: 3, photo_url: "",  budget: 2, content: "Un lieu confidentiel où bien-être et calme s'unissent pour des moments uniques : Du bois brut pour une communion avec la nature, le corps et l’esprit. Vibrez grâce à l’atmosphère singulière du lieu... Offrez-vous un séjour inoubliable dans un écrin de verdure, près de Bordeaux…")
activity_20 = Activity.create!(name: "Dégustation de vins nature", fee: 25, localisation: "Ambès", mood: 2, category: 2, photo_url: "", budget: 2, content: "Un lieu confidentiel où bien-être et calme s'unissent pour des moments uniques : Du bois brut pour une communion avec la nature, le corps et l’esprit. Vibrez grâce à l’atmosphère singulière du lieu... Offrez-vous un séjour inoubliable dans un écrin de verdure, près de Bordeaux…")
activity_21 = Activity.create!(name: "Visite gourmande du marché des producteurs", fee: 20, localisation: "Lacanau-de-Mios",  mood: 2, category: 2, photo_url: "", budget: 2, content: "Un lieu confidentiel où bien-être et calme s'unissent pour des moments uniques : Du bois brut pour une communion avec la nature, le corps et l’esprit. Vibrez grâce à l’atmosphère singulière du lieu... Offrez-vous un séjour inoubliable dans un écrin de verdure, près de Bordeaux…")
activity_22 = Activity.create!(name: "Pique-Nique Gourmand", fee: 30, localisation: "Saumos", mood: 2, category: 2, photo_url: "", budget: 2, content: "Un lieu confidentiel où bien-être et calme s'unissent pour des moments uniques : Du bois brut pour une communion avec la nature, le corps et l’esprit. Vibrez grâce à l’atmosphère singulière du lieu... Offrez-vous un séjour inoubliable dans un écrin de verdure, près de Bordeaux…")
activity_23 = Activity.create!(name: "Cabane cocoon au bord de l’eau", fee: 70, localisation: "Valeyrac", mood: 2, category: 1, photo_url: "",  budget: 2, content: "Un lieu confidentiel où bien-être et calme s'unissent pour des moments uniques : Du bois brut pour une communion avec la nature, le corps et l’esprit. Vibrez grâce à l’atmosphère singulière du lieu... Offrez-vous un séjour inoubliable dans un écrin de verdure, près de Bordeaux…")
activity_24 = Activity.create!(name: "Initiation à la biodynamie et dégustation", fee: 30, localisation: "Saint-Emilion",  mood: 2, category: 3, photo_url: "", budget: 2, content: "Un lieu confidentiel où bien-être et calme s'unissent pour des moments uniques : Du bois brut pour une communion avec la nature, le corps et l’esprit. Vibrez grâce à l’atmosphère singulière du lieu... Offrez-vous un séjour inoubliable dans un écrin de verdure, près de Bordeaux…")
activity_25 = Activity.create!(name: "Camping du Lac", fee: 40, localisation: "Hourtin", mood: 2, category: 1, photo_url: "",  budget: 2, content: "Un lieu confidentiel où bien-être et calme s'unissent pour des moments uniques : Du bois brut pour une communion avec la nature, le corps et l’esprit. Vibrez grâce à l’atmosphère singulière du lieu... Offrez-vous un séjour inoubliable dans un écrin de verdure, près de Bordeaux…")
activity_26 = Activity.create!(name: "Balade en canoë et observation des oiseaux", fee: 20,  localisation: "Cadillac", mood: 2, category: 3, photo_url: "", budget: 2, content: "Un lieu confidentiel où bien-être et calme s'unissent pour des moments uniques : Du bois brut pour une communion avec la nature, le corps et l’esprit. Vibrez grâce à l’atmosphère singulière du lieu... Offrez-vous un séjour inoubliable dans un écrin de verdure, près de Bordeaux…")
activity_27 = Activity.create!(name: "Maison tout confort et calme", fee: 60, localisation: "Podensac", mood: 2, category: 1, photo_url: "", budget: 2, content: "Un lieu confidentiel où bien-être et calme s'unissent pour des moments uniques : Du bois brut pour une communion avec la nature, le corps et l’esprit. Vibrez grâce à l’atmosphère singulière du lieu... Offrez-vous un séjour inoubliable dans un écrin de verdure, près de Bordeaux…")
activity_28 = Activity.create!(name: "Maison du bonheur", fee: 79, localisation: "Clérac", mood: 2, category: 1, photo_url: "", budget: 2, content: "Un lieu confidentiel où bien-être et calme s'unissent pour des moments uniques : Du bois brut pour une communion avec la nature, le corps et l’esprit. Vibrez grâce à l’atmosphère singulière du lieu... Offrez-vous un séjour inoubliable dans un écrin de verdure, près de Bordeaux…")
activity_29 = Activity.create!(name: "Descente de la Leyre en canoë", fee: 15, localisation: "Mios", mood: 2, category: 3, photo_url: "", budget: 2, content: "Un lieu confidentiel où bien-être et calme s'unissent pour des moments uniques : Du bois brut pour une communion avec la nature, le corps et l’esprit. Vibrez grâce à l’atmosphère singulière du lieu... Offrez-vous un séjour inoubliable dans un écrin de verdure, près de Bordeaux…")
activity_30 = Activity.create!(name: "Location de rosalies", fee: 25, localisation: "Hourtin", mood: 2, category: 3, photo_url: "", budget: 2, content: "Un lieu confidentiel où bien-être et calme s'unissent pour des moments uniques : Du bois brut pour une communion avec la nature, le corps et l’esprit. Vibrez grâce à l’atmosphère singulière du lieu... Offrez-vous un séjour inoubliable dans un écrin de verdure, près de Bordeaux…")
activity_31 = Activity.create!(name: "Terres d'Oiseaux", fee: 25, localisation: "Braud-et-Saint-Louis", mood: 2, category: 3, photo_url: "", budget: 2, content: "Un lieu confidentiel où bien-être et calme s'unissent pour des moments uniques : Du bois brut pour une communion avec la nature, le corps et l’esprit. Vibrez grâce à l’atmosphère singulière du lieu... Offrez-vous un séjour inoubliable dans un écrin de verdure, près de Bordeaux…")
activity_32 = Activity.create!(name: "Atelier Céramique", fee: 25, localisation: "Blagon", mood: 2, category: 3, photo_url: "", budget: 2, content: "Un lieu confidentiel où bien-être et calme s'unissent pour des moments uniques : Du bois brut pour une communion avec la nature, le corps et l’esprit. Vibrez grâce à l’atmosphère singulière du lieu... Offrez-vous un séjour inoubliable dans un écrin de verdure, près de Bordeaux…")
activity_33 = Activity.create!(name: "Ferme Saint-Henri", fee: 25, localisation: "Gujan-Mestras", mood: 2, category: 3, photo_url: "", budget: 2, content: "Un lieu confidentiel où bien-être et calme s'unissent pour des moments uniques : Du bois brut pour une communion avec la nature, le corps et l’esprit. Vibrez grâce à l’atmosphère singulière du lieu... Offrez-vous un séjour inoubliable dans un écrin de verdure, près de Bordeaux…")
activity_34 = Activity.create!(name: "Domaine d'Écoline : ferme et cueillette de fruits", fee: 25, localisation: "Sadirac", mood: 2, category: 3, photo_url: "", budget: 2, content: "Un lieu confidentiel où bien-être et calme s'unissent pour des moments uniques : Du bois brut pour une communion avec la nature, le corps et l’esprit. Vibrez grâce à l’atmosphère singulière du lieu... Offrez-vous un séjour inoubliable dans un écrin de verdure, près de Bordeaux…")
activity_35 = Activity.create!(name: "Réserve Ornithologique du Teich", fee: 25, localisation: "Le Teich", mood: 2, category: 3, photo_url: "", budget: 2, content: "Un lieu confidentiel où bien-être et calme s'unissent pour des moments uniques : Du bois brut pour une communion avec la nature, le corps et l’esprit. Vibrez grâce à l’atmosphère singulière du lieu... Offrez-vous un séjour inoubliable dans un écrin de verdure, près de Bordeaux…")
activity_36 = Activity.create!(name: "Au paradis du papillon", fee: 25, localisation: "Biganos", mood: 2, category: 3, photo_url: "", budget: 2, content: "Un lieu confidentiel où bien-être et calme s'unissent pour des moments uniques : Du bois brut pour une communion avec la nature, le corps et l’esprit. Vibrez grâce à l’atmosphère singulière du lieu... Offrez-vous un séjour inoubliable dans un écrin de verdure, près de Bordeaux…")
activity_37 = Activity.create!(name: "Les Ecogîtes Floréale", fee: 49, localisation: "Audenge", mood: 2, category: 1, photo_url: "", budget: 2, content: "Un lieu confidentiel où bien-être et calme s'unissent pour des moments uniques : Du bois brut pour une communion avec la nature, le corps et l’esprit. Vibrez grâce à l’atmosphère singulière du lieu... Offrez-vous un séjour inoubliable dans un écrin de verdure, près de Bordeaux…")
activity_38 = Activity.create!(name: "Camping Le Paradis", fee: 49, localisation: "Saint-Laurent-Médoc", mood: 2, category: 1, photo_url: "", budget: 2, content: "Un lieu confidentiel où bien-être et calme s'unissent pour des moments uniques : Du bois brut pour une communion avec la nature, le corps et l’esprit. Vibrez grâce à l’atmosphère singulière du lieu... Offrez-vous un séjour inoubliable dans un écrin de verdure, près de Bordeaux…")
activity_39 = Activity.create!(name: "Gîte La Maison dans les Vignes", fee: 49, localisation: "Riocaud", mood: 2, category: 1, photo_url: "", budget: 2, content: "Un lieu confidentiel où bien-être et calme s'unissent pour des moments uniques : Du bois brut pour une communion avec la nature, le corps et l’esprit. Vibrez grâce à l’atmosphère singulière du lieu... Offrez-vous un séjour inoubliable dans un écrin de verdure, près de Bordeaux…")

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

file19 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1598994524/actv7_3_my7qum.jpg')
file20 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1598994524/actv7_2_rmgfmw.jpg')
file21 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1598994525/actv7_1_srhsks.jpg')
activity_6.photos.attach([
  {io: file19, filename: 'file19.jpg', content_type: 'image/png'},
  {io: file20, filename: 'file20.jpg', content_type: 'image/png'},
  {io: file21, filename: 'file21.jpg', content_type: 'image/png'}
])
activity_6.save

file25 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1598997112/actv9_1_ukkurh.jpg')
file26 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1598997110/actv9_2_ccizim.jpg')
file27 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1598997109/actv9_3_xuzlhz.jpg')
activity_7.photos.attach([
  {io: file25, filename: 'file25.jpg', content_type: 'image/png'},
  {io: file26, filename: 'file26.jpg', content_type: 'image/png'},
  {io: file27, filename: 'file27.jpg', content_type: 'image/png'}
])
activity_7.save

file28 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1598997110/actv10_2_q275xd.jpg')
file29 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1598997111/actv10_1_oor5dg.jpg')
file30 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1598997110/actv10_3_aqml1s.jpg')
activity_8.photos.attach([
  {io: file28, filename: 'file28.jpg', content_type: 'image/png'},
  {io: file29, filename: 'file29.jpg', content_type: 'image/png'},
  {io: file30, filename: 'file30.jpg', content_type: 'image/png'}
])
activity_8.save

file31 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1598997109/actv11_3_spvfsw.jpg')
file32 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1598997109/actv11_2_vuk7kq.jpg')
file33 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1598818685/guinguette_cdhmpv.jpg')
activity_9.photos.attach([
  {io: file31, filename: 'file31.jpg', content_type: 'image/png'},
  {io: file32, filename: 'file32.jpg', content_type: 'image/png'},
  {io: file33, filename: 'file33.jpg', content_type: 'image/png'}
])
activity_9.save

file34 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1598997111/actv12_1_uhyxhi.jpg')
file35 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1598997110/actv12_2_g3qxoe.jpg')
file36 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1598997111/actv12_3_jovj25.jpg')
activity_10.photos.attach([
  {io: file34, filename: 'file34.jpg', content_type: 'image/png'},
  {io: file35, filename: 'file35.jpg', content_type: 'image/png'},
  {io: file36, filename: 'file36.jpg', content_type: 'image/png'}
])
activity_10.save

file37 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1598818685/cueillette_g51zmj.jpg')
file38 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1598997110/actv13_1_ynpdya.jpg')
file39 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1598997109/actv13_2_k9szgy.jpg')
activity_11.photos.attach([
  {io: file37, filename: 'file37.jpg', content_type: 'image/png'},
  {io: file38, filename: 'file38.jpg', content_type: 'image/png'},
  {io: file39, filename: 'file39.jpg', content_type: 'image/png'}
])
activity_11.save

file40 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1598997109/actv14_1_n1tck3.jpg')
file41 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1598997109/actv14_2_vvzwbe.jpg')
file42 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1598997112/actv14_3_q68y9m.jpg')
activity_12.photos.attach([
  {io: file40, filename: 'file40.jpg', content_type: 'image/png'},
  {io: file41, filename: 'file41.jpg', content_type: 'image/png'},
  {io: file42, filename: 'file42.jpg', content_type: 'image/png'}
])
activity_12.save

file43 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1598997111/actv15_1_y8ji2n.jpg')
file44 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1598997110/actv15_2_jpcarb.jpg')
file45 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1598997110/actv15_3_dnt8wn.jpg')
activity_13.photos.attach([
  {io: file43, filename: 'file43.jpg', content_type: 'image/png'},
  {io: file44, filename: 'file44.jpg', content_type: 'image/png'},
  {io: file45, filename: 'file45.jpg', content_type: 'image/png'}
])
activity_13.save

file49 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1599053775/actv17_1_shqcbw.jpg')
file50 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1599053775/actv17_2_nyi93i.jpg')
file51 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1599053775/actv17_3_ikjrs0.jpg')
activity_14.photos.attach([
  {io: file49, filename: 'file49.jpg', content_type: 'image/png'},
  {io: file50, filename: 'file50.jpg', content_type: 'image/png'},
  {io: file51, filename: 'file51.jpg', content_type: 'image/png'}
])
activity_14.save

file52 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1599053775/actv18_1_zxyro8.jpg')
file53 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1599053774/actv18_2_awojwm.jpg')
file54 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1599053774/actv18_3_mbsuar.jpg')
activity_15.photos.attach([
  {io: file52, filename: 'file52.jpg', content_type: 'image/png'},
  {io: file53, filename: 'file53.jpg', content_type: 'image/png'},
  {io: file54, filename: 'file54.jpg', content_type: 'image/png'}
])
activity_15.save

file55 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1599053775/actv19_3_upkuzm.jpg')
file56 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1599053775/actv19_2_tsjfcb.jpg')
file57 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1599053776/actv19_1_pydlv0.jpg')
activity_16.photos.attach([
  {io: file55, filename: 'file55.jpg', content_type: 'image/png'},
  {io: file56, filename: 'file56.jpg', content_type: 'image/png'},
  {io: file57, filename: 'file57.jpg', content_type: 'image/png'}
])
activity_16.save

file58 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1599053775/actv20_1_clgpyv.jpg')
file59 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1599053774/actv20_2_wyw7qf.jpg')
file60 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1599053775/actv20_3_vyuyul.jpg')
activity_17.photos.attach([
  {io: file58, filename: 'file58.jpg', content_type: 'image/png'},
  {io: file59, filename: 'file59.jpg', content_type: 'image/png'},
  {io: file60, filename: 'file60.jpg', content_type: 'image/png'}
])
activity_17.save

file61 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1599053776/actv21_1_by3h9f.jpg')
file62 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1599053775/actv21_2_uorcnk.jpg')
file63 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1599053775/actv21_3_uznfep.jpg')
activity_18.photos.attach([
  {io: file61, filename: 'file61.jpg', content_type: 'image/png'},
  {io: file62, filename: 'file62.jpg', content_type: 'image/png'},
  {io: file63, filename: 'file63.jpg', content_type: 'image/png'}
])
activity_18.save

file64 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1599053775/actv22_1_njjtmu.jpg')
file65 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1599053774/actv22_2_ojicba.jpg')
file66 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1599053774/actv22_3_a7gkgv.jpg')
activity_19.photos.attach([
  {io: file64, filename: 'file64.jpg', content_type: 'image/png'},
  {io: file65, filename: 'file65.jpg', content_type: 'image/png'},
  {io: file66, filename: 'file66.jpg', content_type: 'image/png'}
])
activity_19.save

file67 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1599053784/actv23_1_dyvgzv.jpg')
file68 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1599053776/actv23_2_jr7vza.jpg')
file69 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1599053775/actv23_3_htqj38.jpg')
activity_20.photos.attach([
  {io: file67, filename: 'file67.jpg', content_type: 'image/png'},
  {io: file68, filename: 'file68.jpg', content_type: 'image/png'},
  {io: file69, filename: 'file69.jpg', content_type: 'image/png'}
])
activity_20.save

file70 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1599049512/actv24_1.jpg')
file71 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1599049901/actv24_2.jpg')
file72 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1599051741/actv24_3.jpg')
activity_21.photos.attach([
  {io: file70, filename: 'file70.jpg', content_type: 'image/png'},
  {io: file71, filename: 'file71.jpg', content_type: 'image/png'},
  {io: file72, filename: 'file72.jpg', content_type: 'image/png'}
])
activity_21.save

file73 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1599049812/actv25_1.jpg')
file74 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1599049901/actv25_2.jpg')
file75 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1599052257/actv25_3.jpg')
activity_22.photos.attach([
  {io: file73, filename: 'file73.jpg', content_type: 'image/png'},
  {io: file74, filename: 'file74.jpg', content_type: 'image/png'},
  {io: file75, filename: 'file75.jpg', content_type: 'image/png'}
])
activity_22.save

file76 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1599050011/actv26_1.jpg')
file77 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1599166412/picnic2_vlrwgk.jpg')
file78 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1599166412/picnic3_wsmed9.jpg')
activity_23.photos.attach([
  {io: file76, filename: 'file76.jpg', content_type: 'image/png'},
  {io: file77, filename: 'file77.jpg', content_type: 'image/png'},
  {io: file78, filename: 'file78.jpg', content_type: 'image/png'}
])
activity_23.save

file79 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1599111853/actv27_3_srqbxz.jpg')
file80 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1599050750/actv28_2.jpg')
file81 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1599050236/actv27_1.jpg')
activity_24.photos.attach([
  {io: file79, filename: 'file79.jpg', content_type: 'image/png'},
  {io: file80, filename: 'file80.jpg', content_type: 'image/png'},
  {io: file81, filename: 'file81.jpg', content_type: 'image/png'}
])
activity_24.save

file91 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1599051153/actv31_1.jpg')
file92 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1599051166/actv31_2.jpg')
file93 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1599112121/actv31_3_nppgfi.jpg')
activity_25.photos.attach([
  {io: file91, filename: 'file91.jpg', content_type: 'image/png'},
  {io: file92, filename: 'file92.jpg', content_type: 'image/png'},
  {io: file93, filename: 'file93.jpg', content_type: 'image/png'}
])
activity_25.save

file94 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1599051275/actv32_1.jpg')
file95 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1599051279/actv32_2.jpg')
file96 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1599051285/actv32_3.jpg')
activity_26.photos.attach([
  {io: file94, filename: 'file94.jpg', content_type: 'image/png'},
  {io: file95, filename: 'file95.jpg', content_type: 'image/png'},
  {io: file96, filename: 'file96.jpg', content_type: 'image/png'}
])
activity_26.save

file97 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1599156333/actv27_1_oami5z.jpg')
file98 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1599166852/actv27_2_hjmxdc.jpg')
file99 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1599156333/actv27_3_r87v6j.jpg')
activity_27.photos.attach([
  {io: file97, filename: 'file97.jpg', content_type: 'image/png'},
  {io: file98, filename: 'file98.jpg', content_type: 'image/png'},
  {io: file99, filename: 'file99.jpg', content_type: 'image/png'}
])
activity_27.save

file100 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1599156811/actv28_3_qomkb9.jpg')
file101 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1599156811/actv28_2_fuzsys.jpg')
file102 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1599156811/actv28_1_ulypd2.jpg')
activity_28.photos.attach([
  {io: file100, filename: 'file100.jpg', content_type: 'image/png'},
  {io: file101, filename: 'file101.jpg', content_type: 'image/png'},
  {io: file102, filename: 'file102.jpg', content_type: 'image/png'}
])
activity_28.save

file103 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1599157031/actv29_1_odzdal.jpg')
file104 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1599157031/actv29_2_iu9gv1.jpg')
file105 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1599157031/actv29_3_zpujiq.jpg')
activity_29.photos.attach([
  {io: file103, filename: 'file103.jpg', content_type: 'image/png'},
  {io: file104, filename: 'file104.jpg', content_type: 'image/png'},
  {io: file105, filename: 'file105.jpg', content_type: 'image/png'}
])
activity_29.save

file106 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1599157308/actv30_1_qwjbam.jpg')
file107 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1599157308/actv30_2_dskuoz.jpg')
file108 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1599157308/actv30_3_qrxl51.jpg')
activity_30.photos.attach([
  {io: file106, filename: 'file106.jpg', content_type: 'image/png'},
  {io: file107, filename: 'file107.jpg', content_type: 'image/png'},
  {io: file108, filename: 'file108.jpg', content_type: 'image/png'}
])
activity_30.save

file109 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1599157457/actv31_1_cw9hic.jpg')
file110 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1599157457/actv31_2_r7incq.jpg')
file111 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1599157457/actv31_3_zhvjpw.jpg')
activity_31.photos.attach([
  {io: file109, filename: 'file109.jpg', content_type: 'image/png'},
  {io: file110, filename: 'file110.jpg', content_type: 'image/png'},
  {io: file111, filename: 'file111.jpg', content_type: 'image/png'}
])
activity_31.save

file112 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1599157845/actv32_3_st3bfa.jpg')
file113 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1599157846/actv32_1_tgatr6.jpg')
file114 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1599157846/actv32_2_isxgzp.jpg')
activity_32.photos.attach([
  {io: file112, filename: 'file112.jpg', content_type: 'image/png'},
  {io: file113, filename: 'file113.jpg', content_type: 'image/png'},
  {io: file114, filename: 'file114.jpg', content_type: 'image/png'}
])
activity_32.save

file118 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1599158052/actv33_1_f7gxey.jpg')
file119 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1599158051/actv33_2_cpsslu.jpg')
file120 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1599158052/actv33_3_a2xxcb.jpg')
activity_33.photos.attach([
  {io: file118, filename: 'file118.jpg', content_type: 'image/png'},
  {io: file119, filename: 'file119.jpg', content_type: 'image/png'},
  {io: file120, filename: 'file120.jpg', content_type: 'image/png'}
])
activity_33.save

file121 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1599158260/actv34_1_a7xr4n.jpg')
file122 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1599158259/actv34_2_mo9yww.jpg')
file123 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1599158260/actv34_3_ybroqz.jpg')
activity_34.photos.attach([
  {io: file121, filename: 'file121.jpg', content_type: 'image/png'},
  {io: file122, filename: 'file122jpg', content_type: 'image/png'},
  {io: file123, filename: 'file123.jpg', content_type: 'image/png'}
])
activity_34.save

file124 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1599158446/actv35_1_rugrun.jpg')
file125 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1599158446/actv35_2_r2bcew.jpg')
file126 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1599158445/actv35_3_cgjgfb.jpg')
activity_35.photos.attach([
  {io: file124, filename: 'file124.jpg', content_type: 'image/png'},
  {io: file125, filename: 'file125.jpg', content_type: 'image/png'},
  {io: file126, filename: 'file126.jpg', content_type: 'image/png'}
])
activity_35.save

file127 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1599158803/actv36_1_icqtry.jpg')
file128 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1599158803/actv36_2_vu2ffd.jpg')
file129 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1599158802/actv36_3_o2hqcl.jpg')
activity_36.photos.attach([
  {io: file127, filename: 'file127.jpg', content_type: 'image/png'},
  {io: file128, filename: 'file128.jpg', content_type: 'image/png'},
  {io: file129, filename: 'file129.jpg', content_type: 'image/png'}
])
activity_36.save

file130 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1599159336/actv37_1_ptbfub.jpg')
file131 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1599159336/actv37_2_p8rbtq.jpg')
file132 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1599159336/actv37_3_mbmpbi.jpg')
activity_37.photos.attach([
  {io: file130, filename: 'file130.jpg', content_type: 'image/png'},
  {io: file131, filename: 'file131.jpg', content_type: 'image/png'},
  {io: file132, filename: 'file132.jpg', content_type: 'image/png'}
])
activity_37.save

file136 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1599160030/actv38_1_z6ufdi.jpg')
file137 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1599160030/actv38_2_ximlpn.jpg')
file138 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1599160030/actv38_3_fue12y.jpg')
activity_38.photos.attach([
  {io: file136, filename: 'file136.jpg', content_type: 'image/png'},
  {io: file137, filename: 'file137.jpg', content_type: 'image/png'},
  {io: file138, filename: 'file138.jpg', content_type: 'image/png'}
])
activity_38.save

file139 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1599164736/actv39_1_vz9ss6.jpg')
file140 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1599164736/actv39_3_fptsna.jpg')
file141 = URI.open('https://res.cloudinary.com/dwekobmrk/image/upload/v1599164736/actv39_2_l9jr3n.jpg')
activity_39.photos.attach([
  {io: file139, filename: 'file139.jpg', content_type: 'image/png'},
  {io: file140, filename: 'file140.jpg', content_type: 'image/png'},
  {io: file141, filename: 'file141.jpg', content_type: 'image/png'}
])
activity_39.save

puts "Activities created!"
