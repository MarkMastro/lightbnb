select properties.*,avg(property_reviews.rating) as average_rating
from properties
join property_reviews on properties.id=property_reviews.property_id
where properties.city like '%couv%'
group by properties.id
having avg(property_reviews.rating) >=4
order by properties.cost_per_night asc
limit 10