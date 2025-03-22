# HOW CAN A WELLNESS COMPANY PLAY IT SMART?

### **1. Introduction:-**

Bellabeat is a high-tech wellness technology company that specializes in health-focused smart products designed specifically for women. Founded in 2013 by Urška Sršen and Sando Mur, the company combines innovative technology with elegant design to empower women by providing insights into their health, fitness, and well-being.

With a diverse product line that includes wearable wellness trackers, smart water bottles, and a mobile app, Bellabeat collects and analyzes data on activity, sleep, stress, hydration, and reproductive health. By leveraging this data, the company aims to enhance user experiences and promote healthier lifestyles.

### **Characters:**

- **Urška Sršen** – Cofounder and Chief Creative Officer of Bellabeat, responsible for product design and innovation.
- **Sando Mur** – Cofounder and mathematician, a key member of the executive team.
- **Bellabeat Marketing Analytics Team** – A team of data analysts who collect, analyze, and report data to shape the company's marketing strategies.

### **Products:**

- **Bellabeat App** – A health tracking app that monitors activity, sleep, stress, menstrual cycles, and mindfulness habits.
- **Leaf** – A stylish wellness tracker wearable as a bracelet, necklace, or clip, tracking activity, sleep, and stress.
- **Time** – A smart wellness watch that blends classic design with technology to track daily wellness metrics.
- **Spring** – A smart water bottle that tracks hydration levels and syncs with the Bellabeat app.
- **Bellabeat Membership** – A subscription-based service offering personalized guidance on health, fitness, and mindfulness.

### **2. Scenario:-**

As a junior data analyst at Bellabeat, you are part of the marketing analytics team responsible for using data to guide business decisions. Bellabeat, a leading wellness technology company, wants to expand its presence in the global smart device market by leveraging data-driven insights.

Urška Sršen, Bellabeat’s cofounder and Chief Creative Officer, believes that analyzing smart device fitness data can help identify trends and new growth opportunities. You have been assigned to focus on one of Bellabeat’s products and analyze smart device usage data to gain insights into consumer behavior.

### **Your Tasks:**

- Analyze smart device usage data to identify trends in consumer habits.
- Compare Bellabeat’s products with market trends to discover potential opportunities.
- Provide insights into how consumers use non-Bellabeat smart devices.
- Select one Bellabeat product and apply insights to improve its market strategy.
- Develop high-level marketing recommendations based on your analysis.
- Present your findings to the Bellabeat executive team with supporting data visualizations.

Your report and recommendations will help Bellabeat refine its marketing approach and strengthen its position in the smart wellness market.

### 3. **Phase 1: Ask:-**

In this phase, the goal is to define the business problem and establish clear objectives for the data analysis.

### **Business Task:**

Bellabeat wants to leverage data-driven insights to refine its marketing strategy and expand its presence in the smart wellness market. By analyzing smart device usage data, the company aims to understand consumer habits and apply these insights to enhance its product positioning and marketing efforts.

### **Key Questions to Address:**

1. **What are the current trends in smart device usage?**
2. **How do these trends relate to Bellabeat’s target customers?**
3. **How can these insights be used to improve Bellabeat’s marketing strategy?**

### **Key Stakeholders:**

- **Urška Sršen** – Cofounder and Chief Creative Officer, leading the company's vision and product development.
- **Sando Mur** – Cofounder and key executive involved in strategic decision-making.
- **Bellabeat Marketing Analytics Team** – Responsible for data collection, analysis, and reporting to guide marketing strategies.

By defining the problem and identifying the right questions, this phase ensures that the analysis remains focused on providing actionable insights for Bellabeat's business growth.

### **4. Phase 2: Prepare:-**

In this phase, the focus is on gathering, assessing, and preparing the data for analysis while ensuring its credibility, security, and usability.

### **Data Sources:**

- **Fitbit Fitness Tracker Data (CC0: Public Domain, available on Kaggle)**
    - Collected from 30 Fitbit users who consented to share their fitness tracker data.
    - Includes minute-level data on physical activity, heart rate, and sleep monitoring.
    - Provides insights into daily activity levels, step counts, and other wellness habits.

### **Data Assessment:**

