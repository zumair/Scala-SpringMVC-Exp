USE zResearch;
#---------------
#Reference Items
#---------------

INSERT INTO RefList ( description, name)
VALUES ('User Roles', 'UserRoleNames')
ON DUPLICATE KEY UPDATE name = name;

set @refListId = (select id from RefList where RefList.name = 'UserRoleNames');

INSERT INTO RefItem (name,code,label,refListId,description,archiveDate)
VALUES ('USER_ROLE', 'USER_ROLE', 'User Role', @refListId, 'A normal user role',null)
ON DUPLICATE KEY UPDATE name = name;

INSERT INTO RefItem (name,code,label,refListId,description,archiveDate)
VALUES ('ADMIN_ROLE', 'ADMIN_ROLE', 'Admin Role', @refListId, 'Admin role',null)
ON DUPLICATE KEY UPDATE name = name;

INSERT INTO RefItem (name,code,label,refListId,description,archiveDate)
VALUES ('API_ROLE', 'API_ROLE', 'API Role', @refListId, 'A role by which any system can access via expose API',null)
ON DUPLICATE KEY UPDATE name = name;

#------------------
#Product Categories
#------------------
INSERT INTO ProductCategory VALUES (null,	'Antiques, Art and Collectables'	,null,	'Antiques, Art and Collectables'	);
INSERT INTO ProductCategory VALUES (null,	'Automotive'	,null,	'Automotive'	);
INSERT INTO ProductCategory VALUES (null,	'Baby and Children'	,null,	'Baby and Children'	);
INSERT INTO ProductCategory VALUES (null,	'Boats and Jet Skis'	,null,	'Boats and Jet Skis'	);
INSERT INTO ProductCategory VALUES (null,	'Books, Music and Games'	,null,	'Books, Music and Games'	);
INSERT INTO ProductCategory VALUES (null,	'Business Services'	,null,	'Business Services'	);
INSERT INTO ProductCategory VALUES (null,	'Fashion'	,null,	'Fashion'	);
INSERT INTO ProductCategory VALUES (null,	'Tickets'	,null,	'Tickets'	);
INSERT INTO ProductCategory VALUES (null,	'Electronics and Computers'	,null,	'Electronics and Computer'	);
INSERT INTO ProductCategory VALUES (null,	'Home and Garden'	,null,	'Home and Garden'	);
INSERT INTO ProductCategory VALUES (null,	'Jobs'	,null,	'Jobs'	);
INSERT INTO ProductCategory VALUES (null,	'Pets'	,null,	'Pets'	);
INSERT INTO ProductCategory VALUES (null,	'Real Estate'	,null,	'Real Estate'	);
INSERT INTO ProductCategory VALUES (null,	'Sport and Fitness'	,null,	'Sport and Fitness'	);

set @productCategoryId = (select id from ProductCategory where name='Antiques, Art and Collectables');
INSERT INTO ProductCategory VALUES (null,	'Antiques'	    , @productCategoryId,	'Antiques'	);
INSERT INTO ProductCategory VALUES (null,	'Art'	        , @productCategoryId,	'Art'	);
INSERT INTO ProductCategory VALUES (null,	'Collectables'	, @productCategoryId,	'Collectables'	);

set @productCategoryId = (select id from ProductCategory where name='Automotive');
INSERT INTO ProductCategory VALUES (null,	'Caravan and Campervan'	    , @productCategoryId,	'Caravan and Campervan'	);
INSERT INTO ProductCategory VALUES (null,	'Cars, Vans and Utes'	    , @productCategoryId,	'Cars, Vans and Utes'	);
INSERT INTO ProductCategory VALUES (null,	'Heavy, Farming and Agriculture Equipment'	    , @productCategoryId,	'Heavy, Farming and Agriculture Equipment'	);
INSERT INTO ProductCategory VALUES (null,	'Motorcycles and Scooters'	    , @productCategoryId,	'Motorcycles and Scooters'	);
INSERT INTO ProductCategory VALUES (null,	'Parts and Accessories'	    , @productCategoryId,	'Parts and Accessories'	);
INSERT INTO ProductCategory VALUES (null,	'Trailers'	    , @productCategoryId,	'Trailers'	);

set @productCategoryId = (select id from ProductCategory where name='Baby and Children');
INSERT INTO ProductCategory VALUES (null,	'Baby Carriers'	    , @productCategoryId,	'Baby Carriers'	);
INSERT INTO ProductCategory VALUES (null,	'Clothing'	    , @productCategoryId,	'Clothing'	);
INSERT INTO ProductCategory VALUES (null,	'Baths'	    		, @productCategoryId,	'Baths'	);
INSERT INTO ProductCategory VALUES (null,	'Cots and Bedding'	    , @productCategoryId,	'Cots and Bedding'	);
INSERT INTO ProductCategory VALUES (null,	'Toys'	    , @productCategoryId,	'Toys'	);
INSERT INTO ProductCategory VALUES (null,	'Prams and Strollers'	    , @productCategoryId,	'Prams and Strollers'	);

set @productCategoryId = (select id from ProductCategory where name='Boats and Jet Skis');
INSERT INTO ProductCategory VALUES (null,	'Boat Accessories and Parts'	    , @productCategoryId,	'Boat Accessories and Parts');
INSERT INTO ProductCategory VALUES (null,	'Jet Skis'	    , @productCategoryId,	'Jet Skis'	);
INSERT INTO ProductCategory VALUES (null,	'Kayaks'	    , @productCategoryId,	'Kayaks'	);
INSERT INTO ProductCategory VALUES (null,	'Paddle'	    , @productCategoryId,	'Paddle'	);
INSERT INTO ProductCategory VALUES (null,	'Motorboats and Powerboats'	    , @productCategoryId,	'Motorboats and Powerboats'	);
INSERT INTO ProductCategory VALUES (null,	'Sail Boats'	, @productCategoryId,	'Sail Boats'	);
INSERT INTO ProductCategory VALUES (null,	'Tinnies'	    , @productCategoryId,	'Tinnies'	);
INSERT INTO ProductCategory VALUES (null,	'Dinghies'	    , @productCategoryId,	'Dinghies'	);

set @productCategoryId = (select id from ProductCategory where name='Books, Music and Games');
INSERT INTO ProductCategory VALUES (null,	'Books'	    , @productCategoryId,	'Books'	);
INSERT INTO ProductCategory VALUES (null,	'CDs and DVDs'	    , @productCategoryId,	'CDs and DVDs'	);
INSERT INTO ProductCategory VALUES (null,	'Consoles'	    , @productCategoryId,	'Consoles'	);
INSERT INTO ProductCategory VALUES (null,	'Musical Instruments'	    , @productCategoryId,	'Musical Instruments'	);

set @productCategoryId = (select id from ProductCategory where name='Business Services');
INSERT INTO ProductCategory VALUES (null,	'Childcare Services'	    , @productCategoryId,	'Childcare Services'	);
INSERT INTO ProductCategory VALUES (null,	'Automotive / Mechanincs'	    , @productCategoryId,	'Automotive / Mechanincs'	);
INSERT INTO ProductCategory VALUES (null,	'Appliance Repair'	    , @productCategoryId,	'Appliance Repair'	);
INSERT INTO ProductCategory VALUES (null,	'Building and Trades'	    , @productCategoryId,	'Building and Trades'	);
INSERT INTO ProductCategory VALUES (null,	'Cleaning'	, @productCategoryId,	'Cleaning'	);
INSERT INTO ProductCategory VALUES (null,	'Computer Repairs'	, @productCategoryId,	'Computer Repairs'	);
INSERT INTO ProductCategory VALUES (null,	'Courses and Training'	, @productCategoryId,	'Courses and Training'	);
INSERT INTO ProductCategory VALUES (null,	'Dress Making and Alterations'	, @productCategoryId,	'Dress Making and Alterations'	);
INSERT INTO ProductCategory VALUES (null,	'Entertainment'	, @productCategoryId,	'Entertainment'	);
INSERT INTO ProductCategory VALUES (null,	'Graphic and Web Design'	, @productCategoryId,	'Graphic and Web Design'	);
INSERT INTO ProductCategory VALUES (null,	'Health and Beauty'	, @productCategoryId,	'Health and Beauty'	);
INSERT INTO ProductCategory VALUES (null,	'Landscaping and Gardening'	, @productCategoryId,	'Landscaping and Gardening'	);
INSERT INTO ProductCategory VALUES (null,	'Language and Tutoring'	, @productCategoryId,	'Language and Tutoring'	);
INSERT INTO ProductCategory VALUES (null,	'Musicians and Artists'	, @productCategoryId,	'Musicians and Artists'	);
INSERT INTO ProductCategory VALUES (null,	'Party and Catering'	, @productCategoryId,	'Party and Catering'	);
INSERT INTO ProductCategory VALUES (null,	'Personal Training'	, @productCategoryId,	'Personal Training'	);
INSERT INTO ProductCategory VALUES (null,	'Pet Services'	, @productCategoryId,	'Pet Services'	);
INSERT INTO ProductCategory VALUES (null,	'Photography and Video'	, @productCategoryId,	'Photography and Video'	);
INSERT INTO ProductCategory VALUES (null,	'Removals and Storage'	, @productCategoryId,	'Removals and Storage'	);
INSERT INTO ProductCategory VALUES (null,	'Tax, Insurance and Financial'	, @productCategoryId,	'Tax, Insurance and Financial'	);
INSERT INTO ProductCategory VALUES (null,	'Travel Agent'	, @productCategoryId,	'Travel Agent'	);
INSERT INTO ProductCategory VALUES (null,	'Wedding and Venues'	, @productCategoryId,	'Wedding and Venues'	);

set @productCategoryId = (select id from ProductCategory where name='Fashion');
INSERT INTO ProductCategory VALUES (null,	'Accessories'	, @productCategoryId,	'Accessories'	);
INSERT INTO ProductCategory VALUES (null,	'Bags'	, @productCategoryId,	'Bags'	);
INSERT INTO ProductCategory VALUES (null,	'Jewellery'	, @productCategoryId,	'Jewellery'	);
INSERT INTO ProductCategory VALUES (null,	'Men''s Clothing'	, @productCategoryId,	'Men''s Clothing'	);
INSERT INTO ProductCategory VALUES (null,	'Men''s Shoes'	, @productCategoryId,	'Men''s Shoes'	);
INSERT INTO ProductCategory VALUES (null,	'Women''s Clothing'	, @productCategoryId,	'Women''s Clothing'	);
INSERT INTO ProductCategory VALUES (null,	'Women''s Shoes'	, @productCategoryId,	'Women''s Shoes'	);

set @productCategoryId = (select id from ProductCategory where name='Tickets');
INSERT INTO ProductCategory VALUES (null,	'Bus, Train or Plane'	, @productCategoryId,	'Bus, Train or Plane'	);
INSERT INTO ProductCategory VALUES (null,	'Concerts'	, @productCategoryId,	'Concerts'	);
INSERT INTO ProductCategory VALUES (null,	'Sport'	, @productCategoryId,	'Sport'	);
INSERT INTO ProductCategory VALUES (null,	'Theatre/Film'	, @productCategoryId,	'Theatre/Film'	);

set @productCategoryId = (select id from ProductCategory where name='Electronics and Computers');
INSERT INTO ProductCategory VALUES (null,	'Computers and Tablets'	, @productCategoryId,	'Computers and Tablets'	);
INSERT INTO ProductCategory VALUES (null,	'Cameras, Phones and GPS'	, @productCategoryId,	'Cameras, Phones and GPS'	);
INSERT INTO ProductCategory VALUES (null,	'Games and Gaming Consoles'	, @productCategoryId,	'Games and Gaming Consoles'	);
INSERT INTO ProductCategory VALUES (null,	'TV, Blu-ray and Home Theatre'	, @productCategoryId,	'TV, Blu-ray and Home Theatre'	);
INSERT INTO ProductCategory VALUES (null,	'Headphones, Audio and Music'	, @productCategoryId,	'Headphones, Audio and Music'	);
INSERT INTO ProductCategory VALUES (null,	'Kitchen Appliances'	, @productCategoryId,	'Kitchen Appliances'	);
INSERT INTO ProductCategory VALUES (null,	'Vacuum and Laundry Appliances'	, @productCategoryId,	'Vacuum and Laundry Appliances'	);
INSERT INTO ProductCategory VALUES (null,	'Heating and Cooling'	, @productCategoryId,	'Heating and Cooling'	);
INSERT INTO ProductCategory VALUES (null,	'Hair and Body Care'	, @productCategoryId,	'Hair and Body Care'	);

set @productCategoryId = (select id from ProductCategory where name='Home and Garden');
INSERT INTO ProductCategory VALUES (null,	'Tools'	, @productCategoryId,	'Tools'	);
INSERT INTO ProductCategory VALUES (null,	'Electrical and Hardware'	, @productCategoryId,	'Electrical and Hardware'	);
INSERT INTO ProductCategory VALUES (null,	'Building and Timber'	, @productCategoryId,	'Building and Timber'	);
INSERT INTO ProductCategory VALUES (null,	'Furniture, Outdoor and BBQs'	, @productCategoryId,	'Furniture, Outdoor and BBQs'	);
INSERT INTO ProductCategory VALUES (null,	'Kitchen and Appliances'	, @productCategoryId,	'Kitchen and Appliances'	);
INSERT INTO ProductCategory VALUES (null,	'Bathroom and Plumbing'	, @productCategoryId,	'Bathroom and Plumbing'	);
INSERT INTO ProductCategory VALUES (null,	'Flooring and Tiles'	, @productCategoryId,	'Flooring and Tiles'	);
INSERT INTO ProductCategory VALUES (null,	'Painting'	, @productCategoryId,	'Painting'	);
INSERT INTO ProductCategory VALUES (null,	'Decorating'	, @productCategoryId,	'Decorating'	);
INSERT INTO ProductCategory VALUES (null,	'Cleaning and Storage'	, @productCategoryId,	'Cleaning and Storage'	);
INSERT INTO ProductCategory VALUES (null,	'Lighting and Fans'	, @productCategoryId,	'Lighting and Fans'	);
INSERT INTO ProductCategory VALUES (null,	'Beds and Manchester'	, @productCategoryId,	'Beds and Manchester'	);

set @productCategoryId = (select id from ProductCategory where name='Jobs');
INSERT INTO ProductCategory VALUES (null,	'Construction and Trades'	, @productCategoryId,	'Construction and Trades'	);
INSERT INTO ProductCategory VALUES (null,	'Sales and Call Centres'	, @productCategoryId,	'Sales and Call Centres'	);
INSERT INTO ProductCategory VALUES (null,	'Farming and Veterinary'	, @productCategoryId,	'Farming and Veterinary'	);
INSERT INTO ProductCategory VALUES (null,	'Finance'	, @productCategoryId,	'Finance'	);
INSERT INTO ProductCategory VALUES (null,	'Gardening and Landscaping'	, @productCategoryId,	'Gardening and Landscaping'	);
INSERT INTO ProductCategory VALUES (null,	'Graphic and Web Designing'	, @productCategoryId,	'Graphic and Web Designing'	);
INSERT INTO ProductCategory VALUES (null,	'Health,Sports and Beauty'	, @productCategoryId,	'Health,Sports and Beauty'	);
INSERT INTO ProductCategory VALUES (null,	'Healthcare and Nursing'	, @productCategoryId,	'Healthcare and Nursing'	);
INSERT INTO ProductCategory VALUES (null,	'Hospitality'	, @productCategoryId,	'Hospitality'	);
INSERT INTO ProductCategory VALUES (null,	'Housekeeping'	, @productCategoryId,	'Housekeeping'	);
INSERT INTO ProductCategory VALUES (null,	'Information Technology'	, @productCategoryId,	'Information Technology'	);
INSERT INTO ProductCategory VALUES (null,	'Real Estate and Housing'	, @productCategoryId,	'Real Estate and Housing'	);
INSERT INTO ProductCategory VALUES (null,	'Legal'	, @productCategoryId,	'Legal'	);
INSERT INTO ProductCategory VALUES (null,	'Moving and Removals'	, @productCategoryId,	'Moving and Removals'	);
INSERT INTO ProductCategory VALUES (null,	'Nanny and Babysitting'	, @productCategoryId,	'Nanny and Babysitting'	);
INSERT INTO ProductCategory VALUES (null,	'Office'	, @productCategoryId,	'Office'	);
INSERT INTO ProductCategory VALUES (null,	'Recruitment and HR'	, @productCategoryId,	'Recruitment and HR'	);
INSERT INTO ProductCategory VALUES (null,	'Resume Writing Services'	, @productCategoryId,	'Resume Writing Services'	);
INSERT INTO ProductCategory VALUES (null,	'Retail'	, @productCategoryId,	'Retail'	);
INSERT INTO ProductCategory VALUES (null,	'Sales and Marketing'	, @productCategoryId,	'Sales and Marketing'	);
INSERT INTO ProductCategory VALUES (null,	'Sports and Healthclub'	, @productCategoryId,	'Sports and Healthclub'	);
INSERT INTO ProductCategory VALUES (null,	'Teaching and Childcare'	, @productCategoryId,	'Teaching and Childcare'	);
INSERT INTO ProductCategory VALUES (null,	'Training and Development'	, @productCategoryId,	'Training and Development'	);
INSERT INTO ProductCategory VALUES (null,	'Transport and Logistics'	, @productCategoryId,	'Transport and Logistics'	);
INSERT INTO ProductCategory VALUES (null,	'Volunteer'	, @productCategoryId,	'Volunteer'	);

set @productCategoryId = (select id from ProductCategory where name='Pets');
INSERT INTO ProductCategory VALUES (null,	'Birds'	, @productCategoryId,	'Birds'	);
INSERT INTO ProductCategory VALUES (null,	'Cats and Kittens'	, @productCategoryId,	'Cats and Kittens'	);
INSERT INTO ProductCategory VALUES (null,	'Dogs and Puppies'	, @productCategoryId,	'Dogs and Puppies'	);
INSERT INTO ProductCategory VALUES (null,	'Fish'	, @productCategoryId,	'Fish'	);
INSERT INTO ProductCategory VALUES (null,	'Horses and Ponies'	, @productCategoryId,	'Horses and Ponies'	);
INSERT INTO ProductCategory VALUES (null,	'Livestock'	, @productCategoryId,	'Livestock'	);
INSERT INTO ProductCategory VALUES (null,	'Lost and Found'	, @productCategoryId,	'Lost and Found'	);
INSERT INTO ProductCategory VALUES (null,	'Pet Products'	, @productCategoryId,	'Pet Products'	);
INSERT INTO ProductCategory VALUES (null,	'Rabbits'	, @productCategoryId,	'Rabbits'	);
INSERT INTO ProductCategory VALUES (null,	'Reptiles and Amphibians'	, @productCategoryId,	'Reptiles and Amphibians'	);

set @productCategoryId = (select id from ProductCategory where name='Real Estate');
INSERT INTO ProductCategory VALUES (null,	'Business For Sale'	, @productCategoryId,	'Business For Sale'	);
INSERT INTO ProductCategory VALUES (null,	'Land For Sale'	, @productCategoryId,	'Land For Sale'	);
INSERT INTO ProductCategory VALUES (null,	'Office Space and Commercial'	, @productCategoryId,	'Office Space and Commercial'	);
INSERT INTO ProductCategory VALUES (null,	'Parking and Storage'	, @productCategoryId,	'Parking and Storage'	);
INSERT INTO ProductCategory VALUES (null,	'Property For Sale'	, @productCategoryId,	'Property For Sale'	);
INSERT INTO ProductCategory VALUES (null,	'Property for Rent'	, @productCategoryId,	'Property for Rent'	);
INSERT INTO ProductCategory VALUES (null,	'Roomshare'	, @productCategoryId,	'Roomshare'	);
INSERT INTO ProductCategory VALUES (null,	'Flatshare and Houseshare'	, @productCategoryId,	'Flatshare and Houseshare'	);
INSERT INTO ProductCategory VALUES (null,	'Short Term'	, @productCategoryId,	'Short Term'	);

set @productCategoryId = (select id from ProductCategory where name='Sport and Fitness');
INSERT INTO ProductCategory VALUES (null,	'Bicycles'	, @productCategoryId,	'Bicycles'	);
INSERT INTO ProductCategory VALUES (null,	'Boxing and Martial Arts'	, @productCategoryId,	'Boxing and Martial Arts'	);
INSERT INTO ProductCategory VALUES (null,	'Camping and Hiking'	, @productCategoryId,	'Camping and Hiking'	);
INSERT INTO ProductCategory VALUES (null,	'Fishing'	, @productCategoryId,	'Fishing'	);
INSERT INTO ProductCategory VALUES (null,	'Golf'	, @productCategoryId,	'Golf'	);
INSERT INTO ProductCategory VALUES (null,	'Gym and Fitness'	, @productCategoryId,	'Gym and Fitness'	);
INSERT INTO ProductCategory VALUES (null,	'Sports Bags'	, @productCategoryId,	'Sports Bags'	);
INSERT INTO ProductCategory VALUES (null,	'Personal Training Services'	, @productCategoryId,	'Personal Training Services'	);
INSERT INTO ProductCategory VALUES (null,	'Racquet Sports'	, @productCategoryId,	'Racquet Sports'	);
INSERT INTO ProductCategory VALUES (null,	'Skateboards and Rollerblades'	, @productCategoryId,	'Skateboards and Rollerblades'	);
INSERT INTO ProductCategory VALUES (null,	'Snow Sports'	, @productCategoryId,	'Snow Sports'	);
INSERT INTO ProductCategory VALUES (null,	'Surfing'	, @productCategoryId,	'Surfing'	);

commit;
