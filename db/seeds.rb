# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# puts "Adding a Whole bunch of Article groups"
ArticleGroup.create([
    # t.string   "name"
  {
    name:"Greeting cards"
  },
  {
    name:"Bookmarks"
  },
  {
    name:"Doy bags"
  },
  {
    name:"Mini magnets"
  }  
])


# puts "Adding a Whole bunch of Countries"
    # t.string   "name"
    # t.string   "countrycode"
    # t.string   "continent"
Country.create([
  {
    name:"Rwanda",
    countrycode:"RW",
    continent:"Africa"
  },
  {
    name:"Kenya",
    countrycode:"KE",
    continent:"Africa"
  },
  {
    name:"Nepal",
    countrycode:"NP",
    continent:"Asia"
  },
  {
    name:"Bangladesh",
    countrycode:"BD",
    continent:"Asia"
  }
])


# puts "Adding a Whole bunch of Manufacturers"
    # t.string   "name"
    # t.string   "add1"
    # t.string   "add2"
    # t.string   "city"
    # t.string   "state"
    # t.string   "zip"
    # t.string   "url"
Manufacturer.create([
  {
    name:"Cards from Africa",
    add1:"",
    add2:"",
    city:"",
    state:"",
    zip:"",
    url:"http://www.cardsfromafrica.com",
    country_id:""
  },
  {
    name:"KICK Trading",
    add1:"",
    add2:"",
    city:"",
    state:"",
    zip:"",
    url:"http://www.kicktrading.org",
    country_id:""
  },
  {
    name:"New SADLE",
    add1:"",
    add2:"",
    city:"",
    state:"",
    zip:"",
    url:"http://www.newsadle.org.np/",
    country_id:""
  },
  {
    name:"Sreepur Cards",
    add1:"",
    add2:"",
    city:"",
    state:"",
    zip:"",
    url:"http://www.sreepurcards.org",
    country_id:""
  }
])


# puts "Adding a Whole bunch of Greeting cards"
    # t.string   "article_number"
    # t.string   "title"
    # t.text     "description"
    # t.decimal  "price",            precision: 8, scale: 2
    # t.integer  "article_group_id"
    # t.integer  "manufacturer_id"
Article.create([
  {
    article_number:"1-001-05-056",
    title:"Beary Christmas",
    description:"
      A lovingly christmas card handcrafted in Rwanda by young people who have been orphaned by genocide or disease. All the paper is handmade from local Rwandan office waste, making it environmentally sustainable, too. Envelope included.
      DIMENSIONS: 11.5 CM x 16 CM (4.5 IN x 6.3 IN)
      MATERIALS: HANDMADE RECYCLED PAPERS",
    price:"4.99",
    article_group_id:"",
    manufacturer_id:""
  },
  {
    article_number:"1-001-05-042",
    title:"Christmas Bits",
    description:"
      This Christmas card is so cute, it can also become an ornament on your mantel! Your friends will not only appreciate what’s inside, but outside too.
      A lovingly christmas card handcrafted in Rwanda by young people who have been orphaned by genocide or disease. All the paper is handmade from local Rwandan office waste, making it environmentally sustainable, too. Envelope included.
      DIMENSIONS: 11.5 CM x 16 CM (4.5 IN x 6.3 IN)
      MATERIALS: HANDMADE RECYCLED PAPERS",
    price:"4.99",
    article_group_id:"",
    manufacturer_id:""
  },
  {
    article_number:"1-001-05-054",
    title:"Away in a Manger",
    description:"
      A lovingly christmas card handcrafted in Rwanda by young people who have been orphaned by genocide or disease. All the paper is handmade from local Rwandan office waste, making it environmentally sustainable, too. Envelope included.
      DIMENSIONS: 11.5 CM x 16 CM (4.5 IN x 6.3 IN)
      MATERIALS: HANDMADE RECYCLED PAPERS",
    price:"4.99",
    article_group_id:"",
    manufacturer_id:""
  },
  {
    article_number:"1-001-05-057",
    title:"Squeaky Stockings",
    description:"
      A lovingly christmas card handcrafted in Rwanda by young people who have been orphaned by genocide or disease. All the paper is handmade from local Rwandan office waste, making it environmentally sustainable, too. Envelope included.
      DIMENSIONS: 11.5 CM x 16 CM (4.5 IN x 6.3 IN)
      MATERIALS: HANDMADE RECYCLED PAPERS",
    price:"4.99",
    article_group_id:"",
    manufacturer_id:""
  }
  # ,
  # {
  #   article_number:"",
  #   title:"",
  #   description:"",
  #   price:"",
  #   article_group_id:"",
  #   manufacturer_id:""
  # },
  # {
  #   article_number:"",
  #   title:"",
  #   description:"",
  #   price:"",
  #   article_group_id:"",
  #   manufacturer_id:""
  # },
  # {
  #   article_number:"",
  #   title:"",
  #   description:"",
  #   price:"",
  #   article_group_id:"",
  #   manufacturer_id:""
  # },
  # {
  #   article_number:"",
  #   title:"",
  #   description:"",
  #   price:"",
  #   article_group_id:"",
  #   manufacturer_id:""
  # }
])



