AdminUser.delete_all
AdminUser.create([
  {
    email: 'hello@goodfornothing.com',
    password: 'w1ldth4ng',
    password_confirmation: 'w1ldth4ng'
  }
])

Category.delete_all
categories = Category.create([
  { title: 'Wild Thing' },
  { title: 'Activities' },
  { title: 'Apps' },
  { title: 'Memberships' },
  { title: 'Networks' }
])

@cat_wildthing = Category.find_by_title('Wild Thing')
@cat_activities = Category.find_by_title('Activities')
@cat_apps = Category.find_by_title('Apps')
@cat_member = Category.find_by_title('Memberships')
@cat_networks = Category.find_by_title('Networks')

Project.delete_all
projects = Project.create([
  {
    title: 'Wild Time',
  	url: 'http://wildtime.projectwildthing.com/',
  	description: 'Time-based activities in the wild.',
  	category_id: @cat_wildthing.id
  },
  {
    title: 'Out and About Pack',
    body: 'This is the first stage of the OUT AND ABOUT project. It is a beautifully designed, two-sided card given to parents just as they leave a maternity ward with their new baby or at postnatal clinics in the first 6 weeks.  It explains the wide-ranging benefits to parents and children of time spent outdoors.
    At Project Wild Thing, we are currently running a trial of the card in various Maternity Wards and postnatal clinics. You are free to download it [link] now.  Please share it with any parents of young children you know.
    As the project develops, we will produce further booster packs. We will deliver these to parents at important developmental stages in a child\'s life. These will reinforce the message that the outdoors is great fun for kids, and important for their ongoing development. They will broaden in their scope to become tools for the child as well as the parent and relate to the Project Wild Thing online platform with great ideas for getting into nature. http://goodfornothing.s3.amazonaws.com/Wild_Thing_Out_and_About_Pack.pdf',
    description: 'Record the time you spend outdoors with your newborn',
    category_id: @cat_wildthing.id
  },
  { 
  	title: 'Forest Schools',
  	url: 'http://www.forestschools.com/',
  	description: 'A big organisation dedicated to encouraging and inspiring individuals of any age through positive outdoors experiences. Forest Schools are focussed on getting kids out of the classroom and into natural learning environments.',
  	category_id: @cat_member.id,
  	featured: true
  },
  { 
  	title: 'Woodcraft Folk',
  	url: 'www.woodcraft.org.uk',
  	description: 'A broad membership-based organisation for kids to learn woodland skills and get into the wild.',
  	category_id: @cat_member.id
  },
  { 
  	title: 'The Scouts',
  	url: 'http://scouts.org.uk/',
  	description: 'A long-established organisation that provides outdoor challenge and adventure to over 400,000 girls and boys across the UK',
  	category_id: @cat_member.id
  },
  { 
  	title: 'The Guides',
  	url: 'http://www.girlguiding.org.uk',
  	description: 'The United Kingdom\'s largest voluntary organisation for girls and young women, with half a million members including about 100,000 adult volunteers.',
  	category_id: @cat_member.id
  },
  { 
  	title: 'Forest School Camps',
  	url: 'www.fsc.org.uk',
  	description: 'FSC provides wild holiday camps where children and adults play and work together in nature.',
  	category_id: @cat_member.id
  },
  { 
  	title: 'The National trust',
  	url: 'http://www.nationaltrust.org.uk/',
  	description: 'Whether you\'re interested in gardens, castles, wildlife or just somewhere peaceful to relax, membership gives access to hundreds of days out.',
  	category_id: @cat_member.id
  },
  { 
  	title: 'RSPB',
  	url: 'www.rspb.org.uk',
  	description: 'Become a member and save threatened birds and wildlife across the UK and overseas.',
  	category_id: @cat_member.id
  },
  { 
  	title: 'Monkey-Do',
  	url: 'www.monkey-do.net',
  	description: 'The UK\'s best independent wild play specialist, providing risky play activities in trees and woodlands.',
  	category_id: @cat_activities.id,
  	featured: true
  },
  { 
  	title: "The Fairyland Trust",
  	url: "http://www.fairylandtrust.org/index.html",
  	description: 'The Fairyland Trust creates family days out, rich in magic and nature. For example, at the Fairy Fair you can meet pirates, trolls and the fairy queen.',
  	category_id: @cat_activities.id,
  	featured: true
  },
  { 
  	title: 'London Adventure playgrounds',
  	url: 'http://www.timeout.com/london/feature/1232/adventure-playgrounds-in-london',
  	description: 'We love adventure playgrounds - especially the Glamis Adventure Playground in Shadwell, and the 3 Corners Adventure playground in between Farringdon and the Angel.',
  	category_id: @cat_activities.id
  },
  { 
  	title: 'Adventure playgrounds around the UK',
  	url: 'http://www.talktalk.co.uk/travel/uk_breaks/features/top-10-adventure-playgrounds.html',
  	category_id: @cat_activities.id
  },
  { 
  	title: 'The Garden Classroom',
  	url: 'www.thegardenclassroom.org.uk ',
  	description: 'A social enterprise in London running educational sessions and events that get kids outside ',
  	category_id: @cat_activities.id
  },
  { 
  	title: 'Ardmay House ',
  	url: 'http://www.ardmay.co.uk/ ',
  	description: 'Outdoor centre in incredible location on the shores of Loch Lomond.',
  	category_id: @cat_activities.id
  },
  { 
  	title: 'Mill on the Brue',
  	url: 'http://www.millonthebrue.co.uk/',
  	category_id: @cat_activities.id
  },
  { 
  	title: 'Epping Forest Field Centre ',
  	url: 'http://www.field-studies-council.org/centres/eppingforest.aspx',
  	description: 'A non-residential centre in a Site of Special Scientific Interest and Special Area of Conversation with great learning opportunities ',
  	category_id: @cat_activities.id
  },
  { 
  	title: 'The London Beekeepers Association',
  	url: 'http://www.lbka.org.uk/index.php?page=Home ',
  	description: 'Urban bee-keeping! The LBKA support all things bee-related in London, and have links to other organisations around the country.',
  	category_id: @cat_activities.id
  },
  { 
  	title: 'The Secret Garden Outdoor Nursery',
  	url: 'http://www.secretgardenoutdoor-nursery.co.uk/',
  	description: 'A pioneering outdoor nursery for children in Fife, Scotland.',
  	category_id: @cat_activities.id
  },
  { 
  	title: 'Swainswick Explorers',
  	url: 'http://www.playingoutdoors.org/',
  	description: 'Great rural project near bath facilitating fun and adventurous environmental play in the wild.',
  	category_id: @cat_activities.id
  },
  { 
  	title: 'Trackways',
  	url: 'http://www.trackways.co.uk/',
  	description: 'Courses in survival skills and nature awareness in Sussex.',
  	category_id: @cat_activities.id
  },
  { 
  	title: 'Mission Explore',
  	url: 'http://www.missionexplore.net/',
  	description: 'Brilliant activities website with missions to achieve out in the real world and a leader board to track how you fare alongside other users of the site. ',
  	category_id: @cat_activities.id,
  	featured: true
  },
  { 
  	title: 'FORESTXPLORER',
  	url: 'http://itunes.apple.com/gb/app/forestxplorer/id428559042?mt=8',
  	description: 'Forestry Commission app that helps identify nearby woodland to visit (FREE)',
  	category_id: @cat_apps.id
  },
  { 
  	title: 'ENJOY ENGLAND',
  	url: 'http://itunes.apple.com/gb/app/enjoy-england/id431255704?mt=8',
  	description: 'Find places to go in England for free and searches outdoor activities in each place. (FREE)',
  	category_id: @cat_apps.id
  },
  { 
  	title: 'VISITSCOTLAND',
  	url:  'http://itunes.apple.com/gb/app/visitscotland-days-out/id403995978?mt=8',
  	description: 'Find things to do and places to go in Scotland (FREE)',
  	category_id: @cat_apps.id
  },
  { 
  	title: 'HERITAGE',
  	url: 'http://itunes.apple.com/gb/app/heritage-app/id385080754?mt=8',
  	description: 'Maps and helps you search over 450 heritage locations in England and Wales (59p)',
  	category_id: @cat_apps.id
  },
  { 
  	title: 'NATIONAL TRUST',
  	url: 'http://itunes.apple.com/gb/app/national-trust/id360792792?mt=8',
  	description: 'Search for properties, woods, and beautiful areas of countryside owned by the National Trust (FREE)',
  	category_id: @cat_apps.id
  },
  { 
  	title: 'PROJECT NOAH',
  	url: 'http://www.projectnoah.org/about',
  	description: 'Helps you explore and document wildlife and a platform to communicate with others doing the same thing (FREE)',
  	category_id: @cat_apps.id,
  	featured: true
  },
  { 
  	title: 'iBIRD',
  	url: 'www.ibird.com',
  	description: 'A field guide app to help identify birds (there is a free version, and a &pound;6.99 version)',
  	category_id: @cat_apps.id
  },
  { 
  	title: 'COLLINS BRITISH WILDLIFE PHOTOGUIDE',
  	url: 'http://itunes.apple.com/gb/app/collins-british-wildlife-photoguide/id335735711?mt=8',
  	description: 'Interactive version of the Collins Complete British Wildlife Photoguide, with 1500 species likely to be encountered (&pound;5.99)',
  	category_id: @cat_apps.id
  },
  { 
  	title: 'TREEID',
  	url: 'http://itunes.apple.com/gb/app/treeid-the-british-tree-identification/id330025326?mt=8',
  	description: 'Beautiful visual guide to identify trees of the countryside and woodland in Britain (&pound;2.39)',
  	category_id: @cat_apps.id
  },
  { 
  	title: 'CHIRP!',
  	url: 'http://itunes.apple.com/gb/app/chirp-bird-songs-europe-ipad/id373561269?mt=8',
  	description: 'Listen and match up bird songs of Britain and Western Europe! Featuring 167 songs from the Tawny Owl to the Bittern. (&pound;1.79)',
  	category_id: @cat_apps.id
  },
  { 
  	title: 'WILD MUSHROOMS',
  	url: 'http://itunes.apple.com/gb/app/wild-mushrooms-north-america/id370626981?mt=8',
  	description: 'Featuring complete series of 2660 photos of 1560 wild mushrooms and other fungi from North America and Europe (free for lite version, or &pound;1.19)',
  	category_id: @cat_apps.id
  },
  { 
  	title: 'POOTER',
  	url: 'www.pooter.it',
  	description: 'A game and visual guide to identify bees and share bee-spotting photos with friends.',
  	category_id: @cat_apps.id
  },
  { 
  	title: 'GEOCACHING',
  	url: 'http://itunes.apple.com/gb/app/geocaching-intro/id329541503?mt=8',
  	description: 'A location-based game where you join the search for geocaches and the growing Geocaching.com community of families, urban explorers and spontaneous outdoor adventurers.',
  	category_id: @cat_apps.id
  },
  { 
  	title: 'STAR WALK',
  	url: 'http://itunes.apple.com/GB/app/id295430577?mt=8&affId=1758689',
  	description: 'A stellar augmented reality app that labels all the stars, constellations and satellites you point your iPhone at (&pound;1.99) ',
  	category_id: @cat_apps.id
  },
  { 
  	title: 'The National Trust\'s 50 things to do before you\'re 11 and &frac34; ',
  	url: 'www.50things.org.uk',
  	description: 'Great campaign with the ultimate list of things to do outside. ',
  	category_id: @cat_networks.id
  },
  { 
  	title: 'RSPB',
  	url: 'http://www.rspb.org.uk/about/',
  	description: 'The RSPB - apart from protecting birds around the UK - also run the biggest birdwatching campaign for all families to get involved with - have a look at The Big Garden Birdwatch.',
  	category_id: @cat_networks.id
  },
  { 
  	title: 'Play England',
  	url: 'http://www.playengland.org.uk',
  	description: 'Play England are all about getting kids playing out and playing wild - have a look at the Love Outdoor Play campaign. Also, their PLAY MAP is an amazing tool for finding activities near where you live.',
  	category_id: @cat_networks.id
  },
  { 
  	title: 'Going Wild',
  	url: 'www.goingwild.net',
  	description: 'A brilliant organisation running in partnership with Natural England to develop an outdoor activity toolkit. ',
  	category_id: @cat_networks.id
  },
  { 
  	title: 'Muck in 4 Life',
  	url: 'http://www.defra.gov.uk/muckin4life/ ',
  	description: 'Tons of information about fun, healthy and free environmental activities for the whole family.',
  	category_id: @cat_networks.id
  },
  { 
  	title: 'Bright Green Kids',
  	url: 'http://www.brightgreenkids.co.uk/',
  	description: 'Nationwide campaign that brings together young people from around the UK to share ideas about the planet.',
  	category_id: @cat_networks.id
  },
  { 
  	title: 'Buglife',
  	url: 'www.buglife.org.uk',
  	description: 'The only organisation in Europe devoted to the conservation of all invertebrates.',
  	category_id: @cat_networks.id
  },
  { 
  	title: 'Great Plant Hunt',
  	url: 'http://www.greatplanthunt.org/',
  	description: 'The UK\'s biggest school science project.',
  	category_id: @cat_networks.id
  },
  { 
  	title: 'Change 4 Life',
  	url: 'http://www.nhs.uk/change4life/Pages/change-for-life.aspx ',
  	description: 'Healthy food and activity tips for you and your family, also run regional campaigns with activities and events.',
  	category_id: @cat_networks.id
  },
  { 
  	title: 'Together for Trees',
  	url: 'http://www.togetherfortrees.com/ ',
  	description: 'Partnership between the RSPB and Tesco to save rainforests all over the world. ',
  	category_id: @cat_networks.id
  },
  { 
  	title: 'Natural England / One Million Children Outdoors ',
  	url: 'http://www.naturalengland.org.uk/gettinginvolved/default.aspx ',
  	description: 'Natural England aim to protect and improve England\'s natural environment, and try to persuade people to enjoy and get involved with nature in the UK. ',
  	category_id: @cat_networks.id
  },
  { 
  	title: 'Outdoor Nation',
  	url: 'http://outdoornation.org.uk/',
  	description: 'Inquiry, facilitated by National Trust, looking into how to reconnect kids with nature, inspired by Natural Childhood report by Stephen Moss and Richard Louv\'s landmark book "Last Child in the Woods". ',
  	category_id: @cat_networks.id
  },
  { 
  	title: 'Nature Detectives',
  	url: 'www.naturedetectives.org.uk/ ',
  	description: 'Website with a club to join, activities to do and lots of information about events around the UK. ',
  	category_id: @cat_networks.id
  },
  { 
  	title: 'Big Wildlife Garden',
  	url: 'http://www.bigwildlifegarden.org.uk/',
  	description: '"Britain\'s Newest Nature Reserve" - membership website with activities to do, opportunities for photo uploading and competitions for the best wildlife garden.',
  	category_id: @cat_networks.id
  },
  { 
  	title: 'Natural History Museum',
  	url: 'http://www.nhm.ac.uk/research-curation/library/digital-library/nature-societies-online/',
  	description: 'The Natural History Museum is a great source of information - particularly their searchable directory of British and Irish natural history and related societies, for finding people nearby who might be running great clubs or activities. ',
  	category_id: @cat_networks.id
  },
  { 
  	title: 'Forestry Commission',
  	url: 'http://www.forestry.gov.uk/forestry/INFD-7LSEHW',
  	description: 'The Forestry Commission have tons of ideas to download in booklet form for activities and things to do outside. ',
  	category_id: @cat_networks.id
  },
  { 
  	title: 'Butterfly Conservation',
  	url: 'http://www.butterfly-conservation.org/text/36/recording_monitoring.html',
  	description: 'Great website with different projects, schemes and events all centred around butterflies and moths.',
  	category_id: @cat_networks.id
  },
  { 
  	title: 'Froglife',
  	url: 'www.froglife.org',
  	description: 'A national wildlife charity committed to conserving amphibians and reptiles, and saving the habitats they depend on.',
  	category_id: @cat_networks.id
  }
])

