# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Recipe.create([
{
NAME: "Miscelánea", DESCRIPTION: "Receta genérica para resolver misiones no cubiertas por otras recetas"    
},
{
NAME: "test1", DESCRIPTION: "Este es el test 1"  
},
{
NAME: "test2", DESCRIPTION: "Este es el test 1"  
},
{
NAME: "test3", DESCRIPTION: "Este es el test 1"
},
{
NAME: "test4", DESCRIPTION: "Este es el test 1"
}
])

Location.create([
{
LID: 200001,NAME_ES: "Nido de las Águilas",NAME_EN: "The Eyrie",HOUSE: "Arryn",HID: 300002,TYPE: "Castillo",KINGDOM: "Valle",DESCRIPTION: ""
},
{
LID: 200002,NAME_ES: "Puertas de la Sangre",NAME_EN: "The Bloody Gate",HOUSE: "Arryn",HID: 300206,TYPE: "Castillo",KINGDOM: "Valle",DESCRIPTION: ""
},
{
LID: 200003,NAME_ES: "Rapsodia",NAME_EN: "Strongsong",HOUSE: "Belmore",HID: 300003,TYPE: "Castillo",KINGDOM: "Valle",DESCRIPTION: ""
},
{
LID: 200004,NAME_ES: "Acantilado Negro",NAME_EN: "",HOUSE: "Sunderland",HID: 300004,TYPE: "Castillo",KINGDOM: "Valle",DESCRIPTION: ""
},
{
LID: 200005,NAME_ES: "Aguasrecias",NAME_EN: "",HOUSE: "Longthorpe",HID: 300004,TYPE: "Castillo pequeño",KINGDOM: "Valle",DESCRIPTION: ""
},
{
LID: 200006,NAME_ES: "Rompeolas",NAME_EN: "",HOUSE: "Borrell",HID: 300005,TYPE: "Castillo",KINGDOM: "Valle",DESCRIPTION: ""
},
{
LID: 200007,NAME_ES: "Marea Roja",NAME_EN: "",HOUSE: "Torrent",HID: 300008,TYPE: "Torre",KINGDOM: "Valle",DESCRIPTION: ""
},
{
LID: 200008,NAME_ES: "Villahermana",NAME_EN: "Sisterton",HOUSE: "Sunderland",HID: 300009,TYPE: "Pueblo",KINGDOM: "Valle",DESCRIPTION: ""
},
{
LID: 200009,NAME_ES: "Hogar",NAME_EN: "Heart's Home",HOUSE: "Corbray",HID: 300010,TYPE: "Castillo",KINGDOM: "Valle",DESCRIPTION: ""
},
{
LID: 200010,NAME_ES: "Los Senos",NAME_EN: "The Paps",HOUSE: "Elesham",HID: 300010,TYPE: "Castillo pequeño",KINGDOM: "Valle",DESCRIPTION: ""
},
{
LID: 200011,NAME_ES: "Puerto Gaviota",NAME_EN: "Gulltown",HOUSE: "Grafton",HID: 300010,TYPE: "Ciudad",KINGDOM: "Valle",DESCRIPTION: ""
},
{
LID: 200012,NAME_ES: "Nuevo Torreon",NAME_EN: "New Keep",HOUSE: "Hersy",HID: 300011,TYPE: "Castillo pequeño",KINGDOM: "Valle",DESCRIPTION: ""
},
{
LID: 200013,NAME_ES: "Arcolargo",NAME_EN: "Longbow Hall",HOUSE: "Hunter",HID: 300012,TYPE: "Castillo",KINGDOM: "Valle",DESCRIPTION: ""
},
{
LID: 200014,NAME_ES: "Bosque de la Serpiente",NAME_EN: "Snakewood",HOUSE: "Lynderly",HID: 300013,TYPE: "Castillo",KINGDOM: "Valle",DESCRIPTION: ""
},
{
LID: 200015,NAME_ES: "Varadero Viejo",NAME_EN: "Old Anchor",HOUSE: "Melcom",HID: 300014,TYPE: "Castillo",KINGDOM: "Valle",DESCRIPTION: ""
},
{
LID: 200016,NAME_ES: "Guijarro",NAME_EN: "Pebble",HOUSE: "Pryor",HID: 300016,TYPE: "Castillo pequeño",KINGDOM: "Valle",DESCRIPTION: ""
},
{
LID: 200017,NAME_ES: "Fuerterrojo",NAME_EN: "Redfort",HOUSE: "Redfort",HID: 300017,TYPE: "Castillo",KINGDOM: "Valle",DESCRIPTION: ""
},
{
LID: 200018,NAME_ES: "Puertas de la Luna",NAME_EN: "Gates of the Moon",HOUSE: "Royce",HID: 300021,TYPE: "Castillo",KINGDOM: "Valle",DESCRIPTION: ""
},
{
LID: 200019,NAME_ES: "Piedra de las Runas",NAME_EN: "Runestone",HOUSE: "Royce",HID: 300022,TYPE: "Castillo",KINGDOM: "Valle",DESCRIPTION: ""
},
{
LID: 200020,NAME_ES: "Comezón de Aguasfrías",NAME_EN: "Coldwater",HOUSE: "Coldwater",HID: 300023,TYPE: "Castillo pequeño",KINGDOM: "Valle",DESCRIPTION: ""
},
{
LID: 200021,NAME_ES: "Torre Gaviota",NAME_EN: "Gull Tower",HOUSE: "Shett",HID: 300024,TYPE: "Torre",KINGDOM: "Valle",DESCRIPTION: ""
},
{
LID: 200022,NAME_ES: "Soto Gris",NAME_EN: "Grey Glen",HOUSE: "Tollet",HID: 300025,TYPE: "Castillo pequeño",KINGDOM: "Valle",DESCRIPTION: ""
},
{
LID: 200023,NAME_ES: "Nuevestrellas",NAME_EN: "Ninestars",HOUSE: "Templeton",HID: 300028,TYPE: "Castillo",KINGDOM: "Valle",DESCRIPTION: ""
},
{
LID: 200024,NAME_ES: "Isla de la Bruja",NAME_EN: "Witch Isle",HOUSE: "Upcliff",HID: 300027,TYPE: "Castillo pequeño",KINGDOM: "Valle",DESCRIPTION: ""
},
{
LID: 200025,NAME_ES: "Serbaledo",NAME_EN: "Wickenden",HOUSE: "Waxley",HID: 300029,TYPE: "Castillo",KINGDOM: "Valle",DESCRIPTION: ""
},
{
LID: 200026,NAME_ES: "Roble de hierro",NAME_EN: "Ironoaks",HOUSE: "Waynwood",HID: 300030,TYPE: "Castillo",KINGDOM: "Valle",DESCRIPTION: ""
},
{
LID: 200027,NAME_ES: "Invernalia",NAME_EN: "Winterfell",HOUSE: "Stark",HID: 300031,TYPE: "Castillo",KINGDOM: "Norte",DESCRIPTION: ""
},
{
LID: 200028,NAME_ES: "Fuerte Terror",NAME_EN: "The Dreadfort",HOUSE: "Bolton",HID: 300033,TYPE: "Castillo",KINGDOM: "Norte",DESCRIPTION: ""
},
{
LID: 200029,NAME_ES: "Pozanegra",NAME_EN: "Blackpool",HOUSE: "Slate",HID: 300035,TYPE: "Castillo pequeño",KINGDOM: "Norte",DESCRIPTION: ""
},
{
LID: 200030,NAME_ES: "Cerwyn",NAME_EN: "Cerwyn",HOUSE: "Cerwyn",HID: 300036,TYPE: "Castillo",KINGDOM: "Norte",DESCRIPTION: ""
},
{
LID: 200031,NAME_ES: "Fuerte Túmulo",NAME_EN: "Barrowton",HOUSE: "Dustin",HID: 300037,TYPE: "Pueblo",KINGDOM: "Norte",DESCRIPTION: ""
},
{
LID: 200032,NAME_ES: "Valdehierba",NAME_EN: "Grassy Vale",HOUSE: "Stout",HID: 300038,TYPE: "Castillo pequeño",KINGDOM: "Norte",DESCRIPTION: ""
},
{
LID: 200033,NAME_ES: "Dedo de Pedernal",NAME_EN: "Flint's Finger",HOUSE: "Flint",HID: 300039,TYPE: "Castillo pequeño",KINGDOM: "Norte",DESCRIPTION: ""
},
{
LID: 200034,NAME_ES: "Atalaya de la Viuda",NAME_EN: "Widow's Watch",HOUSE: "Flint",HID: 300092,TYPE: "Castillo pequeño",KINGDOM: "Norte",DESCRIPTION: ""
},
{
LID: 200035,NAME_ES: "Bosqueespeso",NAME_EN: "Deepwood Motte",HOUSE: "Glover",HID: 300041,TYPE: "Castillo",KINGDOM: "Norte",DESCRIPTION: ""
},
{
LID: 200036,NAME_ES: "Ironrath",NAME_EN: "Ironrath",HOUSE: "Forrester",HID: 300042,TYPE: "Castillo pequeño",KINGDOM: "Norte",DESCRIPTION: ""
},
{
LID: 200037,NAME_ES: "Puerta del Carnero",NAME_EN: "Ramsgate",HOUSE: "Holdstock",HID: 300043,TYPE: "Torre",KINGDOM: "Norte",DESCRIPTION: ""
},
{
LID: 200038,NAME_ES: "Hornwood",NAME_EN: "Hornwood",HOUSE: "Hornwood",HID: 300044,TYPE: "Castillo",KINGDOM: "Norte",DESCRIPTION: ""
},
{
LID: 200039,NAME_ES: "Bastión Kar",NAME_EN: "Karhold",HOUSE: "Karstark",HID: 300045,TYPE: "Castillo",KINGDOM: "Norte",DESCRIPTION: ""
},
{
LID: 200040,NAME_ES: "Castiviejo",NAME_EN: "Oldcastle",HOUSE: "Locke",HID: 300046,TYPE: "Castillo",KINGDOM: "Norte",DESCRIPTION: ""
},
{
LID: 200041,NAME_ES: "Puerto Blanco",NAME_EN: "White Harbor",HOUSE: "Manderly",HID: 300047,TYPE: "Ciudad",KINGDOM: "Norte",DESCRIPTION: ""
},
{
LID: 200042,NAME_ES: "Isla del Oso",NAME_EN: "Bear Island",HOUSE: "Mormont",HID: 300048,TYPE: "Castillo",KINGDOM: "Norte",DESCRIPTION: ""
},
{
LID: 200043,NAME_ES: "Atalaya de Aguasgrises",NAME_EN: "Greywater Watch",HOUSE: "Reed",HID: 300049,TYPE: "Castillo pequeño",KINGDOM: "Norte",DESCRIPTION: ""
},
{
LID: 200044,NAME_ES: "Los Riachuelos",NAME_EN: "The Rills",HOUSE: "Ryswell",HID: 300051,TYPE: "Castillo",KINGDOM: "Norte",DESCRIPTION: ""
},
{
LID: 200045,NAME_ES: "Rillwater Crossing",NAME_EN: "Rillwater Crossing",HOUSE: "Glenmore",HID: 300052,TYPE: "Castillo pequeño",KINGDOM: "Norte",DESCRIPTION: ""
},
{
LID: 200046,NAME_ES: "Ciudadela de Torrhen",NAME_EN: "Torrhen's Square",HOUSE: "Tallhart",HID: 300053,TYPE: "Castillo",KINGDOM: "Norte",DESCRIPTION: ""
},
{
LID: 200047,NAME_ES: "Highpoint",NAME_EN: "Highpoint",HOUSE: "Whitehill",HID: 300054,TYPE: "Castillo pequeño",KINGDOM: "Norte",DESCRIPTION: ""
},
{
LID: 200048,NAME_ES: "Último Hogar",NAME_EN: "Last Hearth",HOUSE: "Umber",HID: 300054,TYPE: "Castillo",KINGDOM: "Norte",DESCRIPTION: ""
},
{
LID: 200049,NAME_ES: "Aguasdulces",NAME_EN: "Riverrun",HOUSE: "Tully",HID: 300055,TYPE: "Castillo",KINGDOM: "Ríos",DESCRIPTION: ""
},
{
LID: 200050,NAME_ES: "Árbol de los Cuervos",NAME_EN: "Raventree Hall",HOUSE: "Blackwood",HID: 300057,TYPE: "Castillo",KINGDOM: "Ríos",DESCRIPTION: ""
},
{
LID: 200051,NAME_ES: "Seto de Piedra",NAME_EN: "Stone Hedge",HOUSE: "Bracken",HID: 300058,TYPE: "Castillo",KINGDOM: "Ríos",DESCRIPTION: ""
},
{
LID: 200052,NAME_ES: "El Cántaro",NAME_EN: "",HOUSE: "Butterwell",HID: 300059,TYPE: "Castillo",KINGDOM: "Ríos",DESCRIPTION: ""
},
{
LID: 200053,NAME_ES: "Salinas",NAME_EN: "Saltpans",HOUSE: "Cox",HID: 300060,TYPE: "Pueblo",KINGDOM: "Ríos",DESCRIPTION: "Castillo"
},
{
LID: 200054,NAME_ES: "Darry",NAME_EN: "Darry",HOUSE: "Darry",HID: 300062,TYPE: "Castillo pequeño",KINGDOM: "Ríos",DESCRIPTION: ""
},
{
LID: 200055,NAME_ES: "Los Gemelos",NAME_EN: "The Twins",HOUSE: "Frey",HID: 300063,TYPE: "Castillo",KINGDOM: "Ríos",DESCRIPTION: ""
},
{
LID: 200056,NAME_ES: "Pantano de la Bruja",NAME_EN: "Hag's Mire",HOUSE: "Nayland",HID: 300064,TYPE: "Torre",KINGDOM: "Ríos",DESCRIPTION: ""
},
{
LID: 200057,NAME_ES: "Buenmercado",NAME_EN: "Fairmarket",HOUSE: "Goodbrook",HID: 300065,TYPE: "Pueblo",KINGDOM: "Ríos",DESCRIPTION: "Torre"
},
{
LID: 200058,NAME_ES: "Septo de Piedra",NAME_EN: "Stoney Sept",HOUSE: "Keath",HID: 300067,TYPE: "Pueblo",KINGDOM: "Ríos",DESCRIPTION: "Torre"
},
{
LID: 200059,NAME_ES: "Varamar",NAME_EN: "Seagard",HOUSE: "Mallister",HID: 300066,TYPE: "Castillo",KINGDOM: "Ríos",DESCRIPTION: ""
},
{
LID: 200060,NAME_ES: "Poza de la Doncella",NAME_EN: "Maidenpool",HOUSE: "Mooton",HID: 300068,TYPE: "Castillo",KINGDOM: "Ríos",DESCRIPTION: ""
},
{
LID: 200061,NAME_ES: "Princesa Rosada",NAME_EN: "Pinkmaiden",HOUSE: "Piper",HID: 300070,TYPE: "Castillo",KINGDOM: "Ríos",DESCRIPTION: ""
},
{
LID: 200062,NAME_ES: "Aldea de Lord Harroway",NAME_EN: "Lort Harroway's Town",HOUSE: "Roote",HID: 300069,TYPE: "Castillo",KINGDOM: "Ríos",DESCRIPTION: ""
},
{
LID: 200063,NAME_ES: "Bosque de Sauces",NAME_EN: "Willow Wood",HOUSE: "Ryger",HID: 300071,TYPE: "Castillo",KINGDOM: "Ríos",DESCRIPTION: ""
},
{
LID: 200064,NAME_ES: "Torreón Bellota",NAME_EN: "Acorn Hall",HOUSE: "Smallwood",HID: 300072,TYPE: "Castillo pequeño",KINGDOM: "Ríos",DESCRIPTION: ""
},
{
LID: 200065,NAME_ES: "Atranta",NAME_EN: "Atranta",HOUSE: "Vance",HID: 300073,TYPE: "Castillo pequeño",KINGDOM: "Ríos",DESCRIPTION: ""
},
{
LID: 200066,NAME_ES: "Descanso del Caminante",NAME_EN: "Wayfarer's Rest",HOUSE: "Vance",HID: 300074,TYPE: "Castillo",KINGDOM: "Ríos",DESCRIPTION: ""
},
{
LID: 200067,NAME_ES: "Harrenhal",NAME_EN: "Harrenhal",HOUSE: "Whent",HID: 300075,TYPE: "Castillo",KINGDOM: "Ríos",DESCRIPTION: ""
},
{
LID: 200068,NAME_ES: "Roca Casterly",NAME_EN: "Casterly Rock",HOUSE: "Lannister",HID: 300076,TYPE: "Castillo",KINGDOM: "Occidente",DESCRIPTION: ""
},
{
LID: 200069,NAME_ES: "Lannisport",NAME_EN: "Lannisport",HOUSE: "Lannister",HID: 300077,TYPE: "Ciudad",KINGDOM: "Occidente",DESCRIPTION: ""
},
{
LID: 200070,NAME_ES: "Fuerte Desolación",NAME_EN: "Banefort",HOUSE: "Banefort",HID: 300078,TYPE: "Castillo",KINGDOM: "Occidente",DESCRIPTION: ""
},
{
LID: 200071,NAME_ES: "Valdecuerno",NAME_EN: "Hornvale",HOUSE: "Brax",HID: 300079,TYPE: "Castillo",KINGDOM: "Occidente",DESCRIPTION: ""
},
{
LID: 200072,NAME_ES: "Refugio Quebrado",NAME_EN: "Crakehall",HOUSE: "Crakehall",HID: 300080,TYPE: "Castillo",KINGDOM: "Occidente",DESCRIPTION: ""
},
{
LID: 200073,NAME_ES: "Salón del Viento",NAME_EN: "Wyndhall",HOUSE: "Estren",HID: 300081,TYPE: "Castillo pequeño",KINGDOM: "Occidente",DESCRIPTION: ""
},
{
LID: 200074,NAME_ES: "Torrelabella",NAME_EN: "Faircastle",HOUSE: "Farman",HID: 300084,TYPE: "Castillo",KINGDOM: "Occidente",DESCRIPTION: ""
},
{
LID: 200075,NAME_ES: "Greenfield",NAME_EN: "Greenfield",HOUSE: "Greenfield",HID: 300086,TYPE: "Castillo pequeño",KINGDOM: "Occidente",DESCRIPTION: ""
},
{
LID: 200076,NAME_ES: "Kayce",NAME_EN: "Kayce",HOUSE: "Kenning",HID: 300083,TYPE: "Castillo",KINGDOM: "Occidente",DESCRIPTION: ""
},
{
LID: 200077,NAME_ES: "Colmillo Dorado",NAME_EN: "Golden Tooth",HOUSE: "Lefford",HID: 300082,TYPE: "Castillo",KINGDOM: "Occidente",DESCRIPTION: ""
},
{
LID: 200078,NAME_ES: "Cuevahonda",NAME_EN: "Deep Den",HOUSE: "Lydden",HID: 300085,TYPE: "Castillo",KINGDOM: "Occidente",DESCRIPTION: ""
},
{
LID: 200079,NAME_ES: "Marcaceniza",NAME_EN: "Ashemark",HOUSE: "Marbrand",HID: 300088,TYPE: "Castillo",KINGDOM: "Occidente",DESCRIPTION: ""
},
{
LID: 200080,NAME_ES: "Las Hogueras",NAME_EN: "Feastfires",HOUSE: "Prester",HID: 300089,TYPE: "Castillo",KINGDOM: "Occidente",DESCRIPTION: ""
},
{
LID: 200081,NAME_ES: "Sarsfield",NAME_EN: "Sarsfield",HOUSE: "Sarsfield",HID: 300090,TYPE: "Castillo",KINGDOM: "Occidente",DESCRIPTION: ""
},
{
LID: 200082,NAME_ES: "Refugio de Plata",NAME_EN: "Silverhill",HOUSE: "Serret",HID: 300091,TYPE: "Castillo",KINGDOM: "Occidente",DESCRIPTION: ""
},
{
LID: 200083,NAME_ES: "Maizal",NAME_EN: "Cornfield",HOUSE: "Swyft",HID: 300093,TYPE: "Castillo",KINGDOM: "Occidente",DESCRIPTION: ""
},
{
LID: 200084,NAME_ES: "El Risco",NAME_EN: "The Crag",HOUSE: "Westerling",HID: 300094,TYPE: "Castillo",KINGDOM: "Occidente",DESCRIPTION: ""
},
{
LID: 200085,NAME_ES: "Pyke",NAME_EN: "Pyke",HOUSE: "Greyjoy",HID: 300095,TYPE: "Castillo",KINGDOM: "Islas del Hierro",DESCRIPTION: ""
},
{
LID: 200207,NAME_ES: "Puerto Noble",NAME_EN: "Lordsport",HOUSE: "Botley",HID: 300095,TYPE: "Pueblo",KINGDOM: "Islas del Hierro",DESCRIPTION: "Torre"
},
{
LID: 200087,NAME_ES: "Castroferro",NAME_EN: "Iron Holt",HOUSE: "Wynch",HID: 300095,TYPE: "Castillo pequeño",KINGDOM: "Islas del Hierro",DESCRIPTION: ""
},
{
LID: 200088,NAME_ES: "Marea Negra",NAME_EN: "Blacktyde",HOUSE: "Blacktyde",HID: 300095,TYPE: "Castillo pequeño",KINGDOM: "Islas del Hierro",DESCRIPTION: ""
},
{
LID: 200089,NAME_ES: "Monteorca",NAME_EN: "Orkwood",HOUSE: "Orkwood",HID: 300095,TYPE: "Castillo pequeño",KINGDOM: "Islas del Hierro",DESCRIPTION: ""
},
{
LID: 200206,NAME_ES: "Guijarra",NAME_EN: "Pebbleton",HOUSE: "Merlyn",HID: 300099,TYPE: "Pueblo",KINGDOM: "Islas del Hierro",DESCRIPTION: "Torre"
},
{
LID: 200090,NAME_ES: "Lago del Cadaver",NAME_EN: "Castle Goodbrother",HOUSE: "Goodbrother",HID: 300096,TYPE: "Castillo pequeño",KINGDOM: "Islas del Hierro",DESCRIPTION: ""
},
{
LID: 200091,NAME_ES: "Torreón Pico de Cuervo",NAME_EN: "Crow Spike Keep",HOUSE: "Goodbrother",HID: 300097,TYPE: "Castillo pequeño",KINGDOM: "Islas del Hierro",DESCRIPTION: ""
},
{
LID: 200092,NAME_ES: "Fosa",NAME_EN: "Downdelving",HOUSE: "Goodbrother",HID: 300131,TYPE: "Castillo pequeño",KINGDOM: "Islas del Hierro",DESCRIPTION: ""
},
{
LID: 200093,NAME_ES: "Cuerno martillo",NAME_EN: "Hammerhorn",HOUSE: "Goodbrother",HID: 300098,TYPE: "Castillo pequeño",KINGDOM: "Islas del Hierro",DESCRIPTION: ""
},
{
LID: 200095,NAME_ES: "Punta piel de foca",NAME_EN: "Sealskin Point",HOUSE: "Farwynd",HID: 300100,TYPE: "Castillo pequeño",KINGDOM: "Islas del Hierro",DESCRIPTION: ""
},
{
LID: 200096,NAME_ES: "Drumm",NAME_EN: "Drumm",HOUSE: "Drumm",HID: 300101,TYPE: "Castillo pequeño",KINGDOM: "Islas del Hierro",DESCRIPTION: ""
},
{
LID: 200097,NAME_ES: "Piedraquebrada",NAME_EN: "Shatterstone",HOUSE: "Goodbrother",HID: 300102,TYPE: "Castillo pequeño",KINGDOM: "Islas del Hierro",DESCRIPTION: ""
},
{
LID: 200098,NAME_ES: "Luz Solitaria",NAME_EN: "Lonely Light",HOUSE: "Farwynd",HID: 300103,TYPE: "Castillo pequeño",KINGDOM: "Islas del Hierro",DESCRIPTION: ""
},
{
LID: 200099,NAME_ES: "Acantilado de Sal",NAME_EN: "Saltcliffe",HOUSE: "Saltcliffe",HID: 300104,TYPE: "Castillo pequeño",KINGDOM: "Islas del Hierro",DESCRIPTION: ""
},
{
LID: 200100,NAME_ES: "Diez Torres",NAME_EN: "Ten Towers",HOUSE: "Harlaw",HID: 300105,TYPE: "Castillo",KINGDOM: "Islas del Hierro",DESCRIPTION: ""
},
{
LID: 200101,NAME_ES: "Colina de la Bruja",NAME_EN: "Harridan Hill",HOUSE: "Harlaw",HID: 300106,TYPE: "Castillo pequeño",KINGDOM: "Islas del Hierro",DESCRIPTION: ""
},
{
LID: 200102,NAME_ES: "Torre del Resplandor",NAME_EN: "Tower of Glimmering",HOUSE: "Harlaw",HID: 300108,TYPE: "Castillo pequeño",KINGDOM: "Islas del Hierro",DESCRIPTION: ""
},
{
LID: 200103,NAME_ES: "Jardín Gris",NAME_EN: "Grey Garden",HOUSE: "Harlaw",HID: 300109,TYPE: "Castillo pequeño",KINGDOM: "Islas del Hierro",DESCRIPTION: ""
},
{
LID: 200204,NAME_ES: "Salón de Harlaw",NAME_EN: "Harlaw Hall",HOUSE: "Harlaw",HID: 300109,TYPE: "Castillo pequeño",KINGDOM: "Islas del Hierro",DESCRIPTION: ""
},
{
LID: 200205,NAME_ES: "Volmark",NAME_EN: "Volmark",HOUSE: "Volmark",HID: 300110,TYPE: "Castillo pequeño",KINGDOM: "Islas del Hierro",DESCRIPTION: ""
},
{
LID: 200106,NAME_ES: "Desembarco del Rey",NAME_EN: "King's Landing",HOUSE: "Baratheon",HID: 300111,TYPE: "Ciudad",KINGDOM: "Tierras de la Corona",DESCRIPTION: ""
},
{
LID: 200107,NAME_ES: "Vallepardo",NAME_EN: "Dyre Den",HOUSE: "Brune",HID: 300112,TYPE: "Castillo pequeño",KINGDOM: "Tierras de la Corona",DESCRIPTION: ""
},
{
LID: 200108,NAME_ES: "Malacosta",NAME_EN: "Brownhollow",HOUSE: "Brune",HID: 300113,TYPE: "Castillo pequeño",KINGDOM: "Tierras de la Corona",DESCRIPTION: ""
},
{
LID: 200109,NAME_ES: "Las Astas",NAME_EN: "Antlers",HOUSE: "Buckwell",HID: 300114,TYPE: "Castillo",KINGDOM: "Tierras de la Corona",DESCRIPTION: ""
},
{
LID: 200110,NAME_ES: "La Zarpa",NAME_EN: "Crackclaw",HOUSE: "Crabb",HID: 300115,TYPE: "Castillo pequeño",KINGDOM: "Tierras de la Corona",DESCRIPTION: ""
},
{
LID: 200111,NAME_ES: "Hayford",NAME_EN: "Hayford Castle",HOUSE: "Hayford",HID: 300116,TYPE: "Castillo pequeño",KINGDOM: "Tierras de la Corona",DESCRIPTION: ""
},
{
LID: 200112,NAME_ES: "Cuerno de la Puerca",NAME_EN: "Sow's Horn",HOUSE: "Hogg",HID: 300117,TYPE: "Castillo pequeño",KINGDOM: "Tierras de la Corona",DESCRIPTION: ""
},
{
LID: 200113,NAME_ES: "Rosby",NAME_EN: "Rosby",HOUSE: "Rosby",HID: 300118,TYPE: "Castillo pequeño",KINGDOM: "Tierras de la Corona",DESCRIPTION: ""
},
{
LID: 200114,NAME_ES: "Valleoscuro",NAME_EN: "Duskendale",HOUSE: "Rykker",HID: 300119,TYPE: "Pueblo",KINGDOM: "Tierras de la Corona",DESCRIPTION: "Castillo"
},
{
LID: 200115,NAME_ES: "Grajal",NAME_EN: "Rook's Rest",HOUSE: "Staunton",HID: 300119,TYPE: "Castillo pequeño",KINGDOM: "Tierras de la Corona",DESCRIPTION: ""
},
{
LID: 200116,NAME_ES: "Stokeworth",NAME_EN: "Stokeworth",HOUSE: "Stokeworth",HID: 300120,TYPE: "Castillo pequeño",KINGDOM: "Tierras de la Corona",DESCRIPTION: ""
},
{
LID: 200117,NAME_ES: "Rocadragon",NAME_EN: "Dragonstone",HOUSE: "Baratheon",HID: 300121,TYPE: "Castillo",KINGDOM: "Islas del Mar Angosto",DESCRIPTION: ""
},
{
LID: 200118,NAME_ES: "Punta Aguda",NAME_EN: "Sharp Point",HOUSE: "Bar Emmon",HID: 300122,TYPE: "Castillo",KINGDOM: "Islas del Mar Angosto",DESCRIPTION: ""
},
{
LID: 200119,NAME_ES: "Isla Zarpa",NAME_EN: "Claw Isle",HOUSE: "Celtigar",HID: 300123,TYPE: "Castillo",KINGDOM: "Islas del Mar Angosto",DESCRIPTION: ""
},
{
LID: 200120,NAME_ES: "Piedratormenta",NAME_EN: "Stonedance",HOUSE: "Massey",HID: 300124,TYPE: "Castillo",KINGDOM: "Islas del Mar Angosto",DESCRIPTION: ""
},
{
LID: 200121,NAME_ES: "Puerto Plácido",NAME_EN: "Sweetport Sound",HOUSE: "Sunglass",HID: 300125,TYPE: "Castillo pequeño",KINGDOM: "Islas del Mar Angosto",DESCRIPTION: ""
},
{
LID: 200122,NAME_ES: "Marcaderiva",NAME_EN: "Driftmark",HOUSE: "Velaryon",HID: 300126,TYPE: "Castillo pequeño",KINGDOM: "Islas del Mar Angosto",DESCRIPTION: ""
},
{
LID: 200123,NAME_ES: "Bastión de Tormentas",NAME_EN: "Storm's End",HOUSE: "Baratheon",HID: 300127,TYPE: "Castillo",KINGDOM: "Tierras de la Tormenta",DESCRIPTION: ""
},
{
LID: 200124,NAME_ES: "Puertabronce",NAME_EN: "Bronzegate",HOUSE: "Buckler",HID: 300128,TYPE: "Castillo",KINGDOM: "Tierras de la Tormenta",DESCRIPTION: ""
},
{
LID: 200125,NAME_ES: "Fawnton",NAME_EN: "Fawnton",HOUSE: "Cafferen",HID: 300129,TYPE: "Castillo pequeño",KINGDOM: "Tierras de la Tormenta",DESCRIPTION: ""
},
{
LID: 200126,NAME_ES: "Canto Nocturno",NAME_EN: "Nightsong",HOUSE: "Caron",HID: 300130,TYPE: "Castillo",KINGDOM: "Tierras de la Tormenta",DESCRIPTION: ""
},
{
LID: 200127,NAME_ES: "Nido de Grifos",NAME_EN: "Griffin's Roost",HOUSE: "Connington",HID: 300132,TYPE: "Castillo",KINGDOM: "Tierras de la Tormenta",DESCRIPTION: ""
},
{
LID: 200128,NAME_ES: "Refugio Negro",NAME_EN: "Blackhaven",HOUSE: "Dondarrion",HID: 300133,TYPE: "Castillo",KINGDOM: "Tierras de la Tormenta",DESCRIPTION: ""
},
{
LID: 200129,NAME_ES: "Pazo Pajar",NAME_EN: "Haystack Hall",HOUSE: "Errol",HID: 300134,TYPE: "Castillo",KINGDOM: "Tierras de la Tormenta",DESCRIPTION: ""
},
{
LID: 200130,NAME_ES: "Piedraverde",NAME_EN: "Greenstone",HOUSE: "Estermont",HID: 300135,TYPE: "Castillo",KINGDOM: "Tierras de la Tormenta",DESCRIPTION: ""
},
{
LID: 200131,NAME_ES: "Bosquealto",NAME_EN: "Felwood",HOUSE: "Fell",HID: 300136,TYPE: "Castillo pequeño",KINGDOM: "Tierras de la Tormenta",DESCRIPTION: ""
},
{
LID: 200132,NAME_ES: "Buenavista",NAME_EN: "Grandview",HOUSE: "Grandison",HID: 300137,TYPE: "Castillo",KINGDOM: "Tierras de la Tormenta",DESCRIPTION: ""
},
{
LID: 200133,NAME_ES: "Bosqueumbrío",NAME_EN: "Mistwood",HOUSE: "Mertyns",HID: 300138,TYPE: "Castillo pequeño",KINGDOM: "Tierras de la Tormenta",DESCRIPTION: ""
},
{
LID: 200134,NAME_ES: "Nido de Cuervo",NAME_EN: "Crow's Nest",HOUSE: "Morrigen",HID: 300139,TYPE: "Castillo",KINGDOM: "Tierras de la Tormenta",DESCRIPTION: ""
},
{
LID: 200135,NAME_ES: "Campoverde",NAME_EN: "Poddingfield",HOUSE: "Peasebury",HID: 300140,TYPE: "Castillo",KINGDOM: "Tierras de la Tormenta",DESCRIPTION: ""
},
{
LID: 200136,NAME_ES: "Los Pergaminos",NAME_EN: "Parchments",HOUSE: "Penrose",HID: 300141,TYPE: "Castillo",KINGDOM: "Tierras de la Tormenta",DESCRIPTION: ""
},
{
LID: 200137,NAME_ES: "Amberly",NAME_EN: "Amberly",HOUSE: "Rogers",HID: 300142,TYPE: "Castillo pequeño",KINGDOM: "Tierras de la Tormenta",DESCRIPTION: ""
},
{
LID: 200138,NAME_ES: "Torreón Cosecha",NAME_EN: "Harvest Hall",HOUSE: "Selmy",HID: 300143,TYPE: "Castillo",KINGDOM: "Tierras de la Tormenta",DESCRIPTION: ""
},
{
LID: 200139,NAME_ES: "Arco Ancho",NAME_EN: "Broad Arch",HOUSE: "Staedmon",HID: 300143,TYPE: "Castillo pequeño",KINGDOM: "Tierras de la Tormenta",DESCRIPTION: ""
},
{
LID: 200140,NAME_ES: "Timón de Piedra",NAME_EN: "Stonehelm",HOUSE: "Swann",HID: 300143,TYPE: "Castillo",KINGDOM: "Tierras de la Tormenta",DESCRIPTION: ""
},
{
LID: 200141,NAME_ES: "Castillo del Atardecer",NAME_EN: "Evenfall Hall",HOUSE: "Tarth",HID: 300143,TYPE: "Castillo pequeño",KINGDOM: "Tierras de la Tormenta",DESCRIPTION: ""
},
{
LID: 200142,NAME_ES: "Gallowsgrey",NAME_EN: "Gallowsgrey",HOUSE: "Trant",HID: 300144,TYPE: "Castillo pequeño",KINGDOM: "Tierras de la Tormenta",DESCRIPTION: ""
},
{
LID: 200143,NAME_ES: "Villallorosa",NAME_EN: "Weeping Tower",HOUSE: "Whitehead",HID: 300145,TYPE: "Pueblo",KINGDOM: "Tierras de la Tormenta",DESCRIPTION: "Castillo pequeño"
},
{
LID: 200144,NAME_ES: "Aguasmil",NAME_EN: "Rain House",HOUSE: "Wylde",HID: 300146,TYPE: "Castillo",KINGDOM: "Tierras de la Tormenta",DESCRIPTION: ""
},
{
LID: 200145,NAME_ES: "Altojardín",NAME_EN: "Highgarden",HOUSE: "Tyrell",HID: 300147,TYPE: "Castillo",KINGDOM: "Dominio",DESCRIPTION: ""
},
{
LID: 200146,NAME_ES: "Appleton",NAME_EN: "Appleton",HOUSE: "Appleton",HID: 300148,TYPE: "Castillo pequeño",KINGDOM: "Dominio",DESCRIPTION: ""
},
{
LID: 200147,NAME_ES: "Vado Ceniza",NAME_EN: "Ashford",HOUSE: "Ashford",HID: 300149,TYPE: "Castillo",KINGDOM: "Dominio",DESCRIPTION: ""
},
{
LID: 200148,NAME_ES: "Bandallon",NAME_EN: "Bandallon",HOUSE: "Blackbar",HID: 300150,TYPE: "Castillo",KINGDOM: "Dominio",DESCRIPTION: ""
},
{
LID: 200149,NAME_ES: "Hammerhal",NAME_EN: "Hammerhal",HOUSE: "Cordwayner",HID: 300151,TYPE: "Castillo pequeño",KINGDOM: "Dominio",DESCRIPTION: ""
},
{
LID: 200150,NAME_ES: "Lago Rojo",NAME_EN: "Red Lake",HOUSE: "Crane",HID: 300152,TYPE: "Castillo",KINGDOM: "Dominio",DESCRIPTION: ""
},
{
LID: 200151,NAME_ES: "Torreón de Aguasclaras",NAME_EN: "Brightwater Keep",HOUSE: "Florent",HID: 300153,TYPE: "Castillo",KINGDOM: "Dominio",DESCRIPTION: ""
},
{
LID: 200152,NAME_ES: "Ladera",NAME_EN: "Tumbleton",HOUSE: "Footy",HID: 300154,TYPE: "Castillo pequeño",KINGDOM: "Dominio",DESCRIPTION: ""
},
{
LID: 200153,NAME_ES: "La Sidra",NAME_EN: "Cider Hall",HOUSE: "Fossoway",HID: 300155,TYPE: "Castillo",KINGDOM: "Dominio",DESCRIPTION: ""
},
{
LID: 200154,NAME_ES: "Nuevo Barril",NAME_EN: "New Barrel",HOUSE: "Fossoway",HID: 300156,TYPE: "Castillo pequeño",KINGDOM: "Dominio",DESCRIPTION: ""
},
{
LID: 200155,NAME_ES: "Granmesa",NAME_EN: "Longtable",HOUSE: "Merryweather",HID: 300157,TYPE: "Castillo",KINGDOM: "Dominio",DESCRIPTION: ""
},
{
LID: 200156,NAME_ES: "Holyhall",NAME_EN: "Holyhall",HOUSE: "Graceford",HID: 300159,TYPE: "Castillo",KINGDOM: "Dominio",DESCRIPTION: ""
},
{
LID: 200157,NAME_ES: "Antigua",NAME_EN: "Oldtown",HOUSE: "Hightower",HID: 300160,TYPE: "Ciudad",KINGDOM: "Dominio",DESCRIPTION: ""
},
{
LID: 200158,NAME_ES: "Sotomiel",NAME_EN: "Honeyholt",HOUSE: "Beesbury",HID: 300165,TYPE: "Castillo",KINGDOM: "Dominio",DESCRIPTION: ""
},
{
LID: 200159,NAME_ES: "Corona Negra",NAME_EN: "Blackcrown",HOUSE: "Bulwer",HID: 300161,TYPE: "Castillo",KINGDOM: "Dominio",DESCRIPTION: ""
},
{
LID: 200160,NAME_ES: "Tres Torres",NAME_EN: "Three Towers",HOUSE: "Costayne",HID: 300162,TYPE: "Castillo pequeño",KINGDOM: "Dominio",DESCRIPTION: ""
},
{
LID: 200161,NAME_ES: "Refugio del Girasol",NAME_EN: "Sunflower Hall",HOUSE: "Cuy",HID: 300163,TYPE: "Castillo",KINGDOM: "Dominio",DESCRIPTION: ""
},
{
LID: 200162,NAME_ES: "Tierras Altas",NAME_EN: "Uplands",HOUSE: "Mullendore",HID: 300164,TYPE: "Castillo",KINGDOM: "Dominio",DESCRIPTION: ""
},
{
LID: 200163,NAME_ES: "Salón de la Hiedra",NAME_EN: "Ivy Hall",HOUSE: "Kidwell",HID: 300167,TYPE: "Castillo pequeño",KINGDOM: "Dominio",DESCRIPTION: ""
},
{
LID: 200164,NAME_ES: "Puenteamargo",NAME_EN: "Bitterbridge",HOUSE: "Caswell",HID: 300168,TYPE: "Castillo",KINGDOM: "Dominio",DESCRIPTION: ""
},
{
LID: 200165,NAME_ES: "Valdehierba",NAME_EN: "Grassy Vale",HOUSE: "Meadows",HID: 300169,TYPE: "Castillo",KINGDOM: "Dominio",DESCRIPTION: ""
},
{
LID: 200166,NAME_ES: "Viejo Roble",NAME_EN: "Old Oak",HOUSE: "Oakheart",HID: 300170,TYPE: "Castillo",KINGDOM: "Dominio",DESCRIPTION: ""
},
{
LID: 200167,NAME_ES: "Picaestrella",NAME_EN: "Starpike",HOUSE: "Peake",HID: 300171,TYPE: "Castillo pequeño",KINGDOM: "Dominio",DESCRIPTION: ""
},
{
LID: 200168,NAME_ES: "Sotodeoro",NAME_EN: "Goldengrove",HOUSE: "Rowan",HID: 300172,TYPE: "Castillo",KINGDOM: "Dominio",DESCRIPTION: ""
},
{
LID: 200169,NAME_ES: "Tiesa",NAME_EN: "Standfast",HOUSE: "Osgrey",HID: 300172,TYPE: "Castillo pequeño",KINGDOM: "Dominio",DESCRIPTION: ""
},
{
LID: 200170,NAME_ES: "Fosafría",NAME_EN: "Coldmoat",HOUSE: "Webber",HID: 300174,TYPE: "Castillo pequeño",KINGDOM: "Dominio",DESCRIPTION: ""
},
{
LID: 200171,NAME_ES: "El Rejo",NAME_EN: "The Arbor",HOUSE: "Redwyne",HID: 300175,TYPE: "Castillo",KINGDOM: "Dominio",DESCRIPTION: ""
},
{
LID: 200172,NAME_ES: "Puerto Ryam",NAME_EN: "Ryamsport",HOUSE: "Redwyne",HID: 300176,TYPE: "Pueblo",KINGDOM: "Dominio",DESCRIPTION: ""
},
{
LID: 200173,NAME_ES: "Viñaparra",NAME_EN: "Vinetown",HOUSE: "Redwyne",HID: 300177,TYPE: "Pueblo",KINGDOM: "Dominio",DESCRIPTION: ""
},
{
LID: 200174,NAME_ES: "Estrella de Mar",NAME_EN: "Starfish Harbor",HOUSE: "Redwyne",HID: 300180,TYPE: "Pueblo",KINGDOM: "Dominio",DESCRIPTION: ""
},
{
LID: 200175,NAME_ES: "Anillo",NAME_EN: "Ring",HOUSE: "Roxton",HID: 300181,TYPE: "Castillo pequeño",KINGDOM: "Dominio",DESCRIPTION: ""
},
{
LID: 200176,NAME_ES: "Smithyton",NAME_EN: "Smithyton",HOUSE: "Shermer",HID: 300182,TYPE: "Castillo pequeño",KINGDOM: "Dominio",DESCRIPTION: ""
},
{
LID: 200177,NAME_ES: "Colina Cuerno",NAME_EN: "Horn Hill",HOUSE: "Tarly",HID: 300183,TYPE: "Castillo",KINGDOM: "Dominio",DESCRIPTION: ""
},
{
LID: 200178,NAME_ES: "Darkdell",NAME_EN: "Darkdell",HOUSE: "Vyrwell",HID: 300184,TYPE: "Castillo pequeño",KINGDOM: "Dominio",DESCRIPTION: ""
},
{
LID: 200179,NAME_ES: "Escudo Verde",NAME_EN: "Greenshield",HOUSE: "Chester",HID: 300185,TYPE: "Castillo pequeño",KINGDOM: "Dominio",DESCRIPTION: ""
},
{
LID: 200180,NAME_ES: "Escudo Gris",NAME_EN: "Greyshield",HOUSE: "Grimm",HID: 300186,TYPE: "Castillo pequeño",KINGDOM: "Dominio",DESCRIPTION: ""
},
{
LID: 200181,NAME_ES: "Escudo de Roble",NAME_EN: "Oakenshield",HOUSE: "Hewett",HID: 300187,TYPE: "Castillo pequeño",KINGDOM: "Dominio",DESCRIPTION: ""
},
{
LID: 200182,NAME_ES: "Escudo Sur",NAME_EN: "Southshield",HOUSE: "Serry",HID: 300188,TYPE: "Castillo pequeño",KINGDOM: "Dominio",DESCRIPTION: ""
},
{
LID: 200183,NAME_ES: "Lanza del Sol",NAME_EN: "Sunspear",HOUSE: "Martell",HID: 300189,TYPE: "Ciudad",KINGDOM: "Dorne",DESCRIPTION: ""
},
{
LID: 200184,NAME_ES: "Rocagris",NAME_EN: "Ghaston Grey",HOUSE: "Martell",HID: 300190,TYPE: "Castillo",KINGDOM: "Dorne",DESCRIPTION: ""
},
{
LID: 200185,NAME_ES: "Bondadivina",NAME_EN: "Godsgrace",HOUSE: "Allyrion",HID: 300191,TYPE: "Castillo",KINGDOM: "Dorne",DESCRIPTION: ""
},
{
LID: 200186,NAME_ES: "Montenegro",NAME_EN: "Blackmont",HOUSE: "Blackmont",HID: 300192,TYPE: "Castillo",KINGDOM: "Dorne",DESCRIPTION: ""
},
{
LID: 200187,NAME_ES: "Limonar",NAME_EN: "Lemonwood",HOUSE: "Dalt",HID: 300193,TYPE: "Castillo pequeño",KINGDOM: "Dorne",DESCRIPTION: ""
},
{
LID: 200188,NAME_ES: "Campoestrella",NAME_EN: "Starfall",HOUSE: "Dayne",HID: 300194,TYPE: "Castillo",KINGDOM: "Dorne",DESCRIPTION: ""
},
{
LID: 200189,NAME_ES: "Ermita Alta",NAME_EN: "High Hermitage",HOUSE: "Dayne",HID: 300195,TYPE: "Castillo pequeño",KINGDOM: "Dorne",DESCRIPTION: ""
},
{
LID: 200190,NAME_ES: "Dominio del Cielo",NAME_EN: "Skyreach",HOUSE: "Fowler",HID: 300195,TYPE: "Castillo",KINGDOM: "Dorne",DESCRIPTION: ""
},
{
LID: 200191,NAME_ES: "Costa Salada",NAME_EN: "Salt Shore",HOUSE: "Gargalen",HID: 300196,TYPE: "Castillo",KINGDOM: "Dorne",DESCRIPTION: ""
},
{
LID: 200192,NAME_ES: "Tor",NAME_EN: "The Tor",HOUSE: "Jordayne",HID: 300197,TYPE: "Castillo",KINGDOM: "Dorne",DESCRIPTION: ""
},
{
LID: 200193,NAME_ES: "Sepulcro del Rey",NAME_EN: "Kingsgrave",HOUSE: "Manwoody",HID: 300198,TYPE: "Castillo",KINGDOM: "Dorne",DESCRIPTION: ""
},
{
LID: 200194,NAME_ES: "Asperón",NAME_EN: "Sandstone",HOUSE: "Qorgyle",HID: 300199,TYPE: "Castillo",KINGDOM: "Dorne",DESCRIPTION: ""
},
{
LID: 200195,NAME_ES: "Bosquepinto",NAME_EN: "Spottswood",HOUSE: "Santagar",HID: 300200,TYPE: "Castillo",KINGDOM: "Dorne",DESCRIPTION: ""
},
{
LID: 200196,NAME_ES: "Colina Fantasma",NAME_EN: "Ghost Hill",HOUSE: "Toland",HID: 300201,TYPE: "Castillo pequeño",KINGDOM: "Dorne",DESCRIPTION: ""
},
{
LID: 200197,NAME_ES: "Sotoinferno",NAME_EN: "Hellholt",HOUSE: "Uller",HID: 300202,TYPE: "Castillo",KINGDOM: "Dorne",DESCRIPTION: ""
},
{
LID: 200198,NAME_ES: "Dunas Rojas",NAME_EN: "Vaith",HOUSE: "Vaith",HID: 300203,TYPE: "Castillo",KINGDOM: "Dorne",DESCRIPTION: ""
},
{
LID: 200199,NAME_ES: "Wyl",NAME_EN: "Wyl",HOUSE: "Wyl",HID: 300204,TYPE: "Castillo",KINGDOM: "Dorne",DESCRIPTION: ""
},
{
LID: 200200,NAME_ES: "Palosanto",NAME_EN: "Yronwood",HOUSE: "Yronwood",HID: 300205,TYPE: "Castillo",KINGDOM: "Dorne",DESCRIPTION: ""
},
{
LID: 200201,NAME_ES: "Dunstonbury",NAME_EN: "Dunstonbury",HOUSE: "Dunn",HID: 300206,TYPE: "Castillo",KINGDOM: "Dominio",DESCRIPTION: ""
},
{
LID: 200202,NAME_ES: "Sotoblanco",NAME_EN: "Whitegrove",HOUSE: "Ambrose",HID: 300207,TYPE: "Castillo pequeño",KINGDOM: "Dominio",DESCRIPTION: ""
},
{
LID: 200203,NAME_ES: "Marea Alta",NAME_EN: "High Tide",HOUSE: "Velaryon",HID: 300208,TYPE: "Castillo",KINGDOM: "Islas del Mar Angosto",DESCRIPTION: ""
},
{
LID: 400001,NAME_ES: "Braavos",NAME_EN: "Braavos",HOUSE: "Essos",HID: "",TYPE: "Ciudad",KINGDOM: "",DESCRIPTION: ""
},
{
LID: 400002,NAME_ES: "Lorath",NAME_EN: "Lorath",HOUSE: "Essos",HID: "",TYPE: "Ciudad",KINGDOM: "",DESCRIPTION: ""
},
{
LID: 400003,NAME_ES: "Pentos",NAME_EN: "Pentos",HOUSE: "Essos",HID: "",TYPE: "Ciudad",KINGDOM: "",DESCRIPTION: ""
},
{
LID: 400004,NAME_ES: "Myr",NAME_EN: "Myr",HOUSE: "Essos",HID: "",TYPE: "Ciudad",KINGDOM: "",DESCRIPTION: ""
},
{
LID: 400005,NAME_ES: "Tyrosh",NAME_EN: "Tyrosh",HOUSE: "Essos",HID: "",TYPE: "Ciudad",KINGDOM: "",DESCRIPTION: ""
},
{
LID: 400006,NAME_ES: "Lys",NAME_EN: "Lys",HOUSE: "Essos",HID: "",TYPE: "Ciudad",KINGDOM: "",DESCRIPTION: ""
},
{
LID: 400007,NAME_ES: "Volantis",NAME_EN: "Volantis",HOUSE: "Essos",HID: "",TYPE: "Ciudad",KINGDOM: "",DESCRIPTION: ""
},
{
LID: 400008,NAME_ES: "Qohor",NAME_EN: "Qohor",HOUSE: "Essos",HID: "",TYPE: "Ciudad",KINGDOM: "",DESCRIPTION: ""
},
{
LID: 400009,NAME_ES: "Norvos",NAME_EN: "Norvos",HOUSE: "Essos",HID: "",TYPE: "Ciudad",KINGDOM: "",DESCRIPTION: ""
},
{
LID: 400010,NAME_ES: "Los Susurros",NAME_EN: "The Whispers",HOUSE: "Tierras de la Corona",HID: "",TYPE: "Ruinas",KINGDOM: "",DESCRIPTION: ""
},
{
LID: 400011,NAME_ES: "Murosblancos",NAME_EN: "Whitewalls",HOUSE: "Ríos",HID: "",TYPE: "Ruinas",KINGDOM: "",DESCRIPTION: ""
},
{
LID: 400012,NAME_ES: "Castamere",NAME_EN: "Castamere",HOUSE: "Occidente",HID: "",TYPE: "Ruinas",KINGDOM: "",DESCRIPTION: ""
},
{
LID: 400013,NAME_ES: "Salón de Tarbeck",NAME_EN: "Tarbeck Hall",HOUSE: "Occidente",HID: "",TYPE: "Ruinas",KINGDOM: "",DESCRIPTION: ""
},
{
LID: 400014,NAME_ES: "Foso Cailin",NAME_EN: "Moat Cailin",HOUSE: "Norte",HID: "",TYPE: "Ruinas",KINGDOM: "",DESCRIPTION: ""
},
{
LID: 400015,NAME_ES: "Sima de Nunn",NAME_EN: "Nunn's Deep",HOUSE: "Occidente",HID: "",TYPE: "Mina",KINGDOM: "",DESCRIPTION: ""
},
{
LID: 400016,NAME_ES: "Colinas de Pendric",NAME_EN: "Pendric Hills",HOUSE: "Occidente",HID: "",TYPE: "Mina",KINGDOM: "",DESCRIPTION: ""
},
{
LID: 400017,NAME_ES: "Minas de los Manderly",NAME_EN: "Manderly Mines",HOUSE: "Norte",HID: "",TYPE: "Mina",KINGDOM: "",DESCRIPTION: ""
},
{
LID: 400018,NAME_ES: "Refugio Estival",NAME_EN: "Summerhall",HOUSE: "Tierras de la Tormenta",HID: "",TYPE: "Ruinas",KINGDOM: "",DESCRIPTION: ""
},
{
LID: 400019,NAME_ES: "",NAME_EN: "",HOUSE: "Ríos",HID: "",TYPE: "Puente",KINGDOM: "",DESCRIPTION: ""
},
{
LID: 400020,NAME_ES: "",NAME_EN: "",HOUSE: "Ríos",HID: "",TYPE: "Puente",KINGDOM: "",DESCRIPTION: ""
},
{
LID: 400021,NAME_ES: "",NAME_EN: "",HOUSE: "Dominio",HID: "",TYPE: "Puente",KINGDOM: "",DESCRIPTION: ""
},
{
LID: 400022,NAME_ES: "",NAME_EN: "",HOUSE: "Dominio",HID: "",TYPE: "Puente",KINGDOM: "",DESCRIPTION: ""
},
{
LID: 400023,NAME_ES: "",NAME_EN: "",HOUSE: "Dominio",HID: "",TYPE: "Puente",KINGDOM: "",DESCRIPTION: ""
},
{
LID: 400024,NAME_ES: "Vado del Titiritero",NAME_EN: "Mummer's Ford",HOUSE: "Ríos",HID: "",TYPE: "Vado",KINGDOM: "",DESCRIPTION: ""
},
{
LID: 400025,NAME_ES: "Molino de Piedra",NAME_EN: "Stone Mill",HOUSE: "Ríos",HID: "",TYPE: "Vado",KINGDOM: "",DESCRIPTION: ""
},
{
LID: 400026,NAME_ES: "Vado Tridente",NAME_EN: "Trident Ford",HOUSE: "Ríos",HID: "",TYPE: "Vado",KINGDOM: "",DESCRIPTION: ""
},
{
LID: 400027,NAME_ES: "",NAME_EN: "",HOUSE: "Dorne",HID: "",TYPE: "Vado",KINGDOM: "",DESCRIPTION: ""
},
{
LID: 400028,NAME_ES: "",NAME_EN: "",HOUSE: "Norte",HID: "",TYPE: "Vado",KINGDOM: "",DESCRIPTION: ""
},
{
LID: 400029,NAME_ES: "",NAME_EN: "",HOUSE: "Norte",HID: "",TYPE: "Vado",KINGDOM: "",DESCRIPTION: ""
},
{
LID: 400030,NAME_ES: "",NAME_EN: "",HOUSE: "Ríos",HID: "",TYPE: "Vado",KINGDOM: "",DESCRIPTION: ""
},
{
LID: 400031,NAME_ES: "",NAME_EN: "",HOUSE: "Valle",HID: "",TYPE: "Vado",KINGDOM: "",DESCRIPTION: ""
},
{
LID: 400032,NAME_ES: "Torreón de Craster",NAME_EN: "Craster's Keep",HOUSE: "Más-allá-del-muro",HID: "",TYPE: "Torre",KINGDOM: "",DESCRIPTION: ""
},
{
LID: 400033,NAME_ES: "Casa Austera",NAME_EN: "Hardhome",HOUSE: "Más-allá-del-muro",HID: "",TYPE: "Pueblo",KINGDOM: "",DESCRIPTION: ""
},
{
LID: 400034,NAME_ES: "Guardaoccidente del Río",NAME_EN: "Westwatch-by-the-Bridge",HOUSE: "Norte",HID: "",TYPE: "Ruinas",KINGDOM: "",DESCRIPTION: ""
},
{
LID: 400035,NAME_ES: "Torre Sombría",NAME_EN: "The Shadow Tower",HOUSE: "Norte",HID: "",TYPE: "Torre",KINGDOM: "",DESCRIPTION: ""
},
{
LID: 400036,NAME_ES: "Garita",NAME_EN: "Sentinel Guard",HOUSE: "Norte",HID: "",TYPE: "Ruinas",KINGDOM: "",DESCRIPTION: ""
},
{
LID: 400037,NAME_ES: "Guardiagrís",NAME_EN: "Greyguard",HOUSE: "Norte",HID: "",TYPE: "Ruinas",KINGDOM: "",DESCRIPTION: ""
},
{
LID: 400038,NAME_ES: "Puerta Piedra",NAME_EN: "Stonedoor",HOUSE: "Norte",HID: "",TYPE: "Ruinas",KINGDOM: "",DESCRIPTION: ""
},
{
LID: 400039,NAME_ES: "Colina Escarcha",NAME_EN: "Hoarfrost Hill",HOUSE: "Norte",HID: "",TYPE: "Ruinas",KINGDOM: "",DESCRIPTION: ""
},
{
LID: 400040,NAME_ES: "Marcahielo",NAME_EN: "Icemark",HOUSE: "Norte",HID: "",TYPE: "Ruinas",KINGDOM: "",DESCRIPTION: ""
},
{
LID: 400041,NAME_ES: "Fuerte de la Noche",NAME_EN: "The Nightfort",HOUSE: "Norte",HID: "",TYPE: "Ruinas",KINGDOM: "",DESCRIPTION: ""
},
{
LID: 400042,NAME_ES: "Lago Hondo",NAME_EN: "Deeplake",HOUSE: "Norte",HID: "",TYPE: "Ruinas",KINGDOM: "",DESCRIPTION: ""
},
{
LID: 400043,NAME_ES: "Puerta de la Reina",NAME_EN: "Queensgate",HOUSE: "Norte",HID: "",TYPE: "Ruinas",KINGDOM: "",DESCRIPTION: ""
},
{
LID: 400044,NAME_ES: "Castillo Negro",NAME_EN: "Castle Black",HOUSE: "Norte",HID: "",TYPE: "Castillo",KINGDOM: "",DESCRIPTION: ""
},
{
LID: 400045,NAME_ES: "Escudo de Roble",NAME_EN: "Oakenshield",HOUSE: "Norte",HID: "",TYPE: "Ruinas",KINGDOM: "",DESCRIPTION: ""
},
{
LID: 400046,NAME_ES: "Guardabosque del Lago",NAME_EN: "Woodswatch-by-the-Pool",HOUSE: "Norte",HID: "",TYPE: "Ruinas",KINGDOM: "",DESCRIPTION: ""
},
{
LID: 400047,NAME_ES: "Fortaleza de Azabache",NAME_EN: "Sable Hall",HOUSE: "Norte",HID: "",TYPE: "Ruinas",KINGDOM: "",DESCRIPTION: ""
},
{
LID: 400048,NAME_ES: "Puertaescarcha",NAME_EN: "Rimegate",HOUSE: "Norte",HID: "",TYPE: "Ruinas",KINGDOM: "",DESCRIPTION: ""
},
{
LID: 400049,NAME_ES: "Túmulo Largo",NAME_EN: "Long Barrow",HOUSE: "Norte",HID: "",TYPE: "Ruinas",KINGDOM: "",DESCRIPTION: ""
},
{
LID: 400050,NAME_ES: "Antorchas",NAME_EN: "The Torches",HOUSE: "Norte",HID: "",TYPE: "Ruinas",KINGDOM: "",DESCRIPTION: ""
},
{
LID: 400051,NAME_ES: "Guardiaverde",NAME_EN: "Greenguard",HOUSE: "Norte",HID: "",TYPE: "Ruinas",KINGDOM: "",DESCRIPTION: ""
},
{
LID: 400052,NAME_ES: "Guardiaoriente del Mar",NAME_EN: "Eastwatch-by-the-Sea",HOUSE: "Norte",HID: "",TYPE: "Castillo",KINGDOM: "",DESCRIPTION: ""
},
{
LID: 400053,NAME_ES: "Puño de los Primeros Hombres",NAME_EN: "Fist of the First Men",HOUSE: "Más-allá-del-muro",HID: "",TYPE: "Ruinas",KINGDOM: "",DESCRIPTION: ""
}
])