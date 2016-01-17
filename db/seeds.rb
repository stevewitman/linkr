User.delete_all
Link.delete_all

user1 = User.create!(
  email: 'user1@example.com',
  password: 'test'
)

user2 = User.create!(
  email: 'user2@example.com',
  password: 'test'
)

user3 = User.create!(
  email: 'user3@example.com',
  password: 'test'
)

link1 = Link.create!(
  name: "Boulder Forecast (NWS)",
  url: "http://forecast.weather.gov/MapClick.php?lat=40.0149856&lon=-105.27054559999999&site=all&smap=1&searchresult=Boulder%2C%20CO%2C%20USA#.Vpsi-cvZoVV",
  notes: ""
)

link2 = Link.create!(
  name: "Colorado Radar",
  url: "http://www.accuweather.com/en/us/colorado/weather-radar?play=1",
  notes: ""
)

link3 = Link.create!(
  name: "Western US Water Vapor Loop",
  url: "http://www.ssd.noaa.gov/goes/west/weus/flash-wv.html",
  notes: ""
)

    # t.string   "name"
    # t.text     "url"
    # t.string   "linkr_url"
    # t.text     "notes"
    # t.string   "status"
    # t.integer  "rating"
    # t.datetime "created_at", null: false
    # t.datetime "updated_at", null: false
    # t.string   "labels"