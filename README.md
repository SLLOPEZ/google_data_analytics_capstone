# google_data_analytics_capstone

#### Background
This Cyclistic Bike-Share case study is part of the Google Data Analytics Professional course. In this case study Cyclistic Bike-Share is a fictional bike-sharing company and I am a junior analyst in the marketing analyst team. The marketing director wants to maximize the number of annual memberships and thus wants to better understand how casual riders differ from riders with a membership. Using the new insights will help create new marketing strategies to convert casual riders to membership riders. 

#### Ask
The business task: Design marketing strategies to convert casual riders to membership riders. 

To do this, the director of Marketing asked me to answer: “How do annual members and casual riders use Cyclistic bikes differently?”

#### Prepare
The data used for this project was obtained from [divvy_tripdata](https://divvy-tripdata.s3.amazonaws.com/index.html).

#### Process
The tools used for this project are SQL on Google Big Query and Tableau.

The first step that was taken was to combine the 12 tables from January to December into one. 

The second step was to explore the new table. 
  - Checked for the number of rows 5734381
  - Checked the number columns 13
  - Checked for null values and duplicates.

The third step was to clean the data
  - Duplicate entries were removed
  - Added 3 columns: day_of_the_week, month, and ride_length_in_min
  - Removed rows with null values
  - Excluded rides with a duration of less than a minute and longer than a day

#### Analyze
Data analysis was done to answer the question: How do annual members and casual riders use Cyclistic bikes differently?

  - Queried the average ride length and the average ride length by type of rider
  - Queried the number of rides taken per month, week, and hour by rider type
  - Queried the count of the type of bicycle used by rider type

#### Share
I used Tableau to visualize insights. The dashboard can be found [here](https://public.tableau.com/views/google_analytics_captstone_viz/Cyclistic_Viz?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link).

Ride composition
Bike preference
Average ride length
Number of rides per month
Number of riders per day of the week

#### Act
Key takeaways
  - Both casual riders and Cyclistic members prefer the classic bike over the electric bike. Docked bikes are only used by casual riders. 
  - Cyclistic members take more rides during the week Tues - Thurs while casual riders take more rides during the weekend. 
  - The average ride length is longer for casual riders at 23.90 minutes than for Cyclistic members at 12.42 minutes.

Recommendations
  - Launch a summer seasonal campaign, the busiest time of the year, offering discounted memberships and exclusive perks for current Cyclistic members.
  - Introduce a new weekend-only membership to target casual weekend riders. 
  - Include incentives and perks for longer rides in the memberships that way casual riders who have a higher average ride length are more inclined to obtain a membership. 