**Credibility of Data:**

- **Source Reliability:** The dataset is publicly available on Kaggle and falls under a CC0 (Public Domain) license, meaning it can be freely used and modified.
- **Data Integrity:** Since it comes from self-reported or automatically collected Fitbit device data, it is likely to be accurate, but there may be potential inconsistencies or missing values.
- **Potential Bias:**
    - The dataset includes only 30 users, which is a small sample size and may not be representative of Bellabeat’s target audience.
    - Users are limited to Fitbit device owners, excluding data from other smart wellness device users.
    - Demographic details such as age, gender, and location are not provided, limiting segmentation analysis.

### **Licensing, Privacy, Security, and Accessibility:**

- **Licensing:**
    - The dataset is under a CC0 license, meaning it is open-source and can be used without restrictions.
- **Privacy & Security:**
    - No personally identifiable information (PII) is included in the dataset, ensuring compliance with data privacy regulations.
    - Users consented to sharing their anonymized data, making it ethically sound for analysis.
- **Accessibility:**
    - The dataset is freely available on Kaggle, making it easily accessible for analysis.
    - Data is stored in CSV format, which is widely supported by various data analysis tools.

### **Challenges with the Data:**

1. **Small Sample Size:** The dataset includes only 30 users, which may not provide a comprehensive view of consumer behavior.
2. **Lack of Diversity:** Data is collected from Fitbit users, which may not fully represent Bellabeat’s customer base or the wider smart wellness market.
3. **Limited Data Scope:** The dataset focuses primarily on physical activity, sleep, and heart rate, but does not include other wellness metrics such as hydration or menstrual cycle tracking, which are key to Bellabeat’s offerings.
4. **Potential Data Gaps:** Some records may have missing values or inconsistencies that need to be addressed during data cleaning.
5. **No Direct Bellabeat Product Data:** Since the data comes from Fitbit users, it does not provide direct insights into how customers interact with Bellabeat’s products.

### **Data Preparation Steps:**

1. **Download and securely store the dataset.**
2. **Identify the data structure (columns, data types, missing values, and inconsistencies).**
3. **Assess and clean the data by handling missing values and filtering out irrelevant information.**
4. **Sort and filter the dataset to focus on relevant metrics (e.g., activity levels, sleep patterns, stress levels).**
5. **Document any assumptions or adjustments made during data preparation.**

By thoroughly assessing and preparing the dataset while considering its credibility, privacy, and accessibility, we ensure that the data is reliable and suitable for generating meaningful insights in the next phase.

### **5. Phase 3: Process:-**

In this phase, the dataset is cleaned, transformed, and prepared using **R** to ensure accuracy and usability for analysis.