Partner.delete_all
partners = Partner.create([
  { 
    name: 'National Trust',
    url: 'http://www.nationaltrust.org.uk/',
    priority: 1
  },
  { 
    name: 'Arla',
    url: 'http://www.arlafoods.co.uk/',
    priority: 2
  },
  { 
    name: 'NHS',
    url: 'http://www.nhs.uk/',
    priority: 3
  },
  { 
    name: 'Play England',
    url: 'http://www.playengland.org.uk/',
    priority: 4
  },
  { 
    name: 'Britdoc',
    url: 'http://britdoc.org/',
    priority: 5
  },
  { 
    name: 'Al Kennedy',
    url: 'https://twitter.com/_alkennedy',
    priority: 6
  },
  { 
    name: 'Eden Project',
    url: 'http://www.edenproject.com/',
    priority: 7
  },
  { 
    name: 'TYF',
    url: 'http://www.tyf.com/',
    priority: 8
  },
  { 
    name: 'Do Lectures',
    url: 'http://www.dolectures.com/',
    priority: 9
  },
  { 
    name: 'Green Lions',
    url: 'http://www.greenlions.com/',
    priority: 10
  },
  { 
    name: 'Good for Nothing',
    url: 'http://www.goodfornothing.com',
    priority: 11
  }
])
