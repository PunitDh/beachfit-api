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



testimonials = 
	[
		{
			name: 	"Alicia",
			body: 	"For me, BeachFit and Wellbeing is the perfect way to get fit, strong and healthy. Training by the beach is
					a great way to start the day, with a fun mix of activities keeping things fresh and exciting. It’s a friendly,
					relaxed, small group environment where you’re able to go at your own pace but are still encouraged to
					push yourself. Definitely recommend!",
			image: 	""
		},
		{
			name: 	"Dorit",
			body: 	"BeachFit and Wellbeing has been a place of fitness and wellness for me, for the past 5 years. Nothing
					beats morning exercise at the beach, beautiful sunrises, great people and the best trainer there is. I am
					so grateful I have it in my life.",
			image: 	""
		},
		{
			name: 	"Kat",
			body: 	"I cannot speak highly enough about BeachFit and Wellbeing! This is my 3rd year, and I have never felt
					better! It’s the perfect way to start the day, the classes are a real work out, and not only are the people
					great but Yvonne is a champion, and pushes you to your best 😈",
			image: 	""
		},
		{
			name: 	"Lainy",
			body: 	"I can't recommend this boot camp highly enough. Classes are very well run and the trainer is very
					knowledgeable. Training programs suit all levels of fitness and can be tailored if required; however they
					can be as challenging as you want them to be. Classes not only benefit your fitness, but also your mental
					health, which is just as important. A great bunch to train with!",
			image: 	""
		},
		{
			name: 	"Shona",
			body: 	"BeachFit and Wellbeing is amazing! I joined three years ago with a close friend and we have been going
					ever since - including throughout my whole first pregnancy. The calm manner of Yvonne and her
					background in physiotherapy gave me the confidence to keep training all the way up until the birth of
					
					my son. Great variety of workouts, great flexibility - just overall a wonderful experience that gets you
					out of the house in the rain, hail (not quite) or shine.",
			image: 	""
		},
		{
			name: 	"Tom",
			body: 	"BeachFit and Wellbeing is a fantastic way to start the day. Each session is tailored for particular muscle
					groups and you’re really made to work hard. Yvonne, the instructor, is great in assisting with technique
					and pushing you harder to be better. She is always friendly and welcoming which makes the early
					morning hard work much more enjoyable.",
			image: 	""
		},
		{
			name: 	"Trine",
			body: 	"I love BeachFit and Wellbeing. I love the exercise and the company, the sunrises and the beach. It is a
					small group which makes it personal. Yvonne is an outstanding trainer and a fabulous person to be
					around. I have been training with BeachFit and Wellbeing three times a week for almost three years
					now, and I'm planning on continuing forever!",
			image: 	""
		}
	]

photo_filenames = ["Alicia - Photo.jpg", "Dorit - Photo.jpg", "Kat - Photo.jpg", "Lainy - Photo.jpg", "Shona - Photo.JPG", "Tom - Photo.jpg", "Trine - Photo.jpeg"]

photos = photo_filenames.map do |photo|
	Rails.root.join("public/images", photo)
end

full_testimonials = testimonials.map.with_index do |testimonial, index|
	Testimonial.new(name: testimonials[index][:name], body: testimonials[index][:body])
end

full_testimonials.each.with_index do |full_testimonial, index|
	File.open(photos[index]) do |file|
		full_testimonial.image.attach(io: file, filename: file.to_s)
		full_testimonial.save
		file.close
	end
end