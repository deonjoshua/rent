require 'faker'
require "open-uri"
User.destroy_all

puts "Creating User"
User.create!(email: "deon@gmail.com", password: "deon1997")
puts "Seeding Database"

file = URI.open("https://media.istockphoto.com/id/466428630/photo/screwdriver.jpg?s=1024x1024&w=is&k=20&c=5ksU5NNzUmzJlKLnDP--iRdy47mVq7XS96m2UeriKRU=")
article = Tool.new(
  name: "Screwdriver",
  description: "a hand tool for turning a screw, consisting of a handle attached to a long, narrow shank of metal, which tapers and flattens out to a tip that fits into the slotted head of a screw.",
  rate: Faker::Number.number(digits: 2),
  condition:"Mint",
  user: User.first
)
article.image.attach(io: file, filename: "screwdriver.png", content_type: "image/png")
article.save!

file = URI.open("https://media.istockphoto.com/id/183759696/photo/hammer.jpg?s=1024x1024&w=is&k=20&c=UQwz6a6GGK0Ti7uCaN2GugVyv1bKXYquzFaZY90wax4=")
article = Tool.new(
    name: "Hammer",
    description: " a tool that has a heavy metal head attached to a handle and that is used for hitting nails or breaking things apart.",
    rate: Faker::Number.number(digits: 2),
    condition:"Excellent",
    user: User.first
  )
article.image.attach(io: file, filename: "hammer.png", content_type: "image/png")
article.save!

file = URI.open("https://media.istockphoto.com/id/184639599/photo/power-drill-with-large-bit.jpg?s=1024x1024&w=is&k=20&c=iOwHgVGNggw1qR2Bn1Z6U-QmkBKdk895_j3Fe-MYhLY=")
article = Tool.new(
    name: "Power Drill",
    description: "a power tool that uses a rotating drill bit. It is used to create holes in various materials, such as wood, metal, and plastic.",
    rate: Faker::Number.number(digits: 2),
    condition:"Good",
    user: User.first
  )
article.image.attach(io: file, filename: "drill.png", content_type: "image/png")
article.save!

file = URI.open("https://media.istockphoto.com/id/173560196/photo/gray-ladder-on-a-white-background.jpg?s=1024x1024&w=is&k=20&c=L_dndFFMqfX-6NmioJhGjSPrKVaAhcxmELtK7U1R8pQ=")
article = Tool.new(
    name: "Ladder",
    description: "a piece of equipment consisting of a series of steps between two upright lengths of metal, used for climbing up or down something.",
    rate: Faker::Number.number(digits: 2),
    condition:"Good",
    user: User.first
  )
article.image.attach(io: file, filename: "ladder.png", content_type: "image/png")
article.save!

file = URI.open("https://media.istockphoto.com/id/476375415/photo/spanner-wrench-the-metal.jpg?s=1024x1024&w=is&k=20&c=ZMr_xR4SJbUVMAP_FrCwNpTFj2HmvGeoxCbxcRh5owQ=")
article = Tool.new(
    name: "Wrench",
    description: "operated by hand, for tightening bolts and nuts.",
    rate: Faker::Number.number(digits: 2),
    condition:"Poor",
    user: User.first
  )
article.image.attach(io: file, filename: "wrench.png", content_type: "image/png")
article.save!

file = URI.open("https://media.istockphoto.com/id/174798452/photo/tape-measure.jpg?s=1024x1024&w=is&k=20&c=rQW6VZ39tw0UYdcWQVUBB0ZGhtcOi-N40ZZ2DT6guqI=")
article = Tool.new(
    name: "Tape Measure",
    description: "a type of hand tool typically used to measure distance or size.",
    rate: Faker::Number.number(digits: 2),
    condition:"Excellent",
    user: User.first
  )
article.image.attach(io: file, filename: "tape.png", content_type: "image/png")
article.save!

file = URI.open("https://media.istockphoto.com/id/1278303048/photo/pliers-yellow-and-black-color-on-white-background-pliers-isolated-on-white.jpg?s=1024x1024&w=is&k=20&c=IfJPxVHhVH2h6EqKy98Jk8bH0rTrC9GWNg692_izEe8=")
article = Tool.new(
    name: "Pliers",
    description: "a hand tool used to hold objects firmly.",
    rate: Faker::Number.number(digits: 2),
    condition:"Mint",
    user: User.first
  )
article.image.attach(io: file, filename: "plier.png", content_type: "image/png")
article.save!

file = URI.open("https://media.istockphoto.com/id/498421967/photo/yellow-utility-knife.jpg?s=1024x1024&w=is&k=20&c=4gPSnPpOnUY0F3tBAJDfWT5imnBX_-l4x2qjie1mK3E=")
article = Tool.new(
    name: "Utility Knife",
    description: "a simple and inexpensive holder, flat, approximately one inch (25 mm) wide and three to four inches (75 to 100 mm) long, made of metal and plastic.",
    rate: Faker::Number.number(digits: 2),
    condition:"Good",
    user: User.first
  )
article.image.attach(io: file, filename: "knife.png", content_type: "image/png")
article.save!

file = URI.open("https://media.istockphoto.com/id/516041479/photo/saw.jpg?s=1024x1024&w=is&k=20&c=kzTR8TTSpEoelumpBqwy7IFU8NlWSI2YBhT_3sbBlNo=")
article = Tool.new(
    name: "Saw",
    description: "tool for cutting solid materials to prescribed lengths or shapes.",
    rate: Faker::Number.number(digits: 2),
    condition:"Poor",
    user: User.first
  )
article.image.attach(io: file, filename: "saw.png", content_type: "image/png")
article.save!

