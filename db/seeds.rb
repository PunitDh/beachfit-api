# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Blog.create(user_id: 1)

Faq.create(user_id: 1)

Pricing.create(user_id: 1)

Item.create([
	{
		question: "How long do the sessions last for?",
			answer: "Each one goes for 40 minutes.",
			faq_id: 1
	},
	{
		question: "What do I need to bring?",
			answer: "Water, a mat/towel and you! All equipment needed for your workout is provided. Just make sure that you wear trainers and clothing you are comfortable exercising in.",
			faq_id: 1
	},
	{
		question: "What does an average session involve?",
			answer: "Every session is different and is responsive to the needs of the participants. But an average workout will include strength / resistance training, cardio fitness, stretching and flexibility.

			We also use a variety of equipment such as TRX, kettlebells, resistance bands, sand bags, battle ropes and more, so that you can challenge your body in new and exciting ways.",
			faq_id: 1
	},
	{
		question: "Where do you meet?",
			answer: "We meet on Coogee Beach. Head to the main steps, in the centre of the beach and you will see our trainers setting up from here. We usually set up just to the left of these steps, as you look towards the ocean.",
			faq_id: 1
	},
	{
		question: "I don’t have much fitness experience – are these sessions right for me?",
		answer: "YES! All sessions are designed to match participants’ fitness levels, and we definitely cater for fitness newbies as well as more experienced people. If you’ve got a specific concern, please get in touch for a chat.",
		faq_id: 1
	},
	{
		question: "I'm very fit and am looking for a challenge - are these sessions right for me?",
		answer: "We love working with people who want to push their physical boundaries and challenge themselves in new ways. At the end of a BeachFit and Wellbeing session, you will have maximised your potential and worked to your limits.",
		faq_id: 1
	},
	{
		question: "I've got a specific health condition or injury - can I still sign up?",
		answer: "Generally yes, but it’s always good to chat first. Please send us an email or give us a call and we can determine the best option for your particular needs.",
		faq_id: 1
	},
	{
		question: "Do you still train in bad weather?",
		answer: "Yes, we train in all weather. However, in the case of lightning or electrical storms, we postpone to another day. We will be in touch by text and via our Facebook group before our session if this needs to happen.",
		faq_id: 1
	}
])

Plan.create (
	[
		{
			name: "Full Membership",
			price: 49,
			sessions_per_week: "3 sessions per week",
			session_times: "6am or 6:45am Mon / Wed / Fri",
			description: "Perfect if you love the extra motivation and commitment of a group environment or training with friends.",
			pricing_id: 1
		},
		{
			name: "Partial Membership",
			price: 33,
			sessions_per_week: "2 sessions per week",
			session_times: "(Pick two): 6am or 6:45am Mon / Wed / Fri",
			description: "Perfect if you can’t quite commit to three sessions per week, but still want the extra motivation of training with a group.",
			pricing_id: 1
		}
	]
)

Pass.create(
	[
		{
			name: "Ten Class Pass",
			total_cost: "$180 for ten classes",
			class_cost: "$18 per class",
			pricing_id: 1
		},
		{
			name: "Five Class Pass",
			total_cost: "$100 for ten classes",
			class_cost: "$20 per class",
			pricing_id: 1
		},
		{
			name: "Drop-In Class",
			total_cost: "$28 per class",
			class_cost: "",
			pricing_id: 1
		}
	]
)

