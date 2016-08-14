# seed city table

Easify::Hr::City.create(name: "Alaminos", start_date: Time.zone.now)
Easify::Hr::City.create(name: "Angeles", start_date: Time.zone.now)
Easify::Hr::City.create(name: "Antipolo", start_date: Time.zone.now)
Easify::Hr::City.create(name: "Bacolod", start_date: Time.zone.now)
Easify::Hr::City.create(name: "Bacoor", start_date: Time.zone.now)
Easify::Hr::City.create(name: "Bago", start_date: Time.zone.now)
Easify::Hr::City.create(name: "Baguio", start_date: Time.zone.now)
Easify::Hr::City.create(name: "Bais", start_date: Time.zone.now)
Easify::Hr::City.create(name: "Balanga", start_date: Time.zone.now)
Easify::Hr::City.create(name: "Batac", start_date: Time.zone.now)
Easify::Hr::City.create(name: "Batangas City", start_date: Time.zone.now)
Easify::Hr::City.create(name: "Bayawan", start_date: Time.zone.now)
Easify::Hr::City.create(name: "Baybay", start_date: Time.zone.now)
Easify::Hr::City.create(name: "Bayugan", start_date: Time.zone.now)
Easify::Hr::City.create(name: "Binan", start_date: Time.zone.now)
Easify::Hr::City.create(name: "Bislig", start_date: Time.zone.now)
Easify::Hr::City.create(name: "Bogo", start_date: Time.zone.now)

pasig_city = Easify::Hr::City.create(name: "Pasig", start_date: Time.zone.now)


Easify::Hr::Company.create(name: "J.S. Unitrade Merchandise, Inc.",
                           address1: "20th Floor Marco Polo Ortigas Manila",
                           address2: "Sapphire Road, Ortigas Center",
                           tax_identification_number: "005-148-853-000").city = pasig_city
