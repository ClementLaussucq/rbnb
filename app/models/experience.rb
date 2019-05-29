class Experience < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  validates :description, :name, :price, :category, :address, presence: true, allow_blank: false
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  mount_uploader :photo, PhotoUploader

  CATEGORIES = [
    "Acheteur",
    "Administrateur de base de données",
    "Agent de sûreté aéroportuaire",
    "Agent de transit",
    "Agent d'entretien",
    "Agent funéraire",
    "Agent immobilier",
    "Agent de police",
    "Agent de presse",
    "Agent de sécurité",
    "Agent de surveillance de la voie publique (ASVP)",
    "Agronome",
    "Ambulancier",
    "Analyste financier",
    "Analyste programmeur",
    "Analyste Web",
    "Architecte",
    "Architecte paysagiste",
    "Architecte en système d'information",
    "Archiviste",
    "Assitant administratif et financier",
    "Assistant blibliothécaire",
    "Assistant d'éducation",
    "Assistant dentaire",
    "Assistant marketing",
    "Assistant paie et administration",
    "Assistant RH",
    "Assureur",
    "Audioprothésiste",
    "Auditeur financier",
    "Auxiliaire de puériculture",
    "Auxiliaire de vie sociale",
    "Avocat",
    "Bibliothécaire",
    "Biologiste",
    "Chargé de communication",
    "Chargé de recrutement",
    "Charpentier",
    "Chauffeur de taxi",
    "Chefs de chantier",
    "Chef de projet",
    "Chef de projet marketing",
    "Chef d'établissement",
    "Chiropracteur",
    "Chirurgien orthopédiste",
    "Coiffeur",
    "Commis de cuisine",
    "Comptable",
    "Concepteur de jeux vidéos",
    "Concepteur-rédacteur",
    "Conducteur de grue",
    "Conducteur de train",
    "Conseiller",
    "Conseiller d'orientation",
    "Conseiller en insertion professionnelle",
    "Consultant bien-être",
    "Consultant en informatique",
    "Contrôleur (trains)",
    "Contrôleur aérien",
    "Contrôleur de gestion",
    "Contrôleur financier",
    "Courtier en assurance",
    "Cuisinier",
    "Décorateur d'intérieur",
    "Dentiste",
    "Designer industriel",
    "Développeur informatique",
    "Diacre",
    "Diététicien",
    "Directeur artistique",
    "Directeur des ventes",
    "Directeur financier",
    "Directeur RH",
    "Economiste",
    "Educateur de jeunes",
    "Eleveur",
    "Employé de banque",
    "Enseignant",
    "Ergothérapeute",
    "Esthéticienne",
    "Fleuriste",
    "Gardien",
    "Géomètre",
    "Gestionnaire immobilier",
    "Hôtesse de l'air",
    "Huissier",
    "Illustrateur",
    "Infirmière",
    "Ingénieur civil",
    "Ingénieur électronicien",
    "Ingénieur du BTP",
    "Inspecteur de l'action sanitaire et sociale",
    "Jardinier",
    "Jardinier paysagiste",
    "Journaliste",
    "Juge",
    "Kinésithérapeute",
    "Linguiste",
    "Machiniste",
    "Magasinier",
    "Maître d'hôtel",
    "Manipulateur radio",
    "Masseur",
    "Mécanicien aéronautique",
    "Médecin",
    "Moniteur d'auto-école",
    "Monteur électricien",
    "Nutritionniste",
    "Officier",
    "Opérateur de production",
    "Opérateur d'usinage sur commande numérique (UCN)",
    "Opticien",
    "Orthophoniste",
    "Personal Trainer",
    "Pharmacien",
    "Photographe",
    "Physicien",
    "Physicien médical",
    "Pilote",
    "Politicien",
    "Pompier",
    "Poseur de sol (solier)",
    "Prêtre",
    "Procureur",
    "Professeur des écoles",
    "Professeur d'éducation physique (EPS)",
    "Professeur de français langue étrangère",
    "Porfesseur des universités",
    "Psychologue",
    "Réceptionniste",
    "Réceptionniste d'hôtel",
    "Responsable communication",
    "Responsable grands comptes",
    "Responsable service clientèle",
    "Sages-femmes",
    "Secrétaire médicale",
    "Serveur",
    "Skipper",
    "Soldat",
    "Soudeur",
    "Statisticien",
    "Surveillant pénitentiaire",
    "Technicien alarme intrusion",
    "Technicien d'analyses biomédicales",
    "Technicien de maintenance informatique",
    "Technicien d'exploitation",
    "Téléconseiller",
    "Test manager",
    "Travailleur social",
    "Urbaniste",
    "Vendeur",
    "Vétérinaire",
    "Webmaster"
  ]

  CITIES_ADDRESS = [
    "Paris",
    "Lyon",
    "Marseille – Aix-en-Provence",
    "Toulouse",
    "Bordeaux",
    "Lille",
    "Nice",
    "Nantes",
    "Strasbourg",
    "Rennes"
  ]

  def users_info_booking
    result_array = []
    bookings.each do |booking|
      user_name = "#{booking.user.first_name.capitalize} #{booking.user.last_name.capitalize}"
      user_email = booking.user.email
      user_booking = booking.id
      hash_user = {}
      hash_user[:name] = user_name
      hash_user[:email] = user_email
      hash_user[:booking_id] = user_booking
      result_array << hash_user
    end
    return result_array
  end

  def unavailable_dates
    bookings.pluck(:date)
  end

  def pending_bookings
    bookings.where(status: "Pending").pluck(:date)
  end

  def confirmed_bookings
    bookings.where(status: "Confirmed").pluck(:date)
  end
end
