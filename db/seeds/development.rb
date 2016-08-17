# seed city table

start_date = 1.year.ago

regions = { "Ilocos Region": { designation: "Region I", island_group: "Luzon" } }

provinces = { "Abra": { region: "Cordillera Administrative Region", iso_code: "PH-ABR" },
              "Agusan del Norte": { region: "Caraga", iso_code: "PH-AGN" },
              "Agusan del Sur": { region: "Caraga", iso_code: "PH-AGS" } }

cities = { "Alaminos": { province: "Pangasinan", postal_code: "" },
           "Angeles": {  province: "Pampanga", postal_code: "" },
           "Antipolo": { rovince: "Rizal",  postal_code: "" },
           "Bacolod": { province: "Negros Occidental", postal_code: "" },
           "Bacoor": {  province: "Cavite", postal_code: "" },
           "Bago": { province: "Negros Occidental", postal_code: "" },
           "Baguio": { province: "Benguet", postal_code: "" },
           "Bais": { province: "Negros Oriental",  postal_code: "" },
           "Balanga": { province: "Bataan",  postal_code: "" },
           "Batac": { province: "", postal_code: "" },
           "Batangas City": { province: "Batangas",  postal_code: "" },
           "Bayawan": { province: "Negros Oriental", postal_code: "" },
           "Baybay": {  province: "Leyte", postal_code: "" },
           "Bayugan": { province: "Agusan del Sur", postal_code: "" },
           "Binan": { province: "Laguna", postal_code: "" },
           "Bislig": { province: "Surigao del Sur", postal_code: "" },
           "Bogo": { province: "Cebu", postal_code: "" },
           "Borongan": { province: "Eastern Samar", postal_code: "" },
           "Butuan": { province: "Agusan del Norte", postal_code: "" },
           "Cabadbaran": { province: "Agusan del Norte", postal_code: "" },
           "Cabanatuan": { province: "Nueva Ecija", postal_code: ""},
           "Cabuyao": { province: "Laguna", postal_code: ""},
           "Cadiz": { province: "Negros Occidental", postal_code: "" },
           "Cagayan de Oro": { province: "Misamis Oriental", postal_code: ""},
           "Calamba": { province: "Laguna", postal_code: "" } }


cities.each {
  |name, information|
  Easify::Hr::City.create(name: name, start_date: start_date)
}



Easify::Hr::Company.create(name: "J.S. Unitrade Merchandise, Inc.",
                           address1: "20th Floor Marco Polo Ortigas Manila",
                           address2: "Sapphire Road, Ortigas Center",
                           tax_identification_number: "005-148-853-000")
