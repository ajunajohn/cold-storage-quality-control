# Cold Storage Temperature Monitoring and Analysis

This repository contains a statistical case study and analytical models developed to monitor and assess temperature control in a cold storage facility dealing with dairy products like milk and cream. The project evaluates temperature data for compliance, analyzes seasonal trends, and applies statistical tests to guide operational decisions.

## 📂 Project Overview

Cold Storage Pvt. Ltd. operates a facility where dairy products are stored at an optimal temperature range of **2ºC to 4ºC**. The analysis covers:

- **Annual temperature compliance** to identify maintenance contract penalties.
- **Statistical evaluation of temperature control** in response to customer complaints in March 2018.

---

## 📊 Problem Statements

### ✅ Problem 1: Annual Compliance Evaluation

- **Objective**: Determine if the cold storage facility maintained temperature within the optimal range throughout the year.
- **Dataset**: `Cold_Storage_Temp_Data.csv`
- **Analysis Includes**:
  - Mean temperature by season (Summer, Winter, Rainy)
  - Overall mean and standard deviation
  - Probability of temperature falling below 2ºC or exceeding 4ºC (assuming normal distribution)
  - AMC penalty decision based on probability thresholds

### ✅ Problem 2: Hypothesis Testing for March 2018

- **Objective**: Investigate complaints of spoilage and assess if internal temperature mismanagement is the cause.
- **Dataset**: `Cold_Storage_Mar2018.csv`
- **Analysis Includes**:
  - One-sample t-test against the benchmark temperature of **3.9ºC**
  - Right-tailed hypothesis test to evaluate need for corrective action
  - Statistical inference for operational decisions

---

## 📈 Key Results

- **Annual Temperature Mean**: ~3.00ºC
- **Probability of violation (<2ºC or >4ºC)**: ~3.18%
- **Penalty Assessed**: ✅ 10% of AMC based on contractual clauses
- **March Hypothesis Test**:
  - Mean: 3.974ºC
  - p-value: 0.0047 < α = 0.1 ⇒ **Corrective action required**

---

## 🧰 Tools and Technologies

- **Language**: R
- **Statistical Methods**:
  - Descriptive statistics
  - Normal distribution modeling
  - One-sample t-test
- **Visualization**: Boxplots, Histograms

---




