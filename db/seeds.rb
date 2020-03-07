# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

kal = Writer.create(handle: "Kal Mega", password: "Kal Mega", icon: "KAL")

south = Setting.create(title: "Discover the South", genre: "High Fantasy", high_concept: "Rebellious noble finds her friend in trouble, resolves to destroy society", story: "Seo's attempt at spectacle has been stamped down by the First Lords, but she's not out of tricks yet. She calls a meeting of the Bramble to discuss critical measures.", writer_id: kal.id)

bramble = Faction.create(name: "The Bramble", blurb: "Clique of young ostentatious nobles", story: "Having drifted apart after the end of schooling, the group reconvenes at Seo's call.", setting_id: south.id, writer_id: kal.id)

seo = Character.create(name: "Seotine Navaari", blurb: "Queen Bee Gymnast", story: "Seo was just about to leave on a expedition when she learns of her friend's arranged marriage. Deciding there was no better time to stir up trouble than right before she'd be escaping the consequences anyway, Seo decides to stick her upturned nose all up in everyone's business.", setting_id: south.id, writer_id: kal.id, faction_id: bramble.id)