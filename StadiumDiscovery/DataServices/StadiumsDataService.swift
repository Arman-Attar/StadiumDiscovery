//
//  StadiumsDataService.swift
//  StadiumDiscovery
//
//  Created by Arman Zadeh-Attar on 2021-12-28.
//

import Foundation
import MapKit

class StadiumsDataService {
    
    static let stadiums: [Stadium] = [
        Stadium(
            name: "Emirates Stadium",
            cityName: "London",
            coordinates: CLLocationCoordinate2D(latitude: 51.5549, longitude: -0.109112),
            description: "The Emirates Stadium is a football stadium in Holloway, London, England, and the home of Arsenal. With a capacity of 60,260 it is the fourth-largest football stadium in England after Wembley Stadium, Old Trafford and Tottenham Hotspur Stadium.",
            imageNames: [
                "england-arsenal-1",
                "england-arsenal-2",
                "england-arsenal-3",
            ],
            link: "https://en.wikipedia.org/wiki/Emirates_Stadium"),
        
        Stadium(
            name: "Stamford Bridge",
            cityName: "London",
            coordinates: CLLocationCoordinate2D(latitude: 51.4817, longitude: -0.1910),
            description: "Stamford Bridge is a football stadium in Fulham, adjacent to the borough of Chelsea in South West London, wrongly referred to as The Bridge. It is the home of Premier League club Chelsea. With a capacity of 40,834, it is the ninth largest venue of the 2021–22 Premier League season.",
            imageNames: [
                "england-chelsea-1",
                "england-chelsea-2",
                "england-chelsea-3",
            ],
            link: "https://en.wikipedia.org/wiki/Stamford_Bridge_(stadium)"),
        
        Stadium(
            name: "Anfield",
            cityName: "Liverpool",
            coordinates: CLLocationCoordinate2D(latitude: 53.4308, longitude: -2.9608),
            description: "Anfield is a football stadium in Anfield, Liverpool, Merseyside, England, which has a seating capacity of 53,394, making it the seventh largest football stadium in England.[2] It has been the home of Liverpool F.C. since their formation in 1892.",
            imageNames: [
                "england-liverpool-1",
                "england-liverpool-2",
                "england-liverpool-3",
            ],
            link: "https://en.wikipedia.org/wiki/Anfield"),
        
        Stadium(
            name: "Etihad Stadium",
            cityName: "Manchester",
            coordinates: CLLocationCoordinate2D(latitude: 53.4831, longitude: -2.2004),
            description: "The City of Manchester Stadium in Manchester, England, also known as the Etihad Stadium for sponsorship reasons, is the home of Premier League club Manchester City F.C., with a domestic football capacity of 53,400, making it the fifth-largest in the Premier League and tenth-largest in the United Kingdom.",
            imageNames: [
                "england-mancity-1",
                "england-mancity-2",
                "england-mancity-3",
            ],
            link: "https://en.wikipedia.org/wiki/City_of_Manchester_Stadium"),
        
        Stadium(
            name: "Old Trafford",
            cityName: "Manchester",
            coordinates: CLLocationCoordinate2D(latitude: 53.4631, longitude: -2.2913),
            description: "Old Trafford is a football stadium in Old Trafford, Greater Manchester, England, and the home of Manchester United. With a capacity of 74,140 seats, it is the largest club football stadium (and second-largest football stadium overall after Wembley Stadium) in the United Kingdom, and the eleventh-largest in Europe.",
            imageNames: [
                "england-manunited-1",
                "england-manunited-2",
                "england-manunited-3",
            ],
            link: "https://en.wikipedia.org/wiki/Old_Trafford"),
        
        Stadium(
            name: "Stade Pierre Mauroy",
            cityName: "Villeneuve-d'Ascq",
            coordinates: CLLocationCoordinate2D(latitude: 50.6120, longitude: 3.1305),
            description: "The Stade Pierre-Mauroy is a multi-use retractable roof stadium in Villeneuve-d'Ascq (Métropole Européenne de Lille), France, that opened in August 2012. It has a seating capacity of 50,186 and is the home stadium of LOSC Lille.",
            imageNames: [
                "france-lille-1",
                "france-lille-2",
                "france-lille-3",
            ],
            link: "https://en.wikipedia.org/wiki/Stade_Pierre-Mauroy"),
        
        Stadium(
            name: "Groupama Stadium",
            cityName: "Décines-Charpieu",
            coordinates: CLLocationCoordinate2D(latitude: 45.7653, longitude: 4.9820),
            description: "Parc Olympique Lyonnais, known for sponsorship reasons as Groupama Stadium, and in some competitions as Grand Stade de Lyon or Stade des Lumières, is a 59,186-seat stadium in Décines-Charpieu, in the Lyon Metropolis. The home of French football club Olympique Lyonnais, it replaced their previous stadium, Stade de Gerland, in January 2016.",
            imageNames: [
                "france-lyon-1",
                "france-lyon-2",
                "france-lyon-3",
            ],
            link: "https://en.wikipedia.org/wiki/Parc_Olympique_Lyonnais"),
        
        Stadium(
            name: "Orange Vélodrome",
            cityName: "Marseille",
            coordinates: CLLocationCoordinate2D(latitude: 43.2698, longitude: 5.3959),
            description: "The Stade Vélodrome, known as the Orange Vélodrome for sponsorship reasons, is a multi-purpose stadium in Marseille, France. It is home to the Olympique de Marseille football club of Ligue 1 since it opened in 1937.",
            imageNames: [
                "france-mars-1",
                "france-mars-2",
                "france-mars-3",
            ],
            link: "https://en.wikipedia.org/wiki/Stade_Vélodrome"),
        
        Stadium(
            name: "Stade Louis II",
            cityName: "Monaco",
            coordinates: CLLocationCoordinate2D(latitude: 43.7276, longitude: 7.4156),
            description: "The Stade Louis II is a stadium located in the Fontvieille district of Monaco. It serves primarily as a venue for football, being the home of AS Monaco and the Monaco national football team. The stadium is most notable for its distinctive nine arches at the away end of the ground.",
            imageNames: [
                "france-monaco-1",
                "france-monaco-2",
                "france-monaco-3",
            ],
            link: "https://en.wikipedia.org/wiki/Stade_Louis_II"),
        
        Stadium(
            name: "Le Parc des Princes",
            cityName: "Paris",
            coordinates: CLLocationCoordinate2D(latitude: 48.8414, longitude: 2.2530),
            description: "The Parc des Princes is an all-seater football stadium in Paris, France, in the south-west of the French capital, inside the 16th arrondissement, near the Stade Jean-Bouin and Stade Roland Garros. The stadium, with a seating capacity of 47,929 spectators, has been the home of Paris Saint-Germain since 1974.",
            imageNames: [
                "france-psg-1",
                "france-psg-2",
                "france-psg-3",
            ],
            link: "https://en.wikipedia.org/wiki/Parc_des_Princes"),
        
        Stadium(
            name: "Allianz Arena",
            cityName: "Munich",
            coordinates: CLLocationCoordinate2D(latitude: 48.2188, longitude: 11.6248),
            description: "Allianz Arena is a football stadium in Munich, Bavaria, Germany with a 70,000 seating capacity for international matches and 75,000 for domestic matches. Widely known for its exterior of inflated ETFE plastic panels, it is the first stadium in the world with a full colour changing exterior.",
            imageNames: [
                "germany-bayern-1",
                "germany-bayern-2",
                "germany-bayern-3",
            ],
            link: "https://en.wikipedia.org/wiki/Allianz_Arena"),
        
        Stadium(
            name: "Olympiastadion Berlin",
            cityName: "Berlin",
            coordinates: CLLocationCoordinate2D(latitude: 52.5147, longitude: 13.2395),
            description: "The Olympiastadion is a sports stadium at Olympiapark Berlin in Berlin, Germany. It was originally built by Werner March for the 1936 Summer Olympics. During the Olympics, the record attendance was thought to be over 100,000. Today the stadium is part of the Olympiapark Berlin.",
            imageNames: [
                "germany-berlin-1",
                "germany-berlin-2",
                "germany-berlin-3",
            ],
            link: "https://en.wikipedia.org/wiki/Olympiastadion_(Berlin)"),
        
        Stadium(
            name: "Signal Iduna Park",
            cityName: "Dortmund",
            coordinates: CLLocationCoordinate2D(latitude: 51.4926, longitude: 7.4519),
            description: "Westfalenstadion is a football stadium in Dortmund, North Rhine-Westphalia, Germany, which is the home of Borussia Dortmund. Officially called Signal Iduna Park for sponsorship reasons, the name derives from the former Prussian province of Westphalia.",
            imageNames: [
                "germany-bvb-1",
                "germany-bvb-2",
                "germany-bvb-3",
            ],
            link: "https://en.wikipedia.org/wiki/Westfalenstadion"),
        
        Stadium(
            name: "Munich Olympic Stadium",
            cityName: "Munich",
            coordinates: CLLocationCoordinate2D(latitude: 48.1731, longitude: 11.5466),
            description: "Olympiastadion München is a stadium located in Munich, Germany. Situated at the heart of the Olympiapark München in northern Munich, the stadium was built as the main venue for the 1972 Summer Olympics.",
            imageNames: [
                "germany-munchen-1",
                "germany-munchen-2",
                "germany-munchen-3",
            ],
            link: "https://en.wikipedia.org/wiki/Olympiastadion_(Munich)"),
        
        Stadium(
            name: "VELTINS-Arena",
            cityName: "Gelsenkirchen",
            coordinates: CLLocationCoordinate2D(latitude: 51.5546, longitude: 7.0675),
            description: "Arena AufSchalke currently known as Veltins-Arena for sponsorship reasons, is an indoor football stadium in Gelsenkirchen, North Rhine-Westphalia, Germany. It opened on 13 August 2001, as the new home ground for Bundesliga club FC Schalke 04.",
            imageNames: [
                "germany-schalke-1",
                "germany-schalke-2",
                "germany-schalke-3",
            ],
            link: "https://en.wikipedia.org/wiki/Arena_AufSchalke"),
        
        Stadium(
            name: "Allianz Stadium",
            cityName: "Turin",
            coordinates: CLLocationCoordinate2D(latitude: 45.1096, longitude: 7.6412),
            description: "Juventus Stadium, known for sponsorship reasons as the Allianz Stadium since July 2017,[4][5] sometimes simply known in Italy as the Stadium (Italian: Lo Stadium), is an all-seater football stadium in the Vallette borough of Turin, Italy, and the home of Juventus F.C.",
            imageNames: [
                "italy-juve-1",
                "italy-juve-2",
                "italy-juve-3",
            ],
            link: "https://en.wikipedia.org/wiki/Juventus_Stadium"),
        
        Stadium(
            name: "Stadio Olimpico",
            cityName: "Rome",
            coordinates: CLLocationCoordinate2D(latitude: 41.9341, longitude: 12.4547),
            description: "The Stadio Olimpico is the largest sports facility in Rome, Italy, seating over 70,000 spectators. It is located within the Foro Italico sports complex, north of the city. The Stadio Olimpico is the home stadium of the Roma and Lazio football clubs.",
            imageNames: [
                "italy-lazio-1",
                "italy-lazio-2",
                "italy-lazio-3",
            ],
            link: "https://en.wikipedia.org/wiki/Stadio_Olimpico"),
        
        Stadium(
            name: "San Siro",
            cityName: "Milan",
            coordinates: CLLocationCoordinate2D(latitude: 45.4781, longitude: 9.1240),
            description: "Stadio Giuseppe Meazza, commonly known as the San Siro, is a football stadium in the San Siro district of Milan, Italy, which is the home of A.C. Milan and Internazionale. It has a seating capacity of 80,018, making it one of the largest stadiums in Europe, and the largest in Italy.",
            imageNames: [
                "italy-milan-1",
                "italy-milan-2",
                "italy-milan-3",
            ],
            link: "https://en.wikipedia.org/wiki/San_Siro"),
        
        Stadium(
            name: "Diego Armando Maradona Stadium",
            cityName: "Naples",
            coordinates: CLLocationCoordinate2D(latitude: 40.8279, longitude: 14.1931),
            description: "Stadio Diego Armando Maradona, formerly named Stadio San Paolo, is a stadium in the western Fuorigrotta suburb of Naples, Italy, and is the third largest football stadium in Italy, after Milan's San Siro and Rome's Stadio Olimpico, as well as the largest to be used by only one team. It is currently used mostly for football matches and is the home stadium of S.S.C. Napoli.",
            imageNames: [
                "italy-napoli-1",
                "italy-napoli-2",
                "italy-napoli-3",
            ],
            link: "https://en.wikipedia.org/wiki/Stadio_Diego_Armando_Maradona"),
        
        Stadium(
            name: "Wanda Metropolitano Stadium",
            cityName: "Madrid",
            coordinates: CLLocationCoordinate2D(latitude: 40.4362, longitude: -3.5995),
            description: "Metropolitano Stadium, also referred to as Wanda Metropolitano for sponsorship reasons, is a stadium in Madrid, Spain. It has been the home stadium of Atlético Madrid since the 2017–18 season. It is located in the Rosas neighbourhood, in the San Blas-Canillejas district",
            imageNames: [
                "spain-atleti-1",
                "spain-atleti-2",
                "spain-atleti-3",
            ],
            link: "https://en.wikipedia.org/wiki/Metropolitano_Stadium"),
        
        Stadium(
            name: "Camp Nou",
            cityName: "Barcelona",
            coordinates: CLLocationCoordinate2D(latitude: 41.3809, longitude: 2.1228),
            description: "Camp Nou, meaning new field, is a football stadium in Barcelona, Spain. It opened in 1957 and has been the home stadium of FC Barcelona since its completion. With a seating capacity of 99,354, it is the largest stadium in Spain and Europe, and the fourth largest association football stadium in the world in capacity.",
            imageNames: [
                "spain-barca-1",
                "spain-barca-2",
                "spain-barca-3",
            ],
            link: "https://en.wikipedia.org/wiki/Camp_Nou"),
        
        Stadium(
            name: "Santiago Bernabéu Stadium",
            cityName: "Madrid",
            coordinates: CLLocationCoordinate2D(latitude: 40.4530, longitude: -3.6883),
            description: "The Santiago Bernabéu Stadium is a football stadium in Madrid, Spain. With a current seating capacity of 81,044, it has been the home stadium of Real Madrid since its completion in 1947. It is the second-largest stadium in Spain and third-largest home to a top-flight European club after Camp Nou and Westfalenstadion.",
            imageNames: [
                "spain-real-1",
                "spain-real-2",
                "spain-real-3",
            ],
            link: "https://en.wikipedia.org/wiki/Santiago_Bernabéu_Stadium"),
    ]
}
