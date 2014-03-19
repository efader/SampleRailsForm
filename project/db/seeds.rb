# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Bird.destroy_all

descriptions = ["sour","crazy","cool","agonizing","painful","slippery","damp","humid","fresh-squeezed","upside-down","inside-out","super", "ultra", "happy", "evil", "fantastic", "splendid", "turbo", "insatiable", "fastidious", "fetid", "arctic", "fortunate", "powerful", "simple", "complicated", "angry", "artery-clogging", "gastric", "smart", "short", "tall", "slow", "aggressive", "soft", "squishy", "yummy", "annoying", "lively", "friendly", "gross", "colorful", "sleepy", "orange", "blue", "green", "yellow", "heavy", "warm", "cold", "intrepid", "enthusiastic", "frustrating", "jive", "tired", "smelly", "flirty", "drunk", "tart", "sweet", "jumpy", "nervous", "strange", "crappy", "stupid", "idiotic", "tiny", "corn-fed", "collapsible", "pocket-sized", "supreme", "delicious", "belligerent", "sublime", "helvetica", "Greek","Italian","Spanish","Mexican","French","German","bovine","Guatamalan","Cuban","Canadian","Dutch","Egyptian","Israeli","Russian","Ukranian","lavender","indigo","Chinese","Japanese","Korean","Thai","spicy","mango","peanut","avocado","apple","pear","cherry","tomato","potato","kiwi","lemon","lime","peach","blueberry","fuschia","cerulean","veridian","unfortunate","tragic","crooked","barbaric","intense","groovy","Indian","Pakistani","Nepalese","Brazilian","Peruvian","perverted","Slavic"]

sparrow = Bird.create(title: "sparrow", description: "Small brown bird.")
crow = Bird.create(title: "crow", description: "Loud black bird.")
ostrich = Bird.create(title: "ostrich", description: "Large flightless bird.")[0]
flamingo = Bird.create(title: "flamingo", description: "Tall pink bird.")
cardinal = Bird.create(title: "cardinal", description: "Small red bird.")

types = ["sparrow", "crow", "ostrich", "flamingo", "cardinal"]
owners = ["Bob","Jim","Karl","Anthony","Samantha","Arlene","Victoria","Nina"]


(0..100).each do
	type = Bird.all.sample
	desc = descriptions.sample.capitalize + " " + descriptions.sample + " " + type.title
	Item.create(title: type.title.capitalize, description: desc, owner: owners.sample, bird: type)
end