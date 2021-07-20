# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Item.create([
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
		question: "I don't have much ",
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