blog_posts = 
	[
		{
			title: "How To – Wrist Maintainence",
			body: "This is a guest post by one of our amazing trainers Nikki. Nikki is a super passionate trainer, and is a huge advocate for functional movement. She recorded this video for our members, after hearing complaints of wrist pain etc, in normal movement patterns such as push ups and bear crawls. This isn't just for people who are into crawling on the ground, in this day and age we all need to be looking after our wrists - especially if your mum, with all the lifting you do. Don't forget to share with anyone who could benefit from this short, sweet and actionable video.",
			image: "",
			video: "https://vimeo.com/194449016"
		},
		{
			title: "How To Activate Your Core",
			body: "Top Tip - Laughing helps!

			Have you ever heard your instructor tell you during class to activate your core, and wondering what they mean?
			
			Do you suffer from lower back pain during exercises, and have been told activating your core will help take the pressure of your lower back?
			
			Its a really confusing statement and one that we exercise professionals often throw around in abandon, and don't always have time to explain fully, and take you through exactly what we mean.
			
			We hope you find it useful, we'll be sharing more content from our vault soon, so make sure you keep your eyes peeled.
			
			If you do have trouble working out and/or how to activate your core, seeing a womens' physio can be immensely helpful.",
			image: "",
			video: "https://vimeo.com/180393399"
		},
		{
			title: "Your Official Guide To Staying Fit This Winter",
			body: "Every winter our group size half’s and people chose the doona over movement

			(we have my moments too, but still like to move consistently)
			
			In preparation for winter we wanted to set you up with the Official Beachfit Guide to staying fit this winter.
			
			1 – It’s going to be cold.
			
			This seems to surprise me/us every year. Get yourself some new layers if need be, but get ready with a winter workout wardrobe – any excuse for a clothes shop!
			
			We're talking:
			
			Long tights.
			Thin layers because everyone is in t shirts after 10 mins. Long sleeve tops are ideal!
			Lightweight scarf
			Gloves with grip (we know some clients who use gardening gloves!)
			Being prepared makes all of the difference, if you don’t have the right gear it will be the perfect excuse for you.
			
			2 – Lock in your your routine.
			
			Lock in your training sessions and make them none negotiable. Know if you will need extra accountability opposed to trying to motivate yourself and sign yourself up for a personal trainer, or small group training program.
			
			3 – Set yourself some new goals. (We’ve even made it easier for you with our free intention setting guide that you can download below).
			
			Set aside some time and dive deep into what you want to achieve over the next few months and pop it somewhere where you can see it when your alarm clock goes off.
			
			4 - Change your food.
			
			Your body is probably craving warm foods, so you can heat up from the inside out. Change salads for roasted vegetables, and warming soups, and cold water for herbal teas. Just because its cold it doesn’t mean that you have to stop eating the rainbow.
			
			Use this opportunity to batch foods too. We make 6-8 portions of veggie curries or soups at the same time and use this for busy evenings, or when the couch is looking extra comfy for some snuggles! It means we always have healthy meals at hand.",
			image: "",
			video: ""
		},
		{
			title: "Learning To Listen To Your Body (It Will Make You Thrive!)",
			body: "At BeachFit and Wellbeing we're HUGE believers in getting the mind onboard and the body will follow.

			This means different things to different people, to us what we're trying to express if that you want to create sustainable changes in the body you need to educate, empower and create new thought patterns that SUPPORT your body.
			
			So today we're sharing a exclusive inside to the tools we share with our members, and bringing one of our favourite videos out of the vault with the goal of inspiring you and starting or continuing your journey.
			
			Once you have planted this seed, you will start to see your body thrive and get the results you want (we promise - but it takes time and commitment - as does anything worth having!).
			
			Watch it below, and don't forget to share with someone who also needs to hear this!",
			image: "",
			video: "https://vimeo.com/180253998"
		},
		{
			title: "4 Of Our Favourite Fitness And Wellness Podcasts",
			body: "We wanted to share with you my  top favourite podcasts to get you started, inspired and educating yourself.

			Scott Gooding Project
			
			Scott interviews inspiring leaders in the food and fitness movement, and is hugely passionate about improving the health of Australian kids.
			
			The Space Between 
			
			Alongside being one of my favourite yoga instructors in Sydney, Kate shares mindful conversations with friends and the extended global community who are making a difference.
			
			Short and sweet, get ready to roll out your mat and join in with the Yin Yoga guide whilst you listen.
			
			Live Immediately with Mike Campbell 
			
			This podcast is perfect for mindful walks, where you can really pay attention and thoughts to this amazing conversations Mike has with inspiring people from around the globe.
			
			He dives into those big moments that have pushed them through the fears and self-limiting beliefs that hold so many of us back.
			
			The Melissa Ambrosini Show 
			
			Melissa Ambrosini is also the writer of one of our favourite and most recommended books – master your mean girl.
			
			Melissa talks to thought inspiring leaders and game changers across the globe and dives deep.
			
			Again a amazing one for mindful walks she’ll inspire you to ditch your mean girl, uplevel your thinking, health and wellbeing.",
			image: "",
			video: ""
		},
		{
			title: "10 Healthy Foods To Calm And Destress",
			body: "Today we're sharing a guest post that is definitely worth taking time out of your busy day for - everyone needs these tips.

			Sonia is a Clinical Nutritionist based in Paddington, her special interests include endocrine health, fertility, MTHFR/ methylation and  paediatric wellness. She is a true believer in a holistic, preventative approach to wellness and breaks this down into very achievable steps. Sonia works with her clients to focus on not only what they eat, but how lifestyle, environment and mental wellbeing may be affecting their health.
			
			Sonia offers a complimentary phone consult to all new clients, you can contact her here.
			
			Deadlines at work, kids on holidays, social calendar out of control...this is when we may reach for a quick fix or a convenient 'excuse' of a meal. The truth is what you eat helps (or hinders) the stress response so by making better food choices you will be better equipped to manage when things get tough. Stress is linked to just about every disease under the sun so it makes sense to minimise it's effect whenever possible.
			
			10 Stress-Busting Foods 
			
			Berries - high in antioxidants and Vitamin C. During times of stress our body utilises more Vitamin C than usual leading to lowered immunity. Vitamin C has also been shown to assist with lowering blood pressure and cortisol (stress hormone) levels.
			Dark Chocolate - contains polyphenols and flavonols (healthy antioxidants) and is a proven mood enhancer.
			Fermented Foods - for example; natural yogurt, kumbucha tea & sauerkraut. We now know that 80-90% of serotonin (our feel good hormone) is manufactured in the gut. Without good bacteria and a balanced diet your serotonin making days are numbered.
			Rolled Oats - the remainder of our serotonin is produced by the brain and rolled oats, being a complex carbohydrate, causes our brain to do just that.
			Wild Salmon -  excellent source of Omega-3s which studies have revealed can reduce stress and anxiety by more that 20%.
			Green Tea- contains a host of antioxidants and an exceptional amino acid called L-theanine. L-theanine is a powerful mood enhancer and green tea is an all round brain booster.  Only brew to 80 degrees celsius.
			Cashews  -great source of zinc and taste delicious. Low levels of zinc have been associated with both anxiety and depression.
			Avocado - packed with stress-relieving B vitamins.B Vitamins are needed for healthy nerve and brain cells and deficiency can result in feelings of anxiety.
			Turmeric -the active ingredient of turmeric is called curcumin- adding to its already impressive line-up of benefits it also reportedly lowers cortisol levels. Add some turmeric to your curry, try a turmeric latte or consider supplementation.
			Leafy Greens - rich in folate (B9) which is important in the production of mood regulation neurotransmitters such as serotonin and dopamine.
			So the next time you are stressed out and tempted to reach for 'another' coffee and sugar laden snack think about how much better you will feel when you dampen down the stress levels and give your body a chance to recalibrate.",
			image: "",
			video: ""
		},
		{
			title: "Do You Want To Supercharge Your Fitness And Health Results? Do This One Thing…",
			body: "For someone to take action in their life there needs to be 1 or 2 reasons. 1 they are moving away from desperation. This may be a health scare, a wake-up call, or something has shocked them into action, and made them realise that they need to make changes, or secondly it can be someone moving towards inspiration. They know what they want and they are on a plan to get it.

			In between that are people, who are aware they need to make change, but aren’t close enough to desperation, or to inspiration to make a defined decision and start making positive changes in their life. There’s nothing wrong in being here, but recognizing that you still need to nourish and move your body.
			
			So if your wanting to make a change in your life, and want it to be a sustainable change you need to take inspired action and work out your why.
			
			 How do you do this?
			Listen to the short audio blog and discover the one trick that will help you supercharge your results....",
			image: "",
			video: ""
		},
		{
			title: "5 Guidelines To Maintain Your Weightloss",
			body: "Have you lost weight before and then regained the weight in a matter of weights/ months or even years? You could have even gained more then you lost...

			We see it happening again and again, so today we're sharing with you the 5 rules you MUST follow for sustainable weight loss, and sharing with you.",
			image: "",
			video: ""
		},
		{
			title: "4 Things You Need To Hear If Your Currently Trying To Lose Weight",
			body: "Do you have a goal weight in mind, and believe that as soon as we step on the scales, life is just going to fall into place?

			Unfortunately we're here to tell you this isn’t the case. But the good news, everything can fall into place RIGHT this second - and there's an amazing freebie for you at the bottom of the post!
			
			What do you tell yourself, will happen when you lose those extra kilo’s?
			
			You’ll finally be happy.
			You’ll stop counting calories.
			Your going to feel incredible about yourself... finally!
			Insert your own feeling of choice here.
			Today we wanted to share with you 4 things you MUST know before you achieve your goal weight.",
			image: "",
			video: ""
		},
		{
			title: "Increasing Your Happiness",
			body: "Choosing happiness = being in a positive flow and in the moment for no in pacticular reason as life is beautiful!

			Being in a positive flow, is one of those moments in life where you are in the moment. Your present, you can feel the wind blowing through your hair, and have a big smile on your face.
			
			All of a sudden a thought pops into your head “I’m not sure how were going to pay the bills for next week” or “I wish these jeans would stop digging into my stomach” or you may even start a argument with someone.
			
			A dark cloud has suddenly descended and those moments of joy are long gone.
			
			Most likely you haven’t even realised this has happened, as we do this consistently.",
			image: "",
			video: ""
		}
	]