file = URI.open("https://media.istockphoto.com/id/152148565/photo/plunger.jpg?s=1024x1024&w=is&k=20&c=wuM_AsJEVg7QTgTl3RH33XcKqMJxe_vcnA0FSedXkUQ=")
article = Tool.new(
    name: "Plunger",
    description: "a suction device consisting of a cup-shaped piece of rubber on the end of a stick, used to get rid of things that are blocking pipes.",
    rate: Faker::Number.number(digits: 2),
    condition:"Good",
    user: User.first
  )
article.image.attach(io: file, filename: "plunger.png", content_type: "image/png")
article.save!

file = URI.open("https://media.istockphoto.com/id/1460309722/photo/set-of-l-shaped-hex-wrench.jpg?s=1024x1024&w=is&k=20&c=Hy_4LHcfdFjlHSb7GYFc3Ve7a89Ge0j2zBjmAK38l_8=")
article = Tool.new(
    name: "Hex Key Set",
    description: "a small handheld tool that's used for for driving bolts and screws with a hexagonal socket.",
    rate: Faker::Number.number(digits: 2),
    condition:"Mint",
    user: User.first
  )
article.image.attach(io: file, filename: "hex.png", content_type: "image/png")
article.save!

file = URI.open("https://media.istockphoto.com/id/119423459/photo/stud-finder.jpg?s=1024x1024&w=is&k=20&c=4fajzdM_mPwtAvui1zQx0mKkXjHSbdDs0Bhgrnw0dzg=")
article = Tool.new(
    name: "Stud Finder",
    description: " handheld device used with wood buildings to locate framing studs located behind the final walling surface, usually drywall.",
    rate: Faker::Number.number(digits: 2),
    condition:"Excellent",
    user: User.first
  )
article.image.attach(io: file, filename: "stud.png", content_type: "image/png")
article.save!

file = URI.open("https://media.istockphoto.com/id/118601296/photo/ladder.jpg?s=1024x1024&w=is&k=20&c=3qWYAfhcJt6alDtve3w3zvnOgXwRp85EpWE7hPAqB4o=")
article = Tool.new(
    name: "Step Stool",
    description: "a self-supporting, foldable, portable ladder that is non-adjustable in length, 32-inches or less in overall size, with flat steps and without a pail shelf.",
    rate: Faker::Number.number(digits: 2),
    condition:"Poor",
    user: User.first
  )
article.image.attach(io: file, filename: "stool.png", content_type: "image/png")
article.save!

file = URI.open("https://media.istockphoto.com/id/465137230/photo/toolbox.jpg?s=1024x1024&w=is&k=20&c=3ma3s58S44GI_vMGO2zLDEJ97vyP88IoonlWRZvkbbw=")
article = Tool.new(
    name: "Tool Bag",
    description: "used in different industries to store and transport tools while helping keep them organised and accessible.",
    rate: Faker::Number.number(digits: 2),
    condition:"Fair",
    user: User.first
  )
article.image.attach(io: file, filename: "bag.png", content_type: "image/png")
article.save!

file = URI.open("https://media.istockphoto.com/id/1360708833/photo/an-old-large-sledgehammer-with-a-wooden-handle-hammer-close-up-horizontal-side-view-the.jpg?s=1024x1024&w=is&k=20&c=sCFUOHZqPOeTb6Ay2J2uVX-lcE9vMFJwnyGlgTCYepQ=")
article = Tool.new(
    name: "Mallet",
    description: "a tool with a large, barrel-shaped, head — used to pound on something.",
    rate: Faker::Number.number(digits: 2),
    condition:"Good",
    user: User.first
  )
article.image.attach(io: file, filename: "mallet.png", content_type: "image/png")
article.save!

file = URI.open("https://media.istockphoto.com/id/486052311/photo/folding-multi-tool-plier-on-white-background.jpg?s=1024x1024&w=is&k=20&c=-x-BNsJ_b1a6MTQWHAPWd0o1d2hjevWRQVlibefk6zo=")
article = Tool.new(
    name: "Multi Tool",
    description: "an oscillating power tool that can perform a wide variety of tasks thanks to interchangeable blades and accessories.",
    rate: Faker::Number.number(digits: 2),
    condition:"Mint",
    user: User.first
  )
article.image.attach(io: file, filename: "multi.png", content_type: "image/png")
article.save!

file = URI.open("https://media.istockphoto.com/id/1195697770/photo/spirit-level-close-up-on-white-background-construction-bubble-level-yellow-spirit-level-tool.jpg?s=1024x1024&w=is&k=20&c=VjAo9C2wiFVGzOEulhGSRKqDvdzqqFrYFyWqNpnvlNM=")
article = Tool.new(
    name: "Level",
    description: "device for establishing a horizontal plane. It consists of a small glass tube containing alcohol or similar liquid and an air bubble.",
    rate: Faker::Number.number(digits: 2),
    condition:"Good",
    user: User.first
  )
article.image.attach(io: file, filename: "level.png", content_type: "image/png")
article.save!

file = URI.open("https://media.istockphoto.com/id/181868600/photo/empty-green-wheelbarrow.jpg?s=1024x1024&w=is&k=20&c=iz94_PpGyQu5N7oozWKpytR_jHVbpiSJ_3fAWeNQhkI=")
article = Tool.new(
    name: "Wheelbarrow",
    description: "a small cart with a single wheel at the front and two supporting legs and two handles at the rear, used typically for carrying loads in building work or gardening.",
    rate: Faker::Number.number(digits: 2),
    condition:"Fair",
    user: User.first
  )
article.image.attach(io: file, filename: "barrow.png", content_type: "image/png")
article.save!
