# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Shop.create([
        {name: 'CafeArte', latitude: 35.838187, longtitude: 128.755047},
        {name: 'BomBom', latitude: 35.839632, longtitude: 128.757311},
        {name: 'Lee', latitude: 35.840433, longtitude: 128.758674},
        {name: 'Starbucks', latitude: 35.836996, longtitude: 128.753093},
        {name: 'Lotteria', latitude: 35.836877, longtitude: 128.753303},
        {name: 'MassCoffee', latitude: 35.836617, longtitude: 128.753080},
        {name: 'YU', latitude: 35.832234, longtitude: 128.757564},
        {name: 'BBQ', latitude: 35.838877, longtitude: 128.755481},
        {name: 'Dongsungro1', latitude: 35.867522, longtitude: 128.596669},
        {name: 'Dongsungro2', latitude: 35.867236, longtitude: 128.597856}
        ])
        
Product.create(
    [
        {shop_id: 1, price: 4500, name: 'Ice Americano'},
        {shop_id: 1, price: 5000, name: 'Vanilla Latte'},
        {shop_id: 1, price: 3400, name: 'Toffee Nut Latte'},
        {shop_id: 2, price: 5500, name: 'Cinnamon Dolce Latte'},
        {shop_id: 2, price: 2000, name: 'Espresso'},
        {shop_id: 2, price: 3200, name: 'Herb Tea'},
        {shop_id: 3, price: 4000, name: 'Dutch Coffee'},
        {shop_id: 3, price: 3900, name: 'Mint Choco Latte'},
        {shop_id: 3, price: 3500, name: 'Lemon Tea'}
        ])
