# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#

###Imortal Pages
Page.delete_all
##About Page
@about = Page.create( title: "關於真武",
                      immortal: true,
                      language: "zh-TW",
                      pagetype: 0,
                      published: true
                    )
@course = Page.create(  title: "真武課程",
                        immortal: true,
                        language: "zh-TW",
                        pagetype: 0,
                        published: true
                      )
@blog = Page.create(  title: "部落格",
                      immortal: true,
                      language: "zh-TW",
                      pagetype: 0,
                      published: true
                    )
#@valut = Page.create( title: "武聲繪影",
#                       immortal: true,
#                       language: "zh-TW",
#                       pagetype: 0,
#                       published: true
#                     )
