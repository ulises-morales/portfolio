10.times do | blog |
  Blog.create!(
    title: "My Blog Post #{blog}",
    body: "Bacon ipsum dolor amet boudin hamburger tongue tenderloin picanha porchetta frankfurter corned beef tri-tip pork loin swine drumstick. Pastrami pork chop leberkas, shank flank sirloin ground round pork shankle meatball. Hamburger corned beef flank, ball tip strip steak pig salami brisket kevin andouille tenderloin. Shoulder venison jerky tenderloin spare ribs biltong. Short ribs hamburger leberkas strip steak, ribeye shank corned beef pork chop meatloaf jowl biltong drumstick brisket capicola ground round. Hamburger shoulder kevin strip steak. Ball tip capicola turkey cupim meatball ham chicken corned beef picanha kevin strip steak boudin hamburger."
  )
end

puts "10 blog posts created"


5.times do | skill |
  Skill.create!(
    title: "Rails #{skill}",
    percent_utilized: 15
  )
end


puts "5 skills created"

9.times do | portfolio_item |
  MyPortfolio.create!(
    title: "Portfolio title #{portfolio_item}",
    subtitle: "My service",
    body: "Bacon ipsum dolor amet boudin hamburger tongue tenderloin picanha porchetta frankfurter corned beef tri-tip pork loin swine drumstick. Pastrami pork chop leberkas, shank flank sirloin ground round pork shankle meatball. Hamburger corned beef flank, ball tip strip steak pig salami brisket kevin andouille tenderloin.",
    main_image: "http://placehold.it/600x400",
    thumb_image: "http://placehold.it/350x200",
  )
end

puts "9 portfolio items created"