[Data Prepare](https://www.notion.so/Data-Prepare-1bc8de861be880c1af28cc3b9e13a5d6?pvs=21)

### **Key Steps in Data Processing:**

1. **Load the Dataset:**
    - Import the Fitbit dataset into R for processing and analysis.
2. **Check for Missing or Incomplete Data:**
    - Identify any missing values in key metrics such as steps, calories, sleep duration, and heart rate.
    - Handle missing data by either removing incomplete records or filling gaps with appropriate statistical methods (e.g., median values).
3. **Remove Duplicates and Inconsistencies:**
    - Detect and eliminate duplicate entries to prevent skewed analysis.
    - Ensure data types are correctly formatted (e.g., converting date columns to the proper format).
4. **Standardize and Normalize Data:**
    - Convert time-related data into a consistent format.
    - Normalize key numerical variables (e.g., step counts, sleep duration) to allow for meaningful comparisons between users.
5. **Filter and Transform Data:**
    - Select relevant columns for analysis, focusing on key wellness metrics.
    - Aggregate data into daily summaries to identify trends over time.
6. **Verify Data Integrity:**
    - Conduct exploratory data analysis (EDA) to detect anomalies, such as extreme outliers.
    - Use summary statistics and visualizations to validate the accuracy of processed data.
7. **Document the Cleaning Process:**
    - Maintain records of all modifications to ensure transparency and reproducibility.

### **Outcome of the Process Phase:**

- A **cleaned and well-structured dataset** ready for analysis.
- **Elimination of missing values, duplicates, and inconsistencies** to improve data reliability.
- **Properly formatted and standardized data** for meaningful comparisons and insights.
- **Preliminary exploration of trends and patterns** to guide further analysis.

This phase ensures that the dataset is accurate and optimized for the next step: **Analysis**. 🚀

### 6.  Phase 4: Data Visualizations and Summary

### **📊 Purpose of Data Visualization**

Data visualization helps in identifying patterns, trends, and insights from our dataset in an intuitive and easy-to-understand manner. By visually analyzing the cleaned data, we can uncover key relationships between variables such as activity levels, calories burned, sleep patterns, and weight changes.

The goal of this phase is to:

1. **Summarize key metrics** to understand user behavior.
2. **Identify trends and correlations** across different days and activity types.
3. **Generate actionable insights** that can guide fitness and wellness recommendations.

[Visualization](https://www.notion.so/Bellabeat-Case-Study-1bb8de861be8800098ade486c1292ae1#1be8de861be880eda35ccef4d55d29ea)

### **7. Phase 5: Act**

### **Key Takeaways:**

- **Correlation Between Steps and Calories Burned**: The data indicates a **positive relationship** between the number of steps taken and calories burned. However, some individuals achieve high calorie burn despite lower step counts, suggesting the impact of **exercise intensity, duration, and metabolic differences**.
- **Impact of Activity Intensity**: The analysis highlights that individuals with more **Very Active Minutes** tend to burn more calories per minute. This suggests that **high-intensity activities (e.g., running, HIIT workouts) are more efficient at burning calories** than simply increasing step count.
- **Variability in Individual Performance**: Despite the trend, **some individuals deviate from the expected pattern**, possibly due to factors like body composition, fitness level, or external influences (e.g., diet, lifestyle, metabolism). Understanding these variances can help in **customizing fitness plans** for better results.

### **Recommendations:**

- **Encourage High-Intensity Activities**: Since Very Active Minutes show the strongest correlation with calorie burn, users should be encouraged to **incorporate more vigorous workouts** rather than just increasing their step count. Activities like **cycling, swimming, weight training, or sprint intervals** can be beneficial.
- **Personalized Goal-Setting**: Instead of setting a **universal step goal**, tailor goals based on **individual calorie burn efficiency** and preferred activity types. For example, someone who burns more calories through fewer steps might focus on **strength training and cardio bursts** rather than simply walking more.
- **Improve Data Tracking & Insights**: Enhance tracking mechanisms to **capture more variables**, such as **heart rate, metabolic rate, and active vs. passive calories burned**, to get a **more accurate picture** of individual fitness trends. Advanced fitness trackers and smart analytics tools can be leveraged to provide **personalized recommendations**.
- **Behavioral Motivation & Engagement**: Implement **gamification techniques**, such as challenges, leaderboards, and rewards, to keep users **engaged in their fitness journey**. Personalized reminders and feedback based on individual performance trends can help sustain motivation.

By acting on these insights, we can create **more effective, data-driven fitness strategies** that cater to individual needs and optimize overall health outcomes.

### **8. Phase 6: Conclusion**

The analysis of activity levels, steps, and calories burned has provided valuable insights into the relationship between **movement intensity and energy expenditure**. The data confirms that while step count is an important metric, **the intensity of activity plays a more significant role in calorie burn**. Individuals who engage in higher-intensity workouts, reflected in their **Very Active Minutes**, tend to achieve greater calorie expenditure compared to those with similar step counts but lower intensity levels.

Additionally, the variations in individual performance suggest that **a one-size-fits-all approach to fitness tracking may not be ideal**. Factors such as **metabolic rate, workout type, and lifestyle differences** impact the effectiveness of physical activity, highlighting the need for **personalized fitness recommendations**.

Moving forward, the key takeaway is that simply focusing on increasing daily steps may not be the most effective strategy for optimizing calorie burn. Instead, a **more holistic approach that includes high-intensity activities, personalized fitness goals, and improved data tracking** will yield better long-term health outcomes.

By leveraging these insights, we can refine fitness strategies to **maximize efficiency, improve user engagement, and enhance overall well-being**.

————————————————————–End of Case Study————————————————————–
