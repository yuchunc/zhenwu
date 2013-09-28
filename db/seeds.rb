# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#

###Imortal Pages
##About Page
#@about_en = Page.create( title: "About Zhen Wu",
#                         immortal: true,
#                         language: "en",
#                         pagetype: 0,
#                         published: true
#                       )
@about_tw = Page.create( title: "關於真武",
                         immortal: true,
                         language: "zh-TW",
                         pagetype: 0,
                         #page_id: @about_en.id
                         published: true
                       )

