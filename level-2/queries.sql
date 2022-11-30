-- FOR ALL

-- number of reviews
select count(review_id)
from review_data;
-- 4,375,229

-- number of five star
select count(review_id)
from review_data
where star_rating = 5;
-- 2,769,778

-- average rating
select avg(star_rating)
from review_data;
-- 4.214

-- number of helpful votes
select sum(helpful_votes)
from review_data;
-- 7,644,064

-- FOR VINE

-- number of reviews
select count(review_id)
from review_data
where vine = 'Y';
-- 18,540

-- number of five star reviews
select count(review_id)
from review_data
where star_rating = 5
and vine = 'Y';
-- 9,885

-- average rating
select avg(star_rating)
from review_data
where vine = 'Y';
-- 4.343

-- number of helpful votes
select sum(helpful_votes)
from review_data
where vine = 'Y';
-- 52,665

-- FOR NOT VINE

-- number of reviews
select count(review_id)
from review_data
where vine = 'N';
-- 4,356,689

-- number of five star reviews
select count(review_id)
from review_data
where star_rating = 5
and vine = 'N';
-- 2,759,893

-- average rating
select avg(star_rating)
from review_data
where vine = 'N';
-- 4.213

-- number of helpful votes
select sum(helpful_votes)
from review_data
where vine = 'N';
-- 7,591,399

-- what is the max vine review
select max(star_rating)
from review_data
where vine = 'Y';
-- 5

-- what is the min vine review
select min(star_rating)
from review_data
where vine = 'Y';
-- 1

-- get the distribution of ratings for vine
select count(review_id)
from review_data
where vine = 'Y'
and star_rating = 5;
-- 9,885
select count(review_id)
from review_data
where vine = 'Y'
and star_rating = 4;
-- 6,124
select count(review_id)
from review_data
where vine = 'Y'
and star_rating = 3;
-- 1,786
select count(review_id)
from review_data
where vine = 'Y'
and star_rating = 2;
-- 503
select count(review_id)
from review_data
where vine = 'Y'
and star_rating = 1;
-- 242