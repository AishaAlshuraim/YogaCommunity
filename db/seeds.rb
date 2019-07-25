# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Video.create(title: "Yoga Journey - Space", des: "
    It’s lucky Day! This 21 min integrative session is designed to bring a gentle opening to all parts of the body… and to your mind, too.
    Pro tip: use your breath.
    Today class is the ultimate brain and body yoga session. It is through this type of practice that we begin to settle into the experience of our yoga, instead of residing in our constant ambition to ‘get it right.’
    This is also the perfect elixir for our inevitably strong and ever-surfacing desire to get instant results.", url:"https://yogawithadriene.com/wp-content/uploads/2019/01/dedicate-day-13-space-768x432.jpg"
)
    
   
    
    Video.create(title: "Yoga Journey - Light", des: "Today’s practice is about incorporating the total body.The whole package.
    Not just as a work out, but as a means of exploration for something much more.
    Shine a little light in the dark places darlin’.
    I’ll guide you.
    The hardest part is getting there.
    Resistance is normal. Extraordinary humans continue to show up.
    Overcome your resistance so that you can uncover that powerful light that is unique to you.
Your purpose.
    To shine.
    Namaste.", url:"https://yogawithadriene.com/wp-content/uploads/2019/01/dedicate-day-21-light-768x432.jpg")
    
    
    
    
    
    Video.create(title: "Yoga Journey - Love", des: "
    I love this program because it really proves that you can get strong, toned, more flexible and stable in your body without having to push, crunch or put yourself down.
    Today’s session is a 20 minute practice to stretch, strengthen and anchor you in love.
    It is an opportunity to lovingly connect to yourself, but also to the community, and I don’t just mean Yoga With Adriene.
    Humanity.
    The world.
    Love rules.
    It starts with you.
    Chant it with me…
    Self Love Now!
    See you on the mat!
    Namaste.", url: "https://yogawithadriene.com/wp-content/uploads/2019/01/dedicate-day-18-love-768x432.jpg")


    Comment.create!(video_id: 1, user_id: 1, content: "Thank you, it’s help me a lot")
Comment.create!(video_id: 1, user_id: 2, content: "Thank you so much!!  I’m loving it")
Comment.create!(video_id: 3, user_id: 3, content: "Thanks for the reminder to love myself")