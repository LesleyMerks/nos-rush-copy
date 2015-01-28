
import UIKit

func getData() -> Array<Dictionary<String,String>> {
    
    var data = [
        [
            "titel" : "DIT LUISTEREN CHIRURGEN",
            "subtext": "Volgens Brits onderzoek luisteren 8 op de 10 chirurgen tijdens operaties naar muziek, zodat ze zich beter kunnen concentreren.",
            "image" : "chirurg1.png",
            "thumb" : "chirurg2.png",
            "datum": "Donderdag 22 januari",
            "opgeslagen": "",
            "categorie" : "BINNENLAND",
            "text"  : "Volgens Brits onderzoek luisteren 8 op de 10 chirurgen tijdens operaties naar muziek, zodat ze zich beter kunnen concentreren. En ook in Nederland schallen de klanken regelmatig door de operatiekamer.De belangrijkste motivaties: ontspanning, concentratie en het krijgen van energie.\n\n We stuurden 25 ziekenhuizen een enquête en vroegen hen die te verspreiden onder hun chirurgen.Tussen al het harde werk door vonden 49 'snijders' de tijd om te reageren. 52 procent van hen gaf aan naar muziek te luisteren tijdens operaties. 15 procent doet dat zelfs altijd; slechts 2 procent zet nooit de radio of een playlistje op. \n\n Maar wat luisteren chirurgen dan als jij onder narcose bent? Ze konden kiezen uit meerdere antwoorden. 45 chirurgen antwoordden en gaven een indicatie welke muziek populair is in de OK: pop. "],
        
        [
            "titel" : "DRUKKE OCHTENDSPITS DOOR SLECHT WEER",
            "subtext": "Het slechte weer heeft geleid tot een drukke ochtendspits.",
            "image" : "auto1.png",
            "thumb" : "auto2.png",
            "datum": "Donderdag 22 januari",
            "opgeslagen": "",
            
            "categorie" : "BINNENLAND",
            "text"  : "Het slechte weer heeft geleid tot een drukke ochtendspits. Rond half negen stond er op het hoogtepunt zo'n 370 kilometer file op de snelwegen. Normaal staat er rond dat tijdstip zo'n 200 kilometer. Na half tien nam de verkeersdrukte af.\n\n Door de harde wind en de regen stond het op veel plaatsen door het hele land stil. De A44 tussen Kaagdorp en Noordwijkerhout was een uur afgesloten na twee ongelukken. Verder waren er onder meer problemen ten noorden van Amsterdam en bij Arnhem, Nijmegen en Utrecht.De ANWB had gisteren vanwege het slechte weer al gewaarschuwd voor een drukke ochtendspits. Op Schiphol zijn er geen vertragingen door de harde wind. "],
        
        [
            "titel" : "ZZP'ERS VERPLICHT SPAREN VOOR PENSIOEN",
            "subtext": "Zzp'ers moeten verplicht sparen voor hun pensioen en werknemers moeten meer zeggenschap krijgen over de hoogte van hun pensioenpremie.",
            "image" : "afm1.png",
            "thumb" : "afm2.png",
            "datum": "Donderdag 22 januari",
            "opgeslagen": "",
            "categorie" : "ECONOMIE",
            "text"  : "Zzp'ers moeten verplicht sparen voor hun pensioen en werknemers moeten meer zeggenschap krijgen over de hoogte van hun pensioenpremie. Dat schrijft de Autoriteit Financiële Markten (AFM) in zijn pensioenvisie als bijdrage aan de nationale pensioendialoog.\n\n 'Keuze daar waar het kan, verplichting daar waar dat verstandig is' zegt de AFM. Als werknemers meer keuzemogelijkheid krijgen, dan moet wel rekening worden gehouden met hun kennis over het pensioen.\n\n 'Consumenten zijn van nature gericht op de korte termijn en niet erg gemotiveerd om te plannen voor hun oude dag. Ze begrijpen niet altijd de risico's.\n\nPensioenpremie\n\n De toezichthouder vindt dat werknemers boven een bepaald minimumbedrag zelf ervoor moeten kunnen kiezen om meer of minder pensioenpremie in te leggen als ze dat willen. Het huidige pensioenstelsel is volgens AFM niet flexibel genoeg en houdt geen rekening met individuele verschillen.\n\n 'Niet iedereen heeft hetzelfde nodig voor de oude dag. Iemand die vermogen heeft opgebouwd in een huis kan bijvoorbeeld een heel andere pensioenbehoefte hebben dan iemand met een huurhuis' zegt AFM-bestuurder Harman Korte in het Financieele Dagblad.\n\n Verplicht sparen \n\n Het tweede speerpunt richt zich op de zzp'ers. Nederland telt ongeveer een miljoen zelfstandigen, honderdduizenden daarvan dreigen geen pensioen op te bouwen. Deze groep zelfstandigen is in tegenstelling tot werknemers in loondienst niet verplicht aan een pensioenregeling mee te doen.\n\n De AFM stelt daarom 'een algehele verplichtstelling' voor. 'Het is niet uit te leggen dat sommige werkenden nu wel verplicht voor hun pensioen sparen en anderen niet.' aldus Korte.\n\n Pensioendialoog \n\n Met zijn pensioenvisie wil de AFM bijdragen aan het debat over het toekomstige pensioenstelsel. Staatssecretaris Klijnsma van Sociale Zaken riep in augustuspartijen op hun visie te delen over het herstructureren van het huidige pensioenstelsel."
        ],
        
        [
            "titel" : "ZEKER 150 HUISHOUDENS MOETEN BINNENBLIJVEN",
            "subtext": "150 tot 180 huishoudens in Wateringen moeten vandaag binnenblijven.",
            "image" : "brand1.png",
            "thumb" : "brand2.png",
            "datum": "Donderdag 22 januari",
            "opgeslagen": "",
            "categorie" : "BINNENLAND",
            "text"  : "150 tot 180 huishoudens in Wateringen moeten vandaag binnenblijven om asbest die vannacht bij een brand vrijkwam niet verder te verspreiden. Dat zegt burgemeester Sjaak van der Tak van de gemeente Westland waar Wateringen onder valt.\n\n Het gaat om grote brokstukken die in drie straten zijn neergekomen. 'Er ligt best wat', zei Van der Tak in het NOS Radio 1 Journaal. Van der Tak heeft die bewoners opgeroepen vandaag niet hun woning te verlaten. 'Anders vermalen ze de grote brokstukken asbest en worden de problemen alleen maar groter. Zie het maar als een verplichte vrije dag en maak er maar wat gezelligs van.\n\n Geëvacueerd \n\n 36 omwonenden zijn vannacht geëvacueerd. Zij zijn met een bus naar het gemeentehuis gebracht en kunnen voorlopig nog niet terug naar huis.\n\n Het opruimen gaat de hele dag duren, denkt de burgemeester. 'Het is een flink klusje.'"
        ],
        
        [
            
            "titel" :  "DOOR HET KIERTJE VAN HET KASTJE",
            "subtext": "Hij zat acht en een half uur in een gootsteenkastje.",
            "image" : "kier1.png",
            "thumb" : "kier2.png",
            "datum": "Donderdag 22 januari",
            "opgeslagen": "",
            "categorie" : "BUITENLAND",
            "text"  : "Hij zat acht en een half uur in een gootsteenkastje. De 26-jarige Lilian Lepère is grafisch ontwerper in de drukkerij in Dammartin-en-Goële en wist zich schuil te houden voor de twee terroristen die een aanslag pleegden bij Charlie Hebdo. In het Franse achtuurjournaal vertelde hij gisteravond hoe hij zich verscholen hield voor de broers Kouachi en de politie wist te bereiken.\n\n 'Hij was maar op 50 centimeter afstand. Een van de gijzelnemers opende het keukenkastje naast mij en keek erin. Er lag niets dat hem interesseerde. Hij liep naar de koelkast en vroeg zijn broer of hij iets te drinken wilde. Ik dacht als ze mijn kastje open doen, is het afgelopen', vertelt Lepère.\n\n Eén van de broers liep naar de kraan om water te drinken. Lepère zat met zijn lichaam tegen de afvoerbuis. 'Ik zag zijn schaduw door het kiertje tussen de deurtjes. Ik verschoof een beetje met mijn rug stijf tegen de afvoerbuis aan. Ik voelde het water stromen. Het voelde volkomen onwerkelijk, alsof ik in een film zat. Dit gebeurt alleen in films.'\n\n Wonder boven wonder vertrekken de broers weer uit de keuken zonder dat ze Lepère gezien hebben. Uren later durft hij eindelijk te bewegen. 'In de drukkerij gingen regelmatig telefoons af. Op die momenten durfde ik ook te bewegen en mijn telefoon te pakken.'"        ],
        
        [
            "titel" : "VOICERECORDER AIRASIA-VLICHT UIT ZEE GEHAALD",
            "subtext": " Duikers hebben de cockpitvoicerecorder van het neergestorte AirAsia-toestel boven water gehaald.",
            "image" : "airasia1.png",
            "thumb" : "airasia2.png",
            "datum": "Donderdag 22 januari",
            "opgeslagen": "",
            "categorie" : "BUITENLAND",
            "text"  : "Duikers hebben de cockpitvoicerecorder van het neergestorte AirAsia-toestel boven water gehaald. De zwarte doos werd gevonden vlak bij de plek waar gisteren de andere zwarte doos al werd gevonden in de Javazee bij Indonesië.\n\n De cockpitvoicerecorder is aan boord gehaald van een Indonesisch marineschip en wordt voor onderzoek naar de hoofdstad Jakarta gebracht. De doos bevat geluidsopnames uit de cockpit en kan dus mogelijk meer duidelijkheid geven over de oorzaak van de crash.\n\n De andere zwarte doos bevat de vluchtgegevens van het neergestorte toestel van AirAsia. Het vliegtuig stortte op 28 december in zee. Aan boord waren 162 mensen. Tot nu toe zijn er 48 lichamen geborgen."
            
        ],
        
        [
            "titel" : "Nog meer kijkers voor Boer zoekt vrouw",
            "subtext": "Boer zoekt vrouw heeft een half miljoen kijkers meer getrokken dan vorige week.",
            "image" : "boer1.png",
            "thumb" : "boer2.png",
            "datum": "Donderdag 22 januari",
            "opgeslagen": "",
            "categorie" : "Cultuur en media",
            "text"  : "Boer zoekt vrouw heeft een half miljoen kijkers meer getrokken dan vorige week. Toen keken 3,7 miljoen mensen naar het datingprogramma, gisteren zaten er 4,2 miljoen mensen te kijken hoe het de boeren en hun mogelijke partners verging. \n\n De mars tegen terreur in Parijs werd gistermiddag door 500.000 mensen bekeken. Het verslag van de manifestatie, waaraan ook tal van regeringsleiders meededen, was live te zien op NPO2."
            
        ],
        [
            "titel" : "Eerste Kamerlid valt flauw tijdens debat",
            "subtext": "Bij 2600 klanten met een levensverzekering van verzekeraar Delta Lloyd is een brief op de mat gevallen met de aanhef 'Aan de erven van'.",
            "image" : "eerste1.png",
            "thumb" : "eerste2.png",
            "datum": "Donderdag 22 januari",
            "opgeslagen": "",
            "categorie" : "Politiek",
            "text"  : "Eerste Kamerlid voor D66 Marijke Scholten is gisteravond onwel geworden tijdens een lang debat over de begroting van justitie. Ze stond op dat moment achter het spreekgestoelte om vragen te beantwoorden. \n\n De 68-jarige Scholten werd snel na haar val overeind geholpen door collega-senatoren. Volgens een woordvoerder van de Eerste Kamer gaat het weer redelijk met Scholten. De D66-senator zou weer goed aanspreekbaar zijn. Ze is door mensen van de GGD onderzocht en voor controle naar het ziekenhuis gebracht.\n\n Een jaar geleden zakte Scholten ook al in elkaar tijdens een debat in de senaat. Toen voelde ze de flauwte aankomen en kon ze een collega waarschuwen. Nu viel ze ineens om. \n\n Het debat in de Eerste Kamer is later hervat. "
            
        ],

        
        


        
        [
            "titel" : "",
            "subtext": "Je bent op de hoogte van het sport, economisch en binnenlands nieuws. ",
            "image" : "eindeflits.png",
            "thumb" : "",
            "datum": "",
            "opgeslagen": "",
            "categorie" : "Einde Flits",
            "text"  : ""
            
        ],

        
        
    ]
    
    return data
}