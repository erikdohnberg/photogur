# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


pictures = Picture.create [
	{
	 :title =>"Stay classy Planet Earth",
	 :artist =>"Irfan",
	 :url =>"http://distilleryimage11.s3.amazonaws.com/20f21366904511e2bbd422000a1f9ab2_7.jpg"
    },
    {
	 :title =>"'Poo' Super Class Method",
	 :artist =>"Hamant",
	 :url =>"http://distilleryimage6.s3.amazonaws.com/8158dad88c5211e282e022000a1fbc68_7.jpg"
	},
	{
	 :title =>"Hamant Impersonations",
	 :artist =>"Hamant",
	 :url =>"http://distilleryimage7.s3.amazonaws.com/f8bcd6528c5111e28b6c22000a1f8db8_7.jpg"
	}
]