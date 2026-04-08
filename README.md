# SwiftShip - E-Commerce Logistics Tracker

A comprehensive SQL-based database solution for tracking packages, managing delivery partners, and monitoring logistics performance. Designed for third-party logistics providers handling thousands of packages daily.

---

## 🎯 Business Overview

**Company**: SwiftShip (Third-Party Logistics Provider)
**Challenge**: 
- Tracking "Lost in Transit" items
- Identifying underperforming delivery partners
- Reducing delayed shipments
- Optimizing warehouse routes

**Solution**: A robust tracking database that identifies delayed shipments and ranks delivery partners based on their success rate.

---

### Task 1: Schema Design ✅
- Created normalized 3-table schema
- Established proper relationships with foreign keys
- Designed for scalability and data integrity

### Task 2: Delayed Shipment Query ✅
- Identifies all delays using `WHERE actual_delivery_date > promised_date`
- Provides shipment and date details for analysis

### Task 3: Performance Ranking ✅
- Uses GROUP BY and COUNT with CASE statements
- Compares Successful vs Returned deliveries
- Ranks partners by success rate

### Task 4: Zone Filter (Last 30 Days) ✅
- Filters using `CURDATE() - INTERVAL 30 DAY`
- Groups by destination city
- Helps plan warehouse routes

### Deliverable: Partner Scorecard ✅
- Comprehensive ranking with multiple metrics
- Shows which company has fewest delays
- Complete business intelligence output

---
