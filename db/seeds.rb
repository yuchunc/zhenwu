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
@about = Page.create( name: "about",
                      title: "關於真武",
                      immortal: true,
                      language: "zh-TW",
                      pagetype: 0,
                      published: true
                    )
@courses = Page.create( name: "course",
                       title: "真武課程",
                       immortal: true,
                       language: "zh-TW",
                       pagetype: 0,
                       published: true
                     )
@blog = Page.create( name: "blog",
                     title: "部落格",
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

###Admin User
User.delete_all
@admin = User.create( email: "admin@zhenwu.com",
                      password: "qwer1234",
                      admin: true
                    )
