class Trip < ApplicationRecord
  belongs_to :user
  has_many :days
  has_many :selected_activities, through: :days

  validates :address, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :mood, presence: true
  validates :budget, presence: true

  enum mood: { "Aventurier" => 1, "Détente" => 2, "Famille" => 3, "Epicurien" => 4 }
  enum budget: { "€" => 1, "€€" => 2, "€€€" => 3 }
  enum radius: { "10km" => 10, "25km" => 25, "50km" => 50 }

  def self.random_image
    ["https://res.cloudinary.com/dwekobmrk/image/upload/v1599134155/cylubi2ehnttzb5dal3lc4i93asv.jpg",
     "https://res.cloudinary.com/dwekobmrk/image/upload/v1599136608/kelsey-knight-udj2tD3WKsY-unsplash_c45mcf.jpg",
     "https://res.cloudinary.com/dwekobmrk/image/upload/v1599134242/11h7ju0wzwwuje8hmagrbhmk5mol.jpg",
     "https://res.cloudinary.com/dwekobmrk/image/upload/v1599134133/kq1dry9drimpe2wz8sv0gvtvrsk2.jpg",
     "https://res.cloudinary.com/dwekobmrk/image/upload/v1599134109/k05yzh285kjiy9k3577q9fnudzyu.jpg",
     "https://res.cloudinary.com/dwekobmrk/image/upload/v1599134097/2z0wv6tlfi9fn9bxg0wibwptjzmk.jpg",
     "https://res.cloudinary.com/dwekobmrk/image/upload/v1599134084/h8s7clh605ydb15xvs4me69u5bzv.jpg",
     "https://res.cloudinary.com/dwekobmrk/image/upload/v1599059262/o6qcx4v9h2lt2laocpoe7fe5f51y.jpg",
     "https://res.cloudinary.com/dwekobmrk/image/upload/v1599166412/picnic2_vlrwgk.jpg",
     "https://res.cloudinary.com/dwekobmrk/image/upload/v1599166020/rc3wmpcbzd87sh0e7ipg89lr5nvy.jpg",
     "https://res.cloudinary.com/dwekobmrk/image/upload/v1599166005/g6y4uf085gqnxcxdwbx2pw7wqf66.jpg",
     "https://res.cloudinary.com/dwekobmrk/image/upload/v1599165997/lilk6g7csg4hek29ufp6icwe4dzo.jpg"].sample
  end
end
