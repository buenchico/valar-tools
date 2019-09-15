# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create([
{
player: "Valar", house: "Admin", password: Rails.application.secrets[:admin_password]
}
])

Location.create([
{
lid: 200001,name_es: "Nido de las Águilas",name_en: "The Eyrie",house: "Arryn",hid: 300002,location_type: "Castillo",kingdom: "Valle",description: ""
},
{
lid: 200002,name_es: "Puertas de la Sangre",name_en: "The Bloody Gate",house: "Arryn",hid: 300206,location_type: "Castillo",kingdom: "Valle",description: ""
},
{
lid: 200003,name_es: "Rapsodia",name_en: "Strongsong",house: "Belmore",hid: 300003,location_type: "Castillo",kingdom: "Valle",description: ""
},
{
lid: 200004,name_es: "Acantilado Negro",name_en: "",house: "Sunderland",hid: 300004,location_type: "Castillo",kingdom: "Valle",description: ""
},
{
lid: 200005,name_es: "Aguasrecias",name_en: "",house: "Longthorpe",hid: 300004,location_type: "Castillo pequeño",kingdom: "Valle",description: ""
},
{
lid: 200006,name_es: "Rompeolas",name_en: "",house: "Borrell",hid: 300005,location_type: "Castillo",kingdom: "Valle",description: ""
},
{
lid: 200007,name_es: "Marea Roja",name_en: "",house: "Torrent",hid: 300008,location_type: "Torre",kingdom: "Valle",description: ""
},
{
lid: 200008,name_es: "Villahermana",name_en: "Sisterton",house: "Sunderland",hid: 300009,location_type: "Pueblo",kingdom: "Valle",description: ""
},
{
lid: 200009,name_es: "Hogar",name_en: "Heart's Home",house: "Corbray",hid: 300010,location_type: "Castillo",kingdom: "Valle",description: ""
},
{
lid: 200010,name_es: "Los Senos",name_en: "The Paps",house: "Elesham",hid: 300010,location_type: "Castillo pequeño",kingdom: "Valle",description: ""
},
{
lid: 200011,name_es: "Puerto Gaviota",name_en: "Gulltown",house: "Grafton",hid: 300010,location_type: "Ciudad",kingdom: "Valle",description: ""
},
{
lid: 200012,name_es: "Nuevo Torreon",name_en: "New Keep",house: "Hersy",hid: 300011,location_type: "Castillo pequeño",kingdom: "Valle",description: ""
},
{
lid: 200013,name_es: "Arcolargo",name_en: "Longbow Hall",house: "Hunter",hid: 300012,location_type: "Castillo",kingdom: "Valle",description: ""
},
{
lid: 200014,name_es: "Bosque de la Serpiente",name_en: "Snakewood",house: "Lynderly",hid: 300013,location_type: "Castillo",kingdom: "Valle",description: ""
},
{
lid: 200015,name_es: "Varadero Viejo",name_en: "Old Anchor",house: "Melcom",hid: 300014,location_type: "Castillo",kingdom: "Valle",description: ""
},
{
lid: 200016,name_es: "Guijarro",name_en: "Pebble",house: "Pryor",hid: 300016,location_type: "Castillo pequeño",kingdom: "Valle",description: ""
},
{
lid: 200017,name_es: "Fuerterrojo",name_en: "Redfort",house: "Redfort",hid: 300017,location_type: "Castillo",kingdom: "Valle",description: ""
},
{
lid: 200018,name_es: "Puertas de la Luna",name_en: "Gates of the Moon",house: "Royce",hid: 300021,location_type: "Castillo",kingdom: "Valle",description: ""
},
{
lid: 200019,name_es: "Piedra de las Runas",name_en: "Runestone",house: "Royce",hid: 300022,location_type: "Castillo",kingdom: "Valle",description: ""
},
{
lid: 200020,name_es: "Comezón de Aguasfrías",name_en: "Coldwater",house: "Coldwater",hid: 300023,location_type: "Castillo pequeño",kingdom: "Valle",description: ""
},
{
lid: 200021,name_es: "Torre Gaviota",name_en: "Gull Tower",house: "Shett",hid: 300024,location_type: "Torre",kingdom: "Valle",description: ""
},
{
lid: 200022,name_es: "Soto Gris",name_en: "Grey Glen",house: "Tollet",hid: 300025,location_type: "Castillo pequeño",kingdom: "Valle",description: ""
},
{
lid: 200023,name_es: "Nuevestrellas",name_en: "Ninestars",house: "Templeton",hid: 300028,location_type: "Castillo",kingdom: "Valle",description: ""
},
{
lid: 200024,name_es: "Isla de la Bruja",name_en: "Witch Isle",house: "Upcliff",hid: 300027,location_type: "Castillo pequeño",kingdom: "Valle",description: ""
},
{
lid: 200025,name_es: "Serbaledo",name_en: "Wickenden",house: "Waxley",hid: 300029,location_type: "Castillo",kingdom: "Valle",description: ""
},
{
lid: 200026,name_es: "Roble de hierro",name_en: "Ironoaks",house: "Waynwood",hid: 300030,location_type: "Castillo",kingdom: "Valle",description: ""
},
{
lid: 200027,name_es: "Invernalia",name_en: "Winterfell",house: "Stark",hid: 300031,location_type: "Castillo",kingdom: "Norte",description: ""
},
{
lid: 200028,name_es: "Fuerte Terror",name_en: "The Dreadfort",house: "Bolton",hid: 300033,location_type: "Castillo",kingdom: "Norte",description: ""
},
{
lid: 200029,name_es: "Pozanegra",name_en: "Blackpool",house: "Slate",hid: 300035,location_type: "Castillo pequeño",kingdom: "Norte",description: ""
},
{
lid: 200030,name_es: "Cerwyn",name_en: "Cerwyn",house: "Cerwyn",hid: 300036,location_type: "Castillo",kingdom: "Norte",description: ""
},
{
lid: 200031,name_es: "Fuerte Túmulo",name_en: "Barrowton",house: "Dustin",hid: 300037,location_type: "Pueblo",kingdom: "Norte",description: ""
},
{
lid: 200032,name_es: "Valdehierba",name_en: "Grassy Vale",house: "Stout",hid: 300038,location_type: "Castillo pequeño",kingdom: "Norte",description: ""
},
{
lid: 200033,name_es: "Dedo de Pedernal",name_en: "Flint's Finger",house: "Flint",hid: 300039,location_type: "Castillo pequeño",kingdom: "Norte",description: ""
},
{
lid: 200034,name_es: "Atalaya de la Viuda",name_en: "Widow's Watch",house: "Flint",hid: 300092,location_type: "Castillo pequeño",kingdom: "Norte",description: ""
},
{
lid: 200035,name_es: "Bosqueespeso",name_en: "Deepwood Motte",house: "Glover",hid: 300041,location_type: "Castillo",kingdom: "Norte",description: ""
},
{
lid: 200036,name_es: "Ironrath",name_en: "Ironrath",house: "Forrester",hid: 300042,location_type: "Castillo pequeño",kingdom: "Norte",description: ""
},
{
lid: 200037,name_es: "Puerta del Carnero",name_en: "Ramsgate",house: "Holdstock",hid: 300043,location_type: "Torre",kingdom: "Norte",description: ""
},
{
lid: 200038,name_es: "Hornwood",name_en: "Hornwood",house: "Hornwood",hid: 300044,location_type: "Castillo",kingdom: "Norte",description: ""
},
{
lid: 200039,name_es: "Bastión Kar",name_en: "Karhold",house: "Karstark",hid: 300045,location_type: "Castillo",kingdom: "Norte",description: ""
},
{
lid: 200040,name_es: "Castiviejo",name_en: "Oldcastle",house: "Locke",hid: 300046,location_type: "Castillo",kingdom: "Norte",description: ""
},
{
lid: 200041,name_es: "Puerto Blanco",name_en: "White Harbor",house: "Manderly",hid: 300047,location_type: "Ciudad",kingdom: "Norte",description: ""
},
{
lid: 200042,name_es: "Isla del Oso",name_en: "Bear Island",house: "Mormont",hid: 300048,location_type: "Castillo",kingdom: "Norte",description: ""
},
{
lid: 200043,name_es: "Atalaya de Aguasgrises",name_en: "Greywater Watch",house: "Reed",hid: 300049,location_type: "Castillo pequeño",kingdom: "Norte",description: ""
},
{
lid: 200044,name_es: "Los Riachuelos",name_en: "The Rills",house: "Ryswell",hid: 300051,location_type: "Castillo",kingdom: "Norte",description: ""
},
{
lid: 200045,name_es: "Rillwater Crossing",name_en: "Rillwater Crossing",house: "Glenmore",hid: 300052,location_type: "Castillo pequeño",kingdom: "Norte",description: ""
},
{
lid: 200046,name_es: "Ciudadela de Torrhen",name_en: "Torrhen's Square",house: "Tallhart",hid: 300053,location_type: "Castillo",kingdom: "Norte",description: ""
},
{
lid: 200047,name_es: "Highpoint",name_en: "Highpoint",house: "Whitehill",hid: 300054,location_type: "Castillo pequeño",kingdom: "Norte",description: ""
},
{
lid: 200048,name_es: "Último Hogar",name_en: "Last Hearth",house: "Umber",hid: 300054,location_type: "Castillo",kingdom: "Norte",description: ""
},
{
lid: 200049,name_es: "Aguasdulces",name_en: "Riverrun",house: "Tully",hid: 300055,location_type: "Castillo",kingdom: "Ríos",description: ""
},
{
lid: 200050,name_es: "Árbol de los Cuervos",name_en: "Raventree Hall",house: "Blackwood",hid: 300057,location_type: "Castillo",kingdom: "Ríos",description: ""
},
{
lid: 200051,name_es: "Seto de Piedra",name_en: "Stone Hedge",house: "Bracken",hid: 300058,location_type: "Castillo",kingdom: "Ríos",description: ""
},
{
lid: 200052,name_es: "El Cántaro",name_en: "",house: "Butterwell",hid: 300059,location_type: "Castillo",kingdom: "Ríos",description: ""
},
{
lid: 200053,name_es: "Salinas",name_en: "Saltpans",house: "Cox",hid: 300060,location_type: "Pueblo",kingdom: "Ríos",description: "Castillo"
},
{
lid: 200054,name_es: "Darry",name_en: "Darry",house: "Darry",hid: 300062,location_type: "Castillo pequeño",kingdom: "Ríos",description: ""
},
{
lid: 200055,name_es: "Los Gemelos",name_en: "The Twins",house: "Frey",hid: 300063,location_type: "Castillo",kingdom: "Ríos",description: ""
},
{
lid: 200056,name_es: "Pantano de la Bruja",name_en: "Hag's Mire",house: "Nayland",hid: 300064,location_type: "Torre",kingdom: "Ríos",description: ""
},
{
lid: 200057,name_es: "Buenmercado",name_en: "Fairmarket",house: "Goodbrook",hid: 300065,location_type: "Pueblo",kingdom: "Ríos",description: "Torre"
},
{
lid: 200058,name_es: "Septo de Piedra",name_en: "Stoney Sept",house: "Keath",hid: 300067,location_type: "Pueblo",kingdom: "Ríos",description: "Torre"
},
{
lid: 200059,name_es: "Varamar",name_en: "Seagard",house: "Mallister",hid: 300066,location_type: "Castillo",kingdom: "Ríos",description: ""
},
{
lid: 200060,name_es: "Poza de la Doncella",name_en: "Maidenpool",house: "Mooton",hid: 300068,location_type: "Castillo",kingdom: "Ríos",description: ""
},
{
lid: 200061,name_es: "Princesa Rosada",name_en: "Pinkmaiden",house: "Piper",hid: 300070,location_type: "Castillo",kingdom: "Ríos",description: ""
},
{
lid: 200062,name_es: "Aldea de Lord Harroway",name_en: "Lort Harroway's Town",house: "Roote",hid: 300069,location_type: "Castillo",kingdom: "Ríos",description: ""
},
{
lid: 200063,name_es: "Bosque de Sauces",name_en: "Willow Wood",house: "Ryger",hid: 300071,location_type: "Castillo",kingdom: "Ríos",description: ""
},
{
lid: 200064,name_es: "Torreón Bellota",name_en: "Acorn Hall",house: "Smallwood",hid: 300072,location_type: "Castillo pequeño",kingdom: "Ríos",description: ""
},
{
lid: 200065,name_es: "Atranta",name_en: "Atranta",house: "Vance",hid: 300073,location_type: "Castillo pequeño",kingdom: "Ríos",description: ""
},
{
lid: 200066,name_es: "Descanso del Caminante",name_en: "Wayfarer's Rest",house: "Vance",hid: 300074,location_type: "Castillo",kingdom: "Ríos",description: ""
},
{
lid: 200067,name_es: "Harrenhal",name_en: "Harrenhal",house: "Whent",hid: 300075,location_type: "Castillo",kingdom: "Ríos",description: ""
},
{
lid: 200068,name_es: "Roca Casterly",name_en: "Casterly Rock",house: "Lannister",hid: 300076,location_type: "Castillo",kingdom: "Occidente",description: ""
},
{
lid: 200069,name_es: "Lannisport",name_en: "Lannisport",house: "Lannister",hid: 300077,location_type: "Ciudad",kingdom: "Occidente",description: ""
},
{
lid: 200070,name_es: "Fuerte Desolación",name_en: "Banefort",house: "Banefort",hid: 300078,location_type: "Castillo",kingdom: "Occidente",description: ""
},
{
lid: 200071,name_es: "Valdecuerno",name_en: "Hornvale",house: "Brax",hid: 300079,location_type: "Castillo",kingdom: "Occidente",description: ""
},
{
lid: 200072,name_es: "Refugio Quebrado",name_en: "Crakehall",house: "Crakehall",hid: 300080,location_type: "Castillo",kingdom: "Occidente",description: ""
},
{
lid: 200073,name_es: "Salón del Viento",name_en: "Wyndhall",house: "Estren",hid: 300081,location_type: "Castillo pequeño",kingdom: "Occidente",description: ""
},
{
lid: 200074,name_es: "Torrelabella",name_en: "Faircastle",house: "Farman",hid: 300084,location_type: "Castillo",kingdom: "Occidente",description: ""
},
{
lid: 200075,name_es: "Greenfield",name_en: "Greenfield",house: "Greenfield",hid: 300086,location_type: "Castillo pequeño",kingdom: "Occidente",description: ""
},
{
lid: 200076,name_es: "Kayce",name_en: "Kayce",house: "Kenning",hid: 300083,location_type: "Castillo",kingdom: "Occidente",description: ""
},
{
lid: 200077,name_es: "Colmillo Dorado",name_en: "Golden Tooth",house: "Lefford",hid: 300082,location_type: "Castillo",kingdom: "Occidente",description: ""
},
{
lid: 200078,name_es: "Cuevahonda",name_en: "Deep Den",house: "Lydden",hid: 300085,location_type: "Castillo",kingdom: "Occidente",description: ""
},
{
lid: 200079,name_es: "Marcaceniza",name_en: "Ashemark",house: "Marbrand",hid: 300088,location_type: "Castillo",kingdom: "Occidente",description: ""
},
{
lid: 200080,name_es: "Las Hogueras",name_en: "Feastfires",house: "Prester",hid: 300089,location_type: "Castillo",kingdom: "Occidente",description: ""
},
{
lid: 200081,name_es: "Sarsfield",name_en: "Sarsfield",house: "Sarsfield",hid: 300090,location_type: "Castillo",kingdom: "Occidente",description: ""
},
{
lid: 200082,name_es: "Refugio de Plata",name_en: "Silverhill",house: "Serret",hid: 300091,location_type: "Castillo",kingdom: "Occidente",description: ""
},
{
lid: 200083,name_es: "Maizal",name_en: "Cornfield",house: "Swyft",hid: 300093,location_type: "Castillo",kingdom: "Occidente",description: ""
},
{
lid: 200084,name_es: "El Risco",name_en: "The Crag",house: "Westerling",hid: 300094,location_type: "Castillo",kingdom: "Occidente",description: ""
},
{
lid: 200085,name_es: "Pyke",name_en: "Pyke",house: "Greyjoy",hid: 300095,location_type: "Castillo",kingdom: "Islas del Hierro",description: ""
},
{
lid: 200207,name_es: "Puerto Noble",name_en: "Lordsport",house: "Botley",hid: 300095,location_type: "Pueblo",kingdom: "Islas del Hierro",description: "Torre"
},
{
lid: 200087,name_es: "Castroferro",name_en: "Iron Holt",house: "Wynch",hid: 300095,location_type: "Castillo pequeño",kingdom: "Islas del Hierro",description: ""
},
{
lid: 200088,name_es: "Marea Negra",name_en: "Blacktyde",house: "Blacktyde",hid: 300095,location_type: "Castillo pequeño",kingdom: "Islas del Hierro",description: ""
},
{
lid: 200089,name_es: "Monteorca",name_en: "Orkwood",house: "Orkwood",hid: 300095,location_type: "Castillo pequeño",kingdom: "Islas del Hierro",description: ""
},
{
lid: 200206,name_es: "Guijarra",name_en: "Pebbleton",house: "Merlyn",hid: 300099,location_type: "Pueblo",kingdom: "Islas del Hierro",description: "Torre"
},
{
lid: 200090,name_es: "Lago del Cadaver",name_en: "Castle Goodbrother",house: "Goodbrother",hid: 300096,location_type: "Castillo pequeño",kingdom: "Islas del Hierro",description: ""
},
{
lid: 200091,name_es: "Torreón Pico de Cuervo",name_en: "Crow Spike Keep",house: "Goodbrother",hid: 300097,location_type: "Castillo pequeño",kingdom: "Islas del Hierro",description: ""
},
{
lid: 200092,name_es: "Fosa",name_en: "Downdelving",house: "Goodbrother",hid: 300131,location_type: "Castillo pequeño",kingdom: "Islas del Hierro",description: ""
},
{
lid: 200093,name_es: "Cuerno martillo",name_en: "Hammerhorn",house: "Goodbrother",hid: 300098,location_type: "Castillo pequeño",kingdom: "Islas del Hierro",description: ""
},
{
lid: 200095,name_es: "Punta piel de foca",name_en: "Sealskin Point",house: "Farwynd",hid: 300100,location_type: "Castillo pequeño",kingdom: "Islas del Hierro",description: ""
},
{
lid: 200096,name_es: "Drumm",name_en: "Drumm",house: "Drumm",hid: 300101,location_type: "Castillo pequeño",kingdom: "Islas del Hierro",description: ""
},
{
lid: 200097,name_es: "Piedraquebrada",name_en: "Shatterstone",house: "Goodbrother",hid: 300102,location_type: "Castillo pequeño",kingdom: "Islas del Hierro",description: ""
},
{
lid: 200098,name_es: "Luz Solitaria",name_en: "Lonely Light",house: "Farwynd",hid: 300103,location_type: "Castillo pequeño",kingdom: "Islas del Hierro",description: ""
},
{
lid: 200099,name_es: "Acantilado de Sal",name_en: "Saltcliffe",house: "Saltcliffe",hid: 300104,location_type: "Castillo pequeño",kingdom: "Islas del Hierro",description: ""
},
{
lid: 200100,name_es: "Diez Torres",name_en: "Ten Towers",house: "Harlaw",hid: 300105,location_type: "Castillo",kingdom: "Islas del Hierro",description: ""
},
{
lid: 200101,name_es: "Colina de la Bruja",name_en: "Harridan Hill",house: "Harlaw",hid: 300106,location_type: "Castillo pequeño",kingdom: "Islas del Hierro",description: ""
},
{
lid: 200102,name_es: "Torre del Resplandor",name_en: "Tower of Glimmering",house: "Harlaw",hid: 300108,location_type: "Castillo pequeño",kingdom: "Islas del Hierro",description: ""
},
{
lid: 200103,name_es: "Jardín Gris",name_en: "Grey Garden",house: "Harlaw",hid: 300109,location_type: "Castillo pequeño",kingdom: "Islas del Hierro",description: ""
},
{
lid: 200204,name_es: "Salón de Harlaw",name_en: "Harlaw Hall",house: "Harlaw",hid: 300109,location_type: "Castillo pequeño",kingdom: "Islas del Hierro",description: ""
},
{
lid: 200205,name_es: "Volmark",name_en: "Volmark",house: "Volmark",hid: 300110,location_type: "Castillo pequeño",kingdom: "Islas del Hierro",description: ""
},
{
lid: 200106,name_es: "Desembarco del Rey",name_en: "King's Landing",house: "Baratheon",hid: 300111,location_type: "Ciudad",kingdom: "Tierras de la Corona",description: ""
},
{
lid: 200107,name_es: "Vallepardo",name_en: "Dyre Den",house: "Brune",hid: 300112,location_type: "Castillo pequeño",kingdom: "Tierras de la Corona",description: ""
},
{
lid: 200108,name_es: "Malacosta",name_en: "Brownhollow",house: "Brune",hid: 300113,location_type: "Castillo pequeño",kingdom: "Tierras de la Corona",description: ""
},
{
lid: 200109,name_es: "Las Astas",name_en: "Antlers",house: "Buckwell",hid: 300114,location_type: "Castillo",kingdom: "Tierras de la Corona",description: ""
},
{
lid: 200110,name_es: "La Zarpa",name_en: "Crackclaw",house: "Crabb",hid: 300115,location_type: "Castillo pequeño",kingdom: "Tierras de la Corona",description: ""
},
{
lid: 200111,name_es: "Hayford",name_en: "Hayford Castle",house: "Hayford",hid: 300116,location_type: "Castillo pequeño",kingdom: "Tierras de la Corona",description: ""
},
{
lid: 200112,name_es: "Cuerno de la Puerca",name_en: "Sow's Horn",house: "Hogg",hid: 300117,location_type: "Castillo pequeño",kingdom: "Tierras de la Corona",description: ""
},
{
lid: 200113,name_es: "Rosby",name_en: "Rosby",house: "Rosby",hid: 300118,location_type: "Castillo pequeño",kingdom: "Tierras de la Corona",description: ""
},
{
lid: 200114,name_es: "Valleoscuro",name_en: "Duskendale",house: "Rykker",hid: 300119,location_type: "Pueblo",kingdom: "Tierras de la Corona",description: "Castillo"
},
{
lid: 200115,name_es: "Grajal",name_en: "Rook's Rest",house: "Staunton",hid: 300119,location_type: "Castillo pequeño",kingdom: "Tierras de la Corona",description: ""
},
{
lid: 200116,name_es: "Stokeworth",name_en: "Stokeworth",house: "Stokeworth",hid: 300120,location_type: "Castillo pequeño",kingdom: "Tierras de la Corona",description: ""
},
{
lid: 200117,name_es: "Rocadragon",name_en: "Dragonstone",house: "Baratheon",hid: 300121,location_type: "Castillo",kingdom: "Islas del Mar Angosto",description: ""
},
{
lid: 200118,name_es: "Punta Aguda",name_en: "Sharp Point",house: "Bar Emmon",hid: 300122,location_type: "Castillo",kingdom: "Islas del Mar Angosto",description: ""
},
{
lid: 200119,name_es: "Isla Zarpa",name_en: "Claw Isle",house: "Celtigar",hid: 300123,location_type: "Castillo",kingdom: "Islas del Mar Angosto",description: ""
},
{
lid: 200120,name_es: "Piedratormenta",name_en: "Stonedance",house: "Massey",hid: 300124,location_type: "Castillo",kingdom: "Islas del Mar Angosto",description: ""
},
{
lid: 200121,name_es: "Puerto Plácido",name_en: "Sweetport Sound",house: "Sunglass",hid: 300125,location_type: "Castillo pequeño",kingdom: "Islas del Mar Angosto",description: ""
},
{
lid: 200122,name_es: "Marcaderiva",name_en: "Driftmark",house: "Velaryon",hid: 300126,location_type: "Castillo pequeño",kingdom: "Islas del Mar Angosto",description: ""
},
{
lid: 200123,name_es: "Bastión de Tormentas",name_en: "Storm's End",house: "Baratheon",hid: 300127,location_type: "Castillo",kingdom: "Tierras de la Tormenta",description: ""
},
{
lid: 200124,name_es: "Puertabronce",name_en: "Bronzegate",house: "Buckler",hid: 300128,location_type: "Castillo",kingdom: "Tierras de la Tormenta",description: ""
},
{
lid: 200125,name_es: "Fawnton",name_en: "Fawnton",house: "Cafferen",hid: 300129,location_type: "Castillo pequeño",kingdom: "Tierras de la Tormenta",description: ""
},
{
lid: 200126,name_es: "Canto Nocturno",name_en: "Nightsong",house: "Caron",hid: 300130,location_type: "Castillo",kingdom: "Tierras de la Tormenta",description: ""
},
{
lid: 200127,name_es: "Nido de Grifos",name_en: "Griffin's Roost",house: "Connington",hid: 300132,location_type: "Castillo",kingdom: "Tierras de la Tormenta",description: ""
},
{
lid: 200128,name_es: "Refugio Negro",name_en: "Blackhaven",house: "Dondarrion",hid: 300133,location_type: "Castillo",kingdom: "Tierras de la Tormenta",description: ""
},
{
lid: 200129,name_es: "Pazo Pajar",name_en: "Haystack Hall",house: "Errol",hid: 300134,location_type: "Castillo",kingdom: "Tierras de la Tormenta",description: ""
},
{
lid: 200130,name_es: "Piedraverde",name_en: "Greenstone",house: "Estermont",hid: 300135,location_type: "Castillo",kingdom: "Tierras de la Tormenta",description: ""
},
{
lid: 200131,name_es: "Bosquealto",name_en: "Felwood",house: "Fell",hid: 300136,location_type: "Castillo pequeño",kingdom: "Tierras de la Tormenta",description: ""
},
{
lid: 200132,name_es: "Buenavista",name_en: "Grandview",house: "Grandison",hid: 300137,location_type: "Castillo",kingdom: "Tierras de la Tormenta",description: ""
},
{
lid: 200133,name_es: "Bosqueumbrío",name_en: "Mistwood",house: "Mertyns",hid: 300138,location_type: "Castillo pequeño",kingdom: "Tierras de la Tormenta",description: ""
},
{
lid: 200134,name_es: "Nido de Cuervo",name_en: "Crow's Nest",house: "Morrigen",hid: 300139,location_type: "Castillo",kingdom: "Tierras de la Tormenta",description: ""
},
{
lid: 200135,name_es: "Campoverde",name_en: "Poddingfield",house: "Peasebury",hid: 300140,location_type: "Castillo",kingdom: "Tierras de la Tormenta",description: ""
},
{
lid: 200136,name_es: "Los Pergaminos",name_en: "Parchments",house: "Penrose",hid: 300141,location_type: "Castillo",kingdom: "Tierras de la Tormenta",description: ""
},
{
lid: 200137,name_es: "Amberly",name_en: "Amberly",house: "Rogers",hid: 300142,location_type: "Castillo pequeño",kingdom: "Tierras de la Tormenta",description: ""
},
{
lid: 200138,name_es: "Torreón Cosecha",name_en: "Harvest Hall",house: "Selmy",hid: 300143,location_type: "Castillo",kingdom: "Tierras de la Tormenta",description: ""
},
{
lid: 200139,name_es: "Arco Ancho",name_en: "Broad Arch",house: "Staedmon",hid: 300143,location_type: "Castillo pequeño",kingdom: "Tierras de la Tormenta",description: ""
},
{
lid: 200140,name_es: "Timón de Piedra",name_en: "Stonehelm",house: "Swann",hid: 300143,location_type: "Castillo",kingdom: "Tierras de la Tormenta",description: ""
},
{
lid: 200141,name_es: "Castillo del Atardecer",name_en: "Evenfall Hall",house: "Tarth",hid: 300143,location_type: "Castillo pequeño",kingdom: "Tierras de la Tormenta",description: ""
},
{
lid: 200142,name_es: "Gallowsgrey",name_en: "Gallowsgrey",house: "Trant",hid: 300144,location_type: "Castillo pequeño",kingdom: "Tierras de la Tormenta",description: ""
},
{
lid: 200143,name_es: "Villallorosa",name_en: "Weeping Tower",house: "Whitehead",hid: 300145,location_type: "Pueblo",kingdom: "Tierras de la Tormenta",description: "Castillo pequeño"
},
{
lid: 200144,name_es: "Aguasmil",name_en: "Rain house",house: "Wylde",hid: 300146,location_type: "Castillo",kingdom: "Tierras de la Tormenta",description: ""
},
{
lid: 200145,name_es: "Altojardín",name_en: "Highgarden",house: "Tyrell",hid: 300147,location_type: "Castillo",kingdom: "Dominio",description: ""
},
{
lid: 200146,name_es: "Appleton",name_en: "Appleton",house: "Appleton",hid: 300148,location_type: "Castillo pequeño",kingdom: "Dominio",description: ""
},
{
lid: 200147,name_es: "Vado Ceniza",name_en: "Ashford",house: "Ashford",hid: 300149,location_type: "Castillo",kingdom: "Dominio",description: ""
},
{
lid: 200148,name_es: "Bandallon",name_en: "Bandallon",house: "Blackbar",hid: 300150,location_type: "Castillo",kingdom: "Dominio",description: ""
},
{
lid: 200149,name_es: "Hammerhal",name_en: "Hammerhal",house: "Cordwayner",hid: 300151,location_type: "Castillo pequeño",kingdom: "Dominio",description: ""
},
{
lid: 200150,name_es: "Lago Rojo",name_en: "Red Lake",house: "Crane",hid: 300152,location_type: "Castillo",kingdom: "Dominio",description: ""
},
{
lid: 200151,name_es: "Torreón de Aguasclaras",name_en: "Brightwater Keep",house: "Florent",hid: 300153,location_type: "Castillo",kingdom: "Dominio",description: ""
},
{
lid: 200152,name_es: "Ladera",name_en: "Tumbleton",house: "Footy",hid: 300154,location_type: "Castillo pequeño",kingdom: "Dominio",description: ""
},
{
lid: 200153,name_es: "La Sidra",name_en: "Cider Hall",house: "Fossoway",hid: 300155,location_type: "Castillo",kingdom: "Dominio",description: ""
},
{
lid: 200154,name_es: "Nuevo Barril",name_en: "New Barrel",house: "Fossoway",hid: 300156,location_type: "Castillo pequeño",kingdom: "Dominio",description: ""
},
{
lid: 200155,name_es: "Granmesa",name_en: "Longtable",house: "Merryweather",hid: 300157,location_type: "Castillo",kingdom: "Dominio",description: ""
},
{
lid: 200156,name_es: "Holyhall",name_en: "Holyhall",house: "Graceford",hid: 300159,location_type: "Castillo",kingdom: "Dominio",description: ""
},
{
lid: 200157,name_es: "Antigua",name_en: "Oldtown",house: "Hightower",hid: 300160,location_type: "Ciudad",kingdom: "Dominio",description: ""
},
{
lid: 200158,name_es: "Sotomiel",name_en: "Honeyholt",house: "Beesbury",hid: 300165,location_type: "Castillo",kingdom: "Dominio",description: ""
},
{
lid: 200159,name_es: "Corona Negra",name_en: "Blackcrown",house: "Bulwer",hid: 300161,location_type: "Castillo",kingdom: "Dominio",description: ""
},
{
lid: 200160,name_es: "Tres Torres",name_en: "Three Towers",house: "Costayne",hid: 300162,location_type: "Castillo pequeño",kingdom: "Dominio",description: ""
},
{
lid: 200161,name_es: "Refugio del Girasol",name_en: "Sunflower Hall",house: "Cuy",hid: 300163,location_type: "Castillo",kingdom: "Dominio",description: ""
},
{
lid: 200162,name_es: "Tierras Altas",name_en: "Uplands",house: "Mullendore",hid: 300164,location_type: "Castillo",kingdom: "Dominio",description: ""
},
{
lid: 200163,name_es: "Salón de la Hiedra",name_en: "Ivy Hall",house: "Kidwell",hid: 300167,location_type: "Castillo pequeño",kingdom: "Dominio",description: ""
},
{
lid: 200164,name_es: "Puenteamargo",name_en: "Bitterbridge",house: "Caswell",hid: 300168,location_type: "Castillo",kingdom: "Dominio",description: ""
},
{
lid: 200165,name_es: "Valdehierba",name_en: "Grassy Vale",house: "Meadows",hid: 300169,location_type: "Castillo",kingdom: "Dominio",description: ""
},
{
lid: 200166,name_es: "Viejo Roble",name_en: "Old Oak",house: "Oakheart",hid: 300170,location_type: "Castillo",kingdom: "Dominio",description: ""
},
{
lid: 200167,name_es: "Picaestrella",name_en: "Starpike",house: "Peake",hid: 300171,location_type: "Castillo pequeño",kingdom: "Dominio",description: ""
},
{
lid: 200168,name_es: "Sotodeoro",name_en: "Goldengrove",house: "Rowan",hid: 300172,location_type: "Castillo",kingdom: "Dominio",description: ""
},
{
lid: 200169,name_es: "Tiesa",name_en: "Standfast",house: "Osgrey",hid: 300172,location_type: "Castillo pequeño",kingdom: "Dominio",description: ""
},
{
lid: 200170,name_es: "Fosafría",name_en: "Coldmoat",house: "Webber",hid: 300174,location_type: "Castillo pequeño",kingdom: "Dominio",description: ""
},
{
lid: 200171,name_es: "El Rejo",name_en: "The Arbor",house: "Redwyne",hid: 300175,location_type: "Castillo",kingdom: "Dominio",description: ""
},
{
lid: 200172,name_es: "Puerto Ryam",name_en: "Ryamsport",house: "Redwyne",hid: 300176,location_type: "Pueblo",kingdom: "Dominio",description: ""
},
{
lid: 200173,name_es: "Viñaparra",name_en: "Vinetown",house: "Redwyne",hid: 300177,location_type: "Pueblo",kingdom: "Dominio",description: ""
},
{
lid: 200174,name_es: "Estrella de Mar",name_en: "Starfish Harbor",house: "Redwyne",hid: 300180,location_type: "Pueblo",kingdom: "Dominio",description: ""
},
{
lid: 200175,name_es: "Anillo",name_en: "Ring",house: "Roxton",hid: 300181,location_type: "Castillo pequeño",kingdom: "Dominio",description: ""
},
{
lid: 200176,name_es: "Smithyton",name_en: "Smithyton",house: "Shermer",hid: 300182,location_type: "Castillo pequeño",kingdom: "Dominio",description: ""
},
{
lid: 200177,name_es: "Colina Cuerno",name_en: "Horn Hill",house: "Tarly",hid: 300183,location_type: "Castillo",kingdom: "Dominio",description: ""
},
{
lid: 200178,name_es: "Darkdell",name_en: "Darkdell",house: "Vyrwell",hid: 300184,location_type: "Castillo pequeño",kingdom: "Dominio",description: ""
},
{
lid: 200179,name_es: "Escudo Verde",name_en: "Greenshield",house: "Chester",hid: 300185,location_type: "Castillo pequeño",kingdom: "Dominio",description: ""
},
{
lid: 200180,name_es: "Escudo Gris",name_en: "Greyshield",house: "Grimm",hid: 300186,location_type: "Castillo pequeño",kingdom: "Dominio",description: ""
},
{
lid: 200181,name_es: "Escudo de Roble",name_en: "Oakenshield",house: "Hewett",hid: 300187,location_type: "Castillo pequeño",kingdom: "Dominio",description: ""
},
{
lid: 200182,name_es: "Escudo Sur",name_en: "Southshield",house: "Serry",hid: 300188,location_type: "Castillo pequeño",kingdom: "Dominio",description: ""
},
{
lid: 200183,name_es: "Lanza del Sol",name_en: "Sunspear",house: "Martell",hid: 300189,location_type: "Ciudad",kingdom: "Dorne",description: ""
},
{
lid: 200184,name_es: "Rocagris",name_en: "Ghaston Grey",house: "Martell",hid: 300190,location_type: "Castillo",kingdom: "Dorne",description: ""
},
{
lid: 200185,name_es: "Bondadivina",name_en: "Godsgrace",house: "Allyrion",hid: 300191,location_type: "Castillo",kingdom: "Dorne",description: ""
},
{
lid: 200186,name_es: "Montenegro",name_en: "Blackmont",house: "Blackmont",hid: 300192,location_type: "Castillo",kingdom: "Dorne",description: ""
},
{
lid: 200187,name_es: "Limonar",name_en: "Lemonwood",house: "Dalt",hid: 300193,location_type: "Castillo pequeño",kingdom: "Dorne",description: ""
},
{
lid: 200188,name_es: "Campoestrella",name_en: "Starfall",house: "Dayne",hid: 300194,location_type: "Castillo",kingdom: "Dorne",description: ""
},
{
lid: 200189,name_es: "Ermita Alta",name_en: "High Hermitage",house: "Dayne",hid: 300195,location_type: "Castillo pequeño",kingdom: "Dorne",description: ""
},
{
lid: 200190,name_es: "Dominio del Cielo",name_en: "Skyreach",house: "Fowler",hid: 300195,location_type: "Castillo",kingdom: "Dorne",description: ""
},
{
lid: 200191,name_es: "Costa Salada",name_en: "Salt Shore",house: "Gargalen",hid: 300196,location_type: "Castillo",kingdom: "Dorne",description: ""
},
{
lid: 200192,name_es: "Tor",name_en: "The Tor",house: "Jordayne",hid: 300197,location_type: "Castillo",kingdom: "Dorne",description: ""
},
{
lid: 200193,name_es: "Sepulcro del Rey",name_en: "Kingsgrave",house: "Manwoody",hid: 300198,location_type: "Castillo",kingdom: "Dorne",description: ""
},
{
lid: 200194,name_es: "Asperón",name_en: "Sandstone",house: "Qorgyle",hid: 300199,location_type: "Castillo",kingdom: "Dorne",description: ""
},
{
lid: 200195,name_es: "Bosquepinto",name_en: "Spottswood",house: "Santagar",hid: 300200,location_type: "Castillo",kingdom: "Dorne",description: ""
},
{
lid: 200196,name_es: "Colina Fantasma",name_en: "Ghost Hill",house: "Toland",hid: 300201,location_type: "Castillo pequeño",kingdom: "Dorne",description: ""
},
{
lid: 200197,name_es: "Sotoinferno",name_en: "Hellholt",house: "Uller",hid: 300202,location_type: "Castillo",kingdom: "Dorne",description: ""
},
{
lid: 200198,name_es: "Dunas Rojas",name_en: "Vaith",house: "Vaith",hid: 300203,location_type: "Castillo",kingdom: "Dorne",description: ""
},
{
lid: 200199,name_es: "Wyl",name_en: "Wyl",house: "Wyl",hid: 300204,location_type: "Castillo",kingdom: "Dorne",description: ""
},
{
lid: 200200,name_es: "Palosanto",name_en: "Yronwood",house: "Yronwood",hid: 300205,location_type: "Castillo",kingdom: "Dorne",description: ""
},
{
lid: 200201,name_es: "Dunstonbury",name_en: "Dunstonbury",house: "Dunn",hid: 300206,location_type: "Castillo",kingdom: "Dominio",description: ""
},
{
lid: 200202,name_es: "Sotoblanco",name_en: "Whitegrove",house: "Ambrose",hid: 300207,location_type: "Castillo pequeño",kingdom: "Dominio",description: ""
},
{
lid: 200203,name_es: "Marea Alta",name_en: "High Tide",house: "Velaryon",hid: 300208,location_type: "Castillo",kingdom: "Islas del Mar Angosto",description: ""
},
{
lid: 400001,name_es: "Braavos",name_en: "Braavos",house: "Essos",hid: "",location_type: "Ciudad",kingdom: "",description: ""
},
{
lid: 400002,name_es: "Lorath",name_en: "Lorath",house: "Essos",hid: "",location_type: "Ciudad",kingdom: "",description: ""
},
{
lid: 400003,name_es: "Pentos",name_en: "Pentos",house: "Essos",hid: "",location_type: "Ciudad",kingdom: "",description: ""
},
{
lid: 400004,name_es: "Myr",name_en: "Myr",house: "Essos",hid: "",location_type: "Ciudad",kingdom: "",description: ""
},
{
lid: 400005,name_es: "Tyrosh",name_en: "Tyrosh",house: "Essos",hid: "",location_type: "Ciudad",kingdom: "",description: ""
},
{
lid: 400006,name_es: "Lys",name_en: "Lys",house: "Essos",hid: "",location_type: "Ciudad",kingdom: "",description: ""
},
{
lid: 400007,name_es: "Volantis",name_en: "Volantis",house: "Essos",hid: "",location_type: "Ciudad",kingdom: "",description: ""
},
{
lid: 400008,name_es: "Qohor",name_en: "Qohor",house: "Essos",hid: "",location_type: "Ciudad",kingdom: "",description: ""
},
{
lid: 400009,name_es: "Norvos",name_en: "Norvos",house: "Essos",hid: "",location_type: "Ciudad",kingdom: "",description: ""
},
{
lid: 400010,name_es: "Los Susurros",name_en: "The Whispers",house: "Tierras de la Corona",hid: "",location_type: "Ruinas",kingdom: "",description: ""
},
{
lid: 400011,name_es: "Murosblancos",name_en: "Whitewalls",house: "Ríos",hid: "",location_type: "Ruinas",kingdom: "",description: ""
},
{
lid: 400012,name_es: "Castamere",name_en: "Castamere",house: "Occidente",hid: "",location_type: "Ruinas",kingdom: "",description: ""
},
{
lid: 400013,name_es: "Salón de Tarbeck",name_en: "Tarbeck Hall",house: "Occidente",hid: "",location_type: "Ruinas",kingdom: "",description: ""
},
{
lid: 400014,name_es: "Foso Cailin",name_en: "Moat Cailin",house: "Norte",hid: "",location_type: "Ruinas",kingdom: "",description: ""
},
{
lid: 400015,name_es: "Sima de Nunn",name_en: "Nunn's Deep",house: "Occidente",hid: "",location_type: "Mina",kingdom: "",description: ""
},
{
lid: 400016,name_es: "Colinas de Pendric",name_en: "Pendric Hills",house: "Occidente",hid: "",location_type: "Mina",kingdom: "",description: ""
},
{
lid: 400017,name_es: "Minas de los Manderly",name_en: "Manderly Mines",house: "Norte",hid: "",location_type: "Mina",kingdom: "",description: ""
},
{
lid: 400018,name_es: "Refugio Estival",name_en: "Summerhall",house: "Tierras de la Tormenta",hid: "",location_type: "Ruinas",kingdom: "",description: ""
},
{
lid: 400019,name_es: "",name_en: "",house: "Ríos",hid: "",location_type: "Puente",kingdom: "",description: ""
},
{
lid: 400020,name_es: "",name_en: "",house: "Ríos",hid: "",location_type: "Puente",kingdom: "",description: ""
},
{
lid: 400021,name_es: "",name_en: "",house: "Dominio",hid: "",location_type: "Puente",kingdom: "",description: ""
},
{
lid: 400022,name_es: "",name_en: "",house: "Dominio",hid: "",location_type: "Puente",kingdom: "",description: ""
},
{
lid: 400023,name_es: "",name_en: "",house: "Dominio",hid: "",location_type: "Puente",kingdom: "",description: ""
},
{
lid: 400024,name_es: "Vado del Titiritero",name_en: "Mummer's Ford",house: "Ríos",hid: "",location_type: "Vado",kingdom: "",description: ""
},
{
lid: 400025,name_es: "Molino de Piedra",name_en: "Stone Mill",house: "Ríos",hid: "",location_type: "Vado",kingdom: "",description: ""
},
{
lid: 400026,name_es: "Vado Tridente",name_en: "Trident Ford",house: "Ríos",hid: "",location_type: "Vado",kingdom: "",description: ""
},
{
lid: 400027,name_es: "",name_en: "",house: "Dorne",hid: "",location_type: "Vado",kingdom: "",description: ""
},
{
lid: 400028,name_es: "",name_en: "",house: "Norte",hid: "",location_type: "Vado",kingdom: "",description: ""
},
{
lid: 400029,name_es: "",name_en: "",house: "Norte",hid: "",location_type: "Vado",kingdom: "",description: ""
},
{
lid: 400030,name_es: "",name_en: "",house: "Ríos",hid: "",location_type: "Vado",kingdom: "",description: ""
},
{
lid: 400031,name_es: "",name_en: "",house: "Valle",hid: "",location_type: "Vado",kingdom: "",description: ""
},
{
lid: 400032,name_es: "Torreón de Craster",name_en: "Craster's Keep",house: "Más-allá-del-muro",hid: "",location_type: "Torre",kingdom: "",description: ""
},
{
lid: 400033,name_es: "Casa Austera",name_en: "Hardhome",house: "Más-allá-del-muro",hid: "",location_type: "Pueblo",kingdom: "",description: ""
},
{
lid: 400034,name_es: "Guardaoccidente del Río",name_en: "Westwatch-by-the-Bridge",house: "Norte",hid: "",location_type: "Ruinas",kingdom: "",description: ""
},
{
lid: 400035,name_es: "Torre Sombría",name_en: "The Shadow Tower",house: "Norte",hid: "",location_type: "Torre",kingdom: "",description: ""
},
{
lid: 400036,name_es: "Garita",name_en: "Sentinel Guard",house: "Norte",hid: "",location_type: "Ruinas",kingdom: "",description: ""
},
{
lid: 400037,name_es: "Guardiagrís",name_en: "Greyguard",house: "Norte",hid: "",location_type: "Ruinas",kingdom: "",description: ""
},
{
lid: 400038,name_es: "Puerta Piedra",name_en: "Stonedoor",house: "Norte",hid: "",location_type: "Ruinas",kingdom: "",description: ""
},
{
lid: 400039,name_es: "Colina Escarcha",name_en: "Hoarfrost Hill",house: "Norte",hid: "",location_type: "Ruinas",kingdom: "",description: ""
},
{
lid: 400040,name_es: "Marcahielo",name_en: "Icemark",house: "Norte",hid: "",location_type: "Ruinas",kingdom: "",description: ""
},
{
lid: 400041,name_es: "Fuerte de la Noche",name_en: "The Nightfort",house: "Norte",hid: "",location_type: "Ruinas",kingdom: "",description: ""
},
{
lid: 400042,name_es: "Lago Hondo",name_en: "Deeplake",house: "Norte",hid: "",location_type: "Ruinas",kingdom: "",description: ""
},
{
lid: 400043,name_es: "Puerta de la Reina",name_en: "Queensgate",house: "Norte",hid: "",location_type: "Ruinas",kingdom: "",description: ""
},
{
lid: 400044,name_es: "Castillo Negro",name_en: "Castle Black",house: "Norte",hid: "",location_type: "Castillo",kingdom: "",description: ""
},
{
lid: 400045,name_es: "Escudo de Roble",name_en: "Oakenshield",house: "Norte",hid: "",location_type: "Ruinas",kingdom: "",description: ""
},
{
lid: 400046,name_es: "Guardabosque del Lago",name_en: "Woodswatch-by-the-Pool",house: "Norte",hid: "",location_type: "Ruinas",kingdom: "",description: ""
},
{
lid: 400047,name_es: "Fortaleza de Azabache",name_en: "Sable Hall",house: "Norte",hid: "",location_type: "Ruinas",kingdom: "",description: ""
},
{
lid: 400048,name_es: "Puertaescarcha",name_en: "Rimegate",house: "Norte",hid: "",location_type: "Ruinas",kingdom: "",description: ""
},
{
lid: 400049,name_es: "Túmulo Largo",name_en: "Long Barrow",house: "Norte",hid: "",location_type: "Ruinas",kingdom: "",description: ""
},
{
lid: 400050,name_es: "Antorchas",name_en: "The Torches",house: "Norte",hid: "",location_type: "Ruinas",kingdom: "",description: ""
},
{
lid: 400051,name_es: "Guardiaverde",name_en: "Greenguard",house: "Norte",hid: "",location_type: "Ruinas",kingdom: "",description: ""
},
{
lid: 400052,name_es: "Guardiaoriente del Mar",name_en: "Eastwatch-by-the-Sea",house: "Norte",hid: "",location_type: "Castillo",kingdom: "",description: ""
},
{
lid: 400053,name_es: "Puño de los Primeros Hombres",name_en: "Fist of the First Men",house: "Más-allá-del-muro",hid: "",location_type: "Ruinas",kingdom: "",description: ""
}
])