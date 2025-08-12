class Project {
  final String title;
  final String description;
  final List<String>? images;
  final List<String> technologies;
  final String? githubLink;
  final String? liveDemoLink;
  final String? playStoreLink;
  final String? appStoreLink;
  final List<String>? screenshot;

  Project({
    required this.title,
    required this.description,
    this.images,
    required this.technologies,
    this.githubLink,
    this.liveDemoLink,
    this.playStoreLink,
    this.appStoreLink,
    this.screenshot,
  });
}



List<Project> demo_projects = [
  Project(
    title: "AI Image Generator App",
    description: "AI Image Generator is a cutting-edge app designed to transform your ideas into visually captivating images using the power of artificial intelligence. Simply enter a text prompt—whether it’s a detailed description, a simple phrase, or just a few creative keywords—and the app will instantly generate a high-quality image that matches your vision. From hyper-realistic scenes and futuristic environments to dreamy landscapes and anime-style characters, the possibilities are limitless. With an easy-to-use interface and support for various art styles, AI Image Generator makes it possible for anyone to create stunning digital artwork without any design or drawing experience. Whether you're a digital artist looking for inspiration, a marketer in need of visual content, or just someone who loves to explore creativity, this app has something for everyone. You can regenerate images until you get the perfect result, save your favorite creations, and share them directly on social media or with friends. It’s not just a tool—it’s your creative companion, helping you visualize the unseen and express the unimaginable. Let your imagination run wild and turn words into art with AI Image Generator.",
    images: ["assets/images/textToImage/main1.png", "assets/images/textToImage/main2.png", "assets/images/textToImage/main3.png", "assets/images/textToImage/main4.png","assets/images/textToImage/main5.png"],
    technologies: ["Flutter", "REST API", "DreamStudio", "Provider"],
    // githubLink: "https://github.com/yourname/ai-image-app",
    playStoreLink: "https://play.google.com/store/apps/details?id=com.example.aiimage",
    appStoreLink: "https://apps.apple.com/app/id1234567890",
    // screenshot: ["assets/images/aruna/1.png", "assets/images/aruna/2.png", "assets/images/aruna/3.png", "assets/images/aruna/4.png"],
  ),
  Project(
    title: "Aruna",
    description: "ARUNA is a technology and logistics company that services the Oil and Gas Sector. Specializing in fluids disposal and vac truck services. Aruna App optimizes with GPS Geofencing & Al Routing for efficiency and transparency. Real-time tracking & enhanced billing ensure seamless communication & accurate invoicing in a user-friendly interface.Efficiency: Streamlines Streamlines operations with GPS Geofencing and Al Route Optimization.Cost Savings: Reduces expenses through optimized routing and fuel efficiency.Transparency: Provides real-time tracking and ETA updates for enhanced visibility.",
    images: ["assets/images/aruna/main1.png", "assets/images/aruna/main2.png", "assets/images/aruna/main3.png", "assets/images/aruna/main4.png","assets/images/aruna/main5.png","assets/images/aruna/main6.png"],
    technologies: ["Flutter", "REST API", "Getx", "WebSockets", "Locations","Push Notifications","Notifications"],
    playStoreLink: "https://play.google.com/store/apps/details?id=com.official.aruna.app",
    appStoreLink: "https://apps.apple.com/us/app/aruna/id6470713901",
    screenshot: ["assets/images/aruna/1.png", "assets/images/aruna/2.png", "assets/images/aruna/3.png", "assets/images/aruna/4.png"],
  ),
  Project(
    title: "iTribe",
    description: "iTribe – Join the Global Network of Israel Supporters and Lost Tribes! iTribe is a pioneering platform that activates a vast, untapped network of millions of Israel supporters who identify as part of the Lost Tribes of Israel – what we call the ‘Israelite Commonwealth.’ Our mission is to create meaningful connections across communities by recognizing shared historic roots and family (national) ties. iTribe welcomes everyone, embracing diversity in national and religious identity. Whether you are Jewish, Christian, Muslim, or any other background, iTribe invites you to join a global alliance built on a common heritage.",
    images: ["assets/images/iTribe/main1.png", "assets/images/iTribe/main2.png", "assets/images/iTribe/main3.png", "assets/images/iTribe/main4.png","assets/images/iTribe/main5.png","assets/images/iTribe/main6.png","assets/images/iTribe/main7.png"],
    technologies: ["Flutter", "REST API", "Provider", "WebSockets", "Locations", "Mapbox", "Stripe","Push Notifications"],
    playStoreLink: "https://play.google.com/store/apps/details?id=com.itribe.app",
    appStoreLink: "https://apps.apple.com/us/app/itribe/id6738579391",
    screenshot: ["assets/images/iTribe/1.png", "assets/images/iTribe/2.png", "assets/images/iTribe/3.png", "assets/images/iTribe/4.png"],
  ),
  Project(
    title: "ETA Express",
    description: "Effortlessly manage local delivery shipments with ETA Express – the ultimate companion for drivers. Streamline your pickup, assortment, and delivery operations with ease. ETA Express is the go-to app for drivers handling local delivery shipments. Designed to simplify logistics, it empowers drivers to efficiently manage pickups, assortments, and deliveries. Say goodbye to cumbersome paperwork and hello to seamless operations. With ETA Express, optimize routes, track deliveries in real-time, and ensure timely arrivals. Join the fleet of drivers revolutionizing the way shipments are handled locally. Download now and elevate your delivery game with ETA Express.",
    images: ["assets/images/eta/main1.png", "assets/images/eta/main2.png", "assets/images/eta/main4.png","assets/images/eta/main5.png","assets/images/eta/main6.png"],
    technologies: ["Flutter", "REST API", "Provider", "Locations", "Google Maps",],
    playStoreLink: "https://play.google.com/store/apps/details?id=com.official.etaExpress",
    appStoreLink: "https://apps.apple.com/us/app/eta-express/id6477824745",
    screenshot: ["assets/images/eta/1.png", "assets/images/eta/2.png", "assets/images/eta/3.png", "assets/images/eta/4.png"],
  ),
  Project(
    title: "Hands On Heal",
    description: "Experience the ultimate relaxation with our massage booking app. Whether you're at home, at the office, or on the go, easily schedule a professional massage service tailored to your needs. Our app connects you with expert, licensed therapists offering a range of services, including Swedish, deep tissue, prenatal, couples massages, and more. Convenient Booking: Schedule appointments that fit your lifestyle. Certified Therapists: Only verified professionals for your peace of mind. Customized Services: Choose the massage type, therapist, and duration. Real-Time Availability: Book and confirm appointments instantly.",
    images: ["assets/images/handsOnHeal/main1.png", "assets/images/handsOnHeal/main2.png", "assets/images/handsOnHeal/main3.png", "assets/images/handsOnHeal/main4.png","assets/images/handsOnHeal/main5.png","assets/images/handsOnHeal/main6.png"],
    technologies: ["Flutter", "REST API", "Provider", "WebView", "Push Notifications", "Notifications"],
    playStoreLink: "https://play.google.com/store/apps/details?id=com.handsonheal.app.official",
    appStoreLink: "https://apps.apple.com/us/app/hands-on-heal/id6670318902",
    screenshot: ["assets/images/handsOnHeal/1.png", "assets/images/handsOnHeal/2.png", "assets/images/handsOnHeal/3.png", "assets/images/handsOnHeal/4.png", "assets/images/handsOnHeal/5.png"],
  ),
  Project(
    title: "HR Connect",
    description: "HR Connect is your ultimate companion for managing your workplace needs. With HR Connect, you can easily track your attendance, apply for leaves, and conveniently access your salary information, all in one place. Take control of your work-life balance by effortlessly marking your attendance online, eliminating the need for traditional timekeeping methods. Whether you're working from the office or remotely, HR Connect ensures accurate attendance records. Apply for leaves with just a few taps on your phone. Submit leave requests, specify the dates, and add any necessary details. Stay informed with real-time updates on your leave status, making the process hassle-free and transparent.",
    images: ["assets/images/hr/main1.png", "assets/images/hr/main2.png", "assets/images/hr/main3.png", "assets/images/hr/main4.png", "assets/images/hr/main5.png"],
    technologies: ["Flutter", "Rest API", "Getx", "Push Notifications", "Notifications"],
    playStoreLink: "https://play.google.com/store/apps/details?id=pk.hrconnect.app&hl=en",
  ),
  Project(
    title: "The United Insurance",
    description: "The United Insurance app by The United Insurance Company lets users easily manage their insurance needs from their mobile devices, including viewing and handling policies, filing claims, tracking commissions, and requesting withdrawals. It offers a wide range of products such as motor, health, travel, fire, crop, marine, pet, home, livestock, and solar insurance, all in one platform. Designed for convenience and accessibility, the app is regularly updated (latest in November 2024) and prioritizes user privacy by not collecting or sharing personal data.",
    images: ["assets/images/united/main1.png", "assets/images/united/main2.png", "assets/images/united/main3.png", "assets/images/united/main4.png", "assets/images/united/main5.png", "assets/images/united/main6.png"],
    technologies: ["Flutter", "Rest API", "Provider", "Push Notifications", "Notifications"],
    playStoreLink: "https://play.google.com/store/apps/details?id=com.united.uic",
    appStoreLink: "https://apps.apple.com/pk/app/the-united-insurance/id6446296832",
  ),
  Project(
    title: "Premiumreal",
    description: "Premiumreal is a transformative multi-currency financial app designed for the global citizen, facilitating seamless international transactions, be it payments, remittances, or business dealings. International money transfer, or remittances, represents a crucial source of income for millions of families around the world.  We at Premiumreal have streamlined these processes, ensuring swift, and secure transactions.",
    images: ["assets/images/premiumreal/main1.png", "assets/images/premiumreal/main2.png", "assets/images/premiumreal/main3.png", "assets/images/premiumreal/main4.png", "assets/images/premiumreal/main5.png"],
    technologies: ["Flutter", "Rest API", "Provider", "Persona Verification", "Face Id", "Fingerprint","Push Notifications","Notifications"],
    playStoreLink: "https://play.google.com/store/apps/details?id=com.premium.premiumreal&hl=en",
    appStoreLink: "https://apps.apple.com/us/app/premiumreal/id1673175875",
  ),
  Project(
    title: "Sharkulator",
    description: "Sharkulator is more than just a calculator; it’s your ultimate math companion. Designed for convenience and efficiency, Sharkulator allows you to perform calculations with ease and share the results instantly through text messages, WhatsApp, and other platforms.\nUser-Friendly: Enjoy a sleek and intuitive interface that makes calculations a snap.\nShare Results: Quickly send your calculations to friends, family, or colleagues with just a tap.\nReliable Performance: Count on Sharkulator for precise and accurate results every time.\nPerfect for students, professionals, and anyone who needs quick and reliable math solutions, Sharkulator is the go-to app for all your calculation needs.",
    images: ["assets/images/sharkulator/main1.png", "assets/images/sharkulator/main2.png", "assets/images/sharkulator/main3.png", "assets/images/sharkulator/main4.png"],
    technologies: ["Flutter", "Firebase", "Provider"],
    playStoreLink: "https://play.google.com/store/apps/details?id=com.sharkulator.com.app&hl=en",
    appStoreLink: "https://apps.apple.com/us/app/sharkulator/id6503602484",
  ),
  Project(
    title: "Nursing Homes",
    description: "Finding a great care facility may be one of the hardest decisions a loved one can make. That’s why we built NursingHomes.io. Our goal is to streamline the process by helping you compare all of your options on one easy platform. Whether you’re looking for great home care or the comfiest assisted living, we want to connected you with the right fit. Simply search by location, type of facility and find great nursing facilities and services near you.",
    images: ["assets/images/nursing/main1.png", "assets/images/nursing/main2.png", "assets/images/nursing/main3.png", "assets/images/nursing/main4.png"],
    technologies: ["Flutter", "Firebase", "Google Maps", "Provider"],
    playStoreLink: "https://play.google.com/store/apps/details?id=com.homeNursing.io.app&hl=en",
    appStoreLink: "https://apps.apple.com/us/app/nursing-homes/id6503299184",
  ),
];