blog_photo_filenames = ["Photo-3-04-2017-08-58-09-copy-750x423.png", "", "IMG_0562-750x563.jpg", "", "Podcast-750x500.jpg", "ginger-plant-asia-rhizome-161556-750x501.jpeg", "pexels-photo-186422-750x500.jpeg", "pexels-photo-38084-750x500.jpeg", "pexels-photo-89820-750x500.jpeg", "pexels-photo-320007-750x499.jpeg"]

blog_photos = blog_photo_filenames.map do |photo|
	unless photo == ""
		Rails.root.join("public/images/blogimages", photo)
	else
		""
	end
end

full_blogposts = blog_posts.map.with_index do |blog_post, index|
	Post.new(title: blog_posts[index][:title], body: blog_posts[index][:body], blog_id: 1, video: blog_posts[index][:video])
end

full_blogposts.each.with_index do |full_blogpost, index|
	unless blog_photos[index] == ""
		File.open(blog_photos[index]) do |file|
			full_blogpost.image.attach(io: file, filename: file.to_s)
			full_blogpost.save
			file.close
		end
	else
		full_blogpost.save
	end
end



# testimonials = 
# 	[
# 		{
# 			name: 	"Alicia",
# 			body: 	"For me, BeachFit and Wellbeing is the perfect way to get fit, strong and healthy. Training by the beach is
# 					a great way to start the day, with a fun mix of activities keeping things fresh and exciting. It’s a friendly,
# 					relaxed, small group environment where you’re able to go at your own pace but are still encouraged to
# 					push yourself. Definitely recommend!",
# 			image: 	""
# 		},
# 		{
# 			name: 	"Dorit",
# 			body: 	"BeachFit and Wellbeing has been a place of fitness and wellness for me, for the past 5 years. Nothing
# 					beats morning exercise at the beach, beautiful sunrises, great people and the best trainer there is. I am
# 					so grateful I have it in my life.",
# 			image: 	""
# 		},
# 		{
# 			name: 	"Kat",
# 			body: 	"I cannot speak highly enough about BeachFit and Wellbeing! This is my 3rd year, and I have never felt
# 					better! It’s the perfect way to start the day, the classes are a real work out, and not only are the people
# 					great but Yvonne is a champion, and pushes you to your best 😈",
# 			image: 	""
# 		},
# 		{
# 			name: 	"Lainy",
# 			body: 	"I can't recommend this boot camp highly enough. Classes are very well run and the trainer is very
# 					knowledgeable. Training programs suit all levels of fitness and can be tailored if required; however they
# 					can be as challenging as you want them to be. Classes not only benefit your fitness, but also your mental
# 					health, which is just as important. A great bunch to train with!",
# 			image: 	""
# 		},
# 		{
# 			name: 	"Shona",
# 			body: 	"BeachFit and Wellbeing is amazing! I joined three years ago with a close friend and we have been going
# 					ever since - including throughout my whole first pregnancy. The calm manner of Yvonne and her
# 					background in physiotherapy gave me the confidence to keep training all the way up until the birth of
					
