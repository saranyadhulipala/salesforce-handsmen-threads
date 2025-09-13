# Setup – Record Triggered Flows

### Flow 1: Order Confirmation
- Trigger: **After Insert** on Order
- Action: Send Email to Customer

### Flow 2: Loyalty Program
- Trigger: **After Update** on Customer
- Logic: If Total Purchase > Threshold → Update Loyalty Status

### Flow 3: Stock Alerts
- Trigger: **After Update** on Inventory
- Condition: Stock Quantity < 5
- Action: Email Warehouse Team

### Flow 4: Bulk Orders (Scheduled)
- Scheduled at Midnight (Daily)
- Batch process updates orders & inventory
