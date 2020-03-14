# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# WRITINGS

kal = Writer.create(handle: "KalMega", password: "KalMega", icon: "KAL")

cassius = Writer.create(handle: "CassiusValentine", password: "CassiusValentine", icon: "666")

azad = Writer.create(handle: "AzadTessara", password: "AzadTessara", icon: "AZD")

# SETTINGS

south = Setting.create(title: "Stricken", genre: "High Fantasy", high_concept: "Rebellious noble finds her friend in trouble, resolves to destroy society", story: "Seo's attempt at spectacle has been stamped down by the First Lords, but she's not out of tricks yet. She calls a meeting of the Bramble to discuss critical measures.", writer_id: cassius.id)

# FACTIONS

bramble = Faction.create(name: "The Bramble", blurb: "Clique of young ostentatious nobles", story: "Having drifted apart after the end of schooling, the group reconvenes at Seo's call.", setting_id: south.id, writer_id: kal.id)

elandrin = Faction.create(name: "Elandrin Nobility", blurb: "Keepers of Military Power", story: "The Elandrin are scorned by Seo's arrogant display, and collaborate with the Navaari to stamp out her rebellion.", setting_id: south.id, writer_id: cassius.id )

# CHARACTERS

seo = Character.create(name: "Seotine Navaari", blurb: "Queen Bee Gymnast; call her 'Seo'", story: "Seo was just about to leave on a expedition when she learns of her friend's arranged marriage. Deciding there was no better time to stir up trouble than right before she'd be escaping the consequences anyway, Seo decides to stick her upturned nose all up in everyone's business.", setting_id: south.id, writer_id: kal.id, faction_id: bramble.id)

hamiel = Character.create(name: "Hamiel Elandrin", blurb: "Right Hand of the Queen", story: "Hamiel quickly slides back into place at Seo's side. Amused by his friend's cheek before his cousin Salverti, he prepares for one last great spectacle.", setting_id: south.id, writer_id: azad.id, faction_id: bramble.id)

elana = Character.create(name: "Elana Karst-Ironwood", blurb: "Left Hand of the Queen", story: "Securing Elana's help proved most difficult of all the Bramble. Despite the trio's closeness, Elana's lower standing did not afford her the frivolity that Seo and Hamiel enjoyed. Yet Elana's magical proficiency is far beyond that of her status, and now might finally be the time to unleash that potential.", setting_id: south.id, writer_id: kal.id, faction_id: bramble.id)

salverti = Character.create(name: "Salverti Elandrin", blurb: "Decorated Soldier and Heir Apparent", story: "Salverti attempted to coax advice from Seo regarding about wooing Mera, unaware that she used the opportunity to probe him for his intentions. He accepts the First Lords' decree to smooth things over, but desires to accept Seo's challenge and crush her arrogance beneath his heel.", setting_id: south.id, writer_id: cassius.id, faction_id: elandrin.id)

mera = Character.create(name: "Numera al-Navaari", blurb: "Starcrossed Lover and Beautiful Dancer", story: "Mera is in love with the lowly-born Ilwyn Tan-Shiroku, but her family wants to leverage her status by marrying her to Salverti Elandrin. She is distraught when Seo steps onto the scene, offering the Bramble's help in exchange for a favor.", setting_id: south.id, writer_id: azad.id, faction_id: bramble.id)