# 					my son. Great variety of workouts, great flexibility - just overall a wonderful experience that gets you
# 					out of the house in the rain, hail (not quite) or shine.",
# 			image: 	""
# 		},
# 		{
# 			name: 	"Tom",
# 			body: 	"BeachFit and Wellbeing is a fantastic way to start the day. Each session is tailored for particular muscle
# 					groups and you’re really made to work hard. Yvonne, the instructor, is great in assisting with technique
# 					and pushing you harder to be better. She is always friendly and welcoming which makes the early
# 					morning hard work much more enjoyable.",
# 			image: 	""
# 		},
# 		{
# 			name: 	"Trine",
# 			body: 	"I love BeachFit and Wellbeing. I love the exercise and the company, the sunrises and the beach. It is a
# 					small group which makes it personal. Yvonne is an outstanding trainer and a fabulous person to be
# 					around. I have been training with BeachFit and Wellbeing three times a week for almost three years
# 					now, and I'm planning on continuing forever!",
# 			image: 	""
# 		}
# 	]

# photo_filenames = ["Alicia - Photo.jpg", "Dorit - Photo.jpg", "Kat - Photo.jpg", "Lainy - Photo.jpg", "Shona - Photo.JPG", "Tom - Photo.jpg", "Trine - Photo.jpeg"]

# photos = photo_filenames.map do |photo|
# 	Rails.root.join("public/images", photo)
# end

# full_testimonials = testimonials.map.with_index do |testimonial, index|
# 	Testimonial.new(name: testimonials[index][:name], body: testimonials[index][:body])
# end

# full_testimonials.each.with_index do |full_testimonial, index|
# 	File.open(photos[index]) do |file|
# 		full_testimonial.image.attach(io: file, filename: file.to_s)
# 		full_testimonial.save
# 		file.close
# 	end
# end