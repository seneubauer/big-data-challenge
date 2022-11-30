# big-data-challenge

## Challenge
The purpose of this challenge was to show competence at pulling data from an AWS S3 bucket, transforming it, and loading it into an AWS RDS database. The second portion was to perform the same steps but tack on some SQL queries for verifying a claim about the data. The data itself is review information on Amazon products so the claim was if the Vine reviews are biased or not.

## Discoveries
When writing these scripts, I encountered multiple stages where a small error required rerunning blocks of code. Each block takes a long time to run (relatively speaking), so being thorough was extra important. The instructions for this assignment were slightly confusing as it seemed we were asked to perform the ETL process twice: once for the sake of showing we can perform an ETL with PySpark, and another for the Vine review analysis. Because of this, I chose to go with the `more rather than less` approach and performed the ETL twice with different schemas.

## Analysis Conclusion
The second portion of this challenge asks us if the Vine reviews are biased. Given a quick analysis through SQL queries, I would assert the Vine reviews are biased towards giving good reviews but they are considerably more well received. On one hand, they give a slighly higher average rating than non-Vine reviews. On the other hand over half of the Vine reviews are 5-star reviews. The 'helpful votes per review' value for Vine reviews is `2.840` while for non-Vine is `1.742`. If more time was available, I would have run this data through a NLP to measure mood of review bodies and correlate that to the star rating and vine status.
