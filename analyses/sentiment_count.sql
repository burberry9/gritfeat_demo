
with fct_reviews
as
(
    select * 
    from {{ref('fct_reviews')}}
)
select review_sentiment, 
    count(*) as Count_review_sentiment
from fct_reviews r
group by review_sentiment