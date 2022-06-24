DROP TABLE IF EXISTS mitarbeiter;
DROP TABLE IF EXISTS standort;
DROP TABLE IF EXISTS geschaeftsstelle;


CREATE TABLE mitarbeiter(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    vorname VARCHAR(20),
    nachname VARCHAR(20),
    team VARCHAR(32),
    email VARCHAR(32),
    telefon VARCHAR(20),
    funktion VARCHAR(128),
    schwerpunkt VARCHAR(64),
    createdAt DATETIME(32),
    updatedAt DATETIME(32)
);

CREATE TABLE standort(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    stadt VARCHAR(64),
    strasse VARCHAR(64),
    hausnummer VARCHAR(5),
    postleitzahl VARCHAR(5),
    mitarbeiter_vorname VARCHAR(20),
    mitarbeiter_nachname VARCHAR(20),
    mitarbeiter_team VARCHAR(20),
    createdAt DATETIME(32),
    updatedAt DATETIME(32),
    FOREIGN KEY (mitarbeiter_vorname, mitarbeiter_nachname, mitarbeiter_team) REFERENCES Mitarbeiter (vorname, nachname, team)
);

CREATE TABLE geschaeftsstelle(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    bezeichnung VARCHAR(10),
    bundesland VARCHAR(20),
    standort_stadt VARCHAR(20),
    createdAt DATETIME(32),
    updatedAt DATETIME(32),
    FOREIGN KEY (standort_stadt) REFERENCES standort (stadt)
);


INSERT INTO
    mitarbeiter (vorname, nachname, team, email, telefon, funktion, schwerpunkt)
VALUES
    ("Daniel", "Alvarez Wetterer", "Individualentwicklung", "Daniel.AlvarezWetterer@sva.de", "+49 xxx xxxxxxxx", "Software Engineer", "Fullstack"),
    ("Waldemar", "Berger", "Individualentwicklung", "Waldemar.Berger@sva.de", "+49 151 26427848", "Frontend Architect", "Frontend"),
    ("Peter", "Bockowski", "Individualentwicklung", "Peter.Bockowski@sva.de", "+49 xxx xxxxxxxx", "Software Engineer", "Frontend"),
    ("Vsevolod", "Chaban", "Individualentwicklung", "Vsevolod.Chaban@sva.de", "+49 xxx xxxxxxxx", "UX/UI Designer", "UX/UI Design"),
    ("Canel", "Doener", "Individualentwicklung", "Canel.Doener@sva.de", "+49 xxx xxxxxxxx", "UX/UI Designer", "UX/UI Design"),
    ("Christian", "Gemeinhardt", "Individualentwicklung", "Christian.Gemeinhardt@sva.de", "+49 151 18028622", "Software Engineer & Consultant", "M365 Development"),
    ("Antje", "Hildebrandt", "Individualentwicklung", "Antje.Hildebrandt@sva.de", "+49 xxx xxxxxxxx", "IT Project Manager & Requirements Manager", "ProductOwner & PreSales"),
    ("Julika", "Hinz", "Individualentwicklung", "Julika.Hinz@sva.de", "+49 170 3736049", "IT Project Manager & Requirements Manager", "ProductOwner & PreSales"),
    ("Marco", "Hitsch", "Individualentwicklung", "Marco.Hitsch@sva.de", "+49 151 18053137", "Software Architect", "Fullstack"),
    ("Michael", "Kambeck", "Individualentwicklung", "Michael.Kambeck@sva.de", "+49 151 18028624", "Cloud Software Architect & Technical Lead Azure Development", "Fullstack und Cloud"),
    ("Kevin", "Kowalinski", "Individualentwicklung", "Kevin.Kowalinski@sva.de", "+49 175 9375975", "Software Engineer & Consultant", "M365 Development"),
    ("Silvia", "Laquintana", "Individualentwicklung", "Silvia.Laquintana@sva.de", "+49 xxx xxxxxxxx", "UX/UI Designer", "UX/UI Design"),
    ("Lisa-Marie", "Liu", "Individualentwicklung", "Lisa-Marie.Liu@sva.de", "+49 151 74130044", "UX/UI Designer", "UX/UI Design"),
    ("Fabian", "Pauli", "Individualentwicklung", "Fabian.Pauli@sva.de", "+49 151 18803581", "Software Engineer", "Fullstack"),
    ("Marcel", "Pesch", "Individualentwicklung", "Marcel.Pesch@sva.de", "+49 xxx xxxxxxxx", "IT Project Manager & Requirements Manager", "ProductOwner & PreSales"),
    ("Miriam", "Putschar", "Individualentwicklung", "Miriam.Putschar@sva.de", "+49 151 27658919", "UX/UI Designer & Consultant", "UX/UI Design & Consulting"),
    ("Daniel", "Rieger", "Individualentwicklung", "Daniel.Rieger@sva.de", "+49 151 18028623", "Software Engineer", "Fullstack"),
    ("Daniel", "Schaepermeier", "Individualentwicklung", "Daniel.Schaepermeier@sva.de", "+49 151 18028621", "Software Engineer", "Fullstack"),
    ("Alexander", "Thoma", "Individualentwicklung", "Alexander.Thoma@sva.de", "+49 170 3736048", "Software Engineer", "Backend"),
    ("Aydin Bora", "Toptas", "Individualentwicklung", "AydinBora.Toptas@sva.de", "+49 160 6183597", "Software Engineer", "M365 Development"),
    ("Jean-Luc", "Wiegmann", "Individualentwicklung", "Jean-Luc.Wiegmann@sva.de", "+49 175 9375973", "Software Engineer", "Fullstack"),
    ("Dennis", "Eichelbaum", "medPower Solutions", "Dennis.Eichelbaum@sva.de", "+49 151 18028007", "Software Engineer & Requirements Management", "Requirements Management & Frontend"),
    ("John", "Funk", "medPower Solutions", "John.Funk@sva.de", "+49 xxx xxxxxxxx", "Software Engineer", "Fullstack - Microservices - Kubernetes"),
    ("Christoph", "Jacob", "medPower Solutions", "Christoph.Jacob@sva.de", "+49 151 18027964", "Requirements Manager & QM Coordinator", "Requirements Analysis - Interoperability"),
    ("Lydia", "Kaiser", "medPower Solutions", "Lydia.Kaiser@sva.de", "+49 xxx xxxxxxxx", "Software Engineer", "Fullstack"),
    ("Kevin", "Stillhammer", "medPower Solutions", "Kevin.Stillhammer@sva.de", "+49 151 18028700", "Software Architect - Consultant & Developer", "App & Service Development - Microservices"),
    ("Daniela", "Tumbraegel", "medPower Solutions", "Daniela.Tumbraegel@sva.de", "+49 151 18053116", "Big Data Engineer", "Fullstack"),
    ("Benjamin", "Volkmann", "medPower Solutions", "benjamin.volkmann@sva.de", "+49 151 18027942", "Software Engineer & Consultant", "Fullstack"),
    ("Lukas", "Goebl", "Managed Service Portal", "Lukas.Goebl@sva.de", "+49 151 18053074", "Software Engineer", "App & Web Development"),
    ("Christian", "Jonszies", "Managed Service Portal", "Christian.Jonszies@sva.de", "+49 175 9375981", "Software Engineer & Consultant", "Fullstack & Microservices"),
    ("Martin", "Kuesters", "Managed Service Portal", "Martin.Kuesters@sva.de", "+49 171 9567943", "Software Engineer", "App & Web Development"),
    ("Cedrik", "Blankenberger", "Talententwicklung", "Cedrik.Blankenberger@sva.de", "+49 170 3736020", "Dualer Masterstudent - Software Development", "Fullstack"),
    ("Kerstin", "Dueckmann", "Talententwicklung", "Kerstin.Dueckmann@sva.de", "+49 151 57302992", "Duale Masterstudentin - Software Development", "Testing"),
    ("Anastasiia", "Evdash", "Talententwicklung", "Anastasiia.Evdash@sva.de", "+49 151 27256623", "Werkstudentin - UX/UI Design", "Frontend"),
    ("Kamil", "Glowka", "Talententwicklung", "Kamil.Glowka@sva.de", "+49 xxx xxxxxxxx", "Praktikant - Software Development", "x"),
    ("Jana", "Herboldsheimer", "Talententwicklung", "Jana.Herboldsheimer@sva.de", "+49 175 5918824", "Werkstudentin - Software Development", "Security"),
    ("Jonas", "Hueg", "Talententwicklung", "Jonas.Hueg@sva.de", "+49 151 18053054", "Werkstudent - Software Development", "Backend"),
    ("Rene", "Jodocy", "Talententwicklung", "Rene.Jodocy@sva.de", "+49 xxx xxxxxxxx", "Werkstudent - Software Development", "Fullstack"),
    ("Florian", "Olk", "Talententwicklung", "Florian.Olk@sva.de", "+49 xxx xxxxxxxx", "Werkstudent - Software Development", "Fullstack"),
    ("Sandra", "Schuhmacher", "Talententwicklung", "Sandra.Schuhmacher@sva.de", "+49 175 4514333", "Werkstudentin - Software Development", "Fullstack");

INSERT INTO
    standort (stadt, strasse, hausnummer, postleitzahl, mitarbeiter_vorname, mitarbeiter_nachname, mitarbeiter_team)
VALUES
    ("Düsseldorf", "Kennedydamm", "24", "40476", "Daniel", "Alvarez Wetterer", "Individualentwicklung"),
    ("Wiesbaden", "Borsigstraße", "26", "65205", "Waldemar", "Berger", "Individualentwicklung"),
    ("Wiesbaden", "Borsigstraße", "26", "65205", "Peter", "Bockowski", "Individualentwicklung"),
    ("Köln", "Breslauer Platz", "4", "50668", "Vsevolod", "Chaban", "Individualentwicklung"),
    ("Wiesbaden", "Borsigstraße", "26", "65205", "Canel", "Doener", "Individualentwicklung"),
    ("Karlsruhe", "Amalienbadstraße", "41", "76227", "Christian", "Gemeinhardt", "Individualentwicklung"),
    ("Wiesbaden", "Borsigstraße", "26", "65205", "Antje", "Hildebrandt", "Individualentwicklung"),
    ("Wiesbaden", "Borsigstraße", "26", "65205", "Julika", "Hinz", "Individualentwicklung"),
    ("Wiesbaden", "Borsigstraße", "26", "65205", "Marco", "Hitsch", "Individualentwicklung"),
    ("Köln", "Breslauer Platz", "4", "50668", "Michael", "Kambeck", "Individualentwicklung"),
    ("Düsseldorf", "Kennedydamm", "24", "40476", "Kevin", "Kowalinski", "Individualentwicklung"),
    ("Karlsruhe", "Amalienbadstraße", "41", "76227", "Silvia", "Laquintana", "Individualentwicklung"),
    ("Bremen", "Allerkai", "4", "28309", "Lisa-Marie", "Liu", "Individualentwicklung"),
    ("Wiesbaden", "Borsigstraße", "26", "65205", "Fabian", "Pauli", "Individualentwicklung"),
    ("Bonn", "Joseph-Schumpeter-Allee", "29", "53227", "Marcel", "Pesch", "Individualentwicklung"),
    ("Wiesbaden", "Borsigstraße", "26", "65205", "Miriam", "Putschar", "Individualentwicklung"),
    ("Karlsruhe", "Amalienbadstraße", "41", "76227", "Daniel", "Rieger", "Individualentwicklung"),
    ("Schwerte", "Konrad-Zuse-Straße", "14", "58239", "Daniel", "Schaepermeier", "Individualentwicklung"),
    ("Düsseldorf", "Kennedydamm", "24", "40476", "Alexander", "Thoma", "Individualentwicklung"),
    ("Köln", "Breslauer Platz", "4", "50668", "Aydin Bora", "Toptas", "Individualentwicklung"),
    ("Wiesbaden", "Borsigstraße", "26", "65205", "Jean-Luc", "Wiegmann", "Individualentwicklung"),
    ("Wiesbaden", "Borsigstraße", "26", "65205", "Kevin", "Stillhammer", "medPower Solutions"),
    ("Berlin", "Rotherstraße", "16", "10245", "Dennis", "Eichelbaum", "medPower Solutions"),
    ("Düsseldorf", "Kennedydamm", "24", "40476", "John", "Funk", "medPower Solutions"),
    ("Berlin", "Rotherstraße", "16", "10245", "Christoph", "Jacob", "medPower Solutions"),
    ("Wiesbaden", "Borsigstraße", "26", "65205", "Benjamin", "Volkmann", "medPower Solutions"),
    ("Würzburg", "Friedrich-Bergius-Ring", "52", "97076", "Lydia", "Kaiser", "medPower Solutions"),
    ("Berlin", "Rotherstraße", "16", "10245", "Daniela", "Tumbraegel", "medPower Solutions"),
    ("Karlsruhe", "Amalienbadstraße", "41", "76227", "Lukas", "Goebl", "Managed Service Portal"),
    ("Köln", "Breslauer Platz", "4", "50668", "Martin", "Kuesters", "Managed Service Portal"),
    ("Siegen", "Birlenbacher Straße", "19-21", "57078", "Christian", "Jonszies", "Managed Service Portal"),
    ("Wiesbaden", "Borsigstraße", "26", "65205", "Cedrik", "Blankenberger", "Talententwicklung"),
    ("Köln", "Breslauer Platz", "4", "50668", "Kerstin", "Dueckmann", "Talententwicklung"),
    ("Wiesbaden", "Borsigstraße", "26", "65205", "Anastasiia", "Evdash", "Talententwicklung"),
    ("Wiesbaden", "Borsigstraße", "26", "65205", "Jana", "Herboldsheimer", "Talententwicklung"),
    ("Wiesbaden", "Borsigstraße", "26", "65205", "Jonas", "Hueg", "Talententwicklung"),
    ("Wiesbaden", "Borsigstraße", "26", "65205", "Rene", "Jodocy", "Talententwicklung"),
    ("Wiesbaden", "Borsigstraße", "26", "65205", "Florian", "Olk", "Talententwicklung"),
    ("Wiesbaden", "Borsigstraße", "26", "65205", "Sandra", "Schuhmacher", "Talententwicklung"),
    ("Wiesbaden", "Borsigstraße", "26", "65205", "Kamil", "Glowka", "Talententwicklung");

INSERT INTO
    geschaeftsstelle (bezeichnung, bundesland, standort_stadt)
VALUES
    ("Nord",  "Bremen", "Bremen"),
    ("Nord West", "Nordrhein-Westfalen", "Schwerte"),
    ("Nord West", "Nordrhein-Westfalen", "Siegen"),
    ("Ost", "Berlin", "Berlin"),
    ("Mitte", "Nordrhein-Westfalen", "Bonn"),
    ("Mitte", "Nordrhein-Westfalen", "Düsseldorf"),
    ("Mitte", "Nordrhein-Westfalen", "Köln"),
    ("Mitte", "Hessen", "Wiesbaden"),
    ("Mitte", "Bayern", "Würzburg"),
    ("Süd West", "Baden-Württemberg", "Karlsruhe"),
    ("Süd West", "Baden-Württemberg", "Ulm");

SELECT * FROM geschaeftsstelle;
SELECT * FROM mitarbeiter;
SELECT * FROM standort;
