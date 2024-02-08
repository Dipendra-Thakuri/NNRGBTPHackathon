# Problem Statement
SELECT Electronics is a chain of Electronics Stores that specialize in selling Electronic Goods
(TVs, Washing Machines etc.) to consumers.
They have approached SAT Infotech to create an application which can help them manage the
purchase of goods, manage the stock in their stores and sales of the goods.
Please create an Application to handle the operations. The Entities will be Divided into Master
Data and Transactional Data
All Data Entities have to be managed and should be having UUID’s.
Master Data
1. Business Partner
• Business Partner Number
• Name
• Address 1
• Address 2
• City
• State (States can be fixed using @cds.persistence.skip and should be available in
DropDown)
• PINCode(Validation for PINCode)
• Is_gstn_registered – Boolean
• GSTIN Number (Please check to understand https://groww.in/p/tax/gstin)
• Is_vendor
• Is_customer
Validations Required: If is_gstn_registered in Enabled, GSTIN Number is mandatory. GSTIN
has a specific format listed above. Please set action buttons for Set Vendor, Set Customer
**** Extra Points will be awarded if you can generate autoincrement of business partner
number when you are saving i.e. take the last Business Partner Number and increment by 1.
2. Store
• Store ID
• Name
• Address 1
• Address 2
• City
• State (States can be fixed using @cds.persistence.skip and should be available in
DropDown)
• PINCode(Validation for PINCode)
3. Product
• Product ID
• Product Name
• Product Image URL
• Product Cost Price
• Product Sell Price
Mandatory Validations: The Product Image URL should be a valid URL. Product Sell Price
cannot be less than the cost price.
** Extra Points will be awarded, if you can display the image in the display instead of the
full URL.
Transactional Data.
1. Stock Data
• store_id
• product_id
• stock_qty
Please create a stock data information app, were you manage the stock information.
2. Purchase App
• PurchaseOrderNumer
• BusinessPartner
• PurchaseOrderDate
• Items (Composition)
• product_id
• qty
• price
• store_id
Validations: The price should not be more than the cost price mentioned in the Product
Table. The Business Partner should have the flag of is_vendor.
The stock should increase for the items by the qty for the store when the document is
saved
3. Sales App
• Sales Order Number
• BusinessPartner
• SalesDate
• Items (Composition)
• Product_id
• Qty
• price
• Store_id
Validations: The sell price should not be less than the sell price mentioned in the
Product Entity. The Business Partner should have the flag of is_customer.
The stock should decrease for the items by the qty for the store when the document is
saved.


# Getting Started

Welcome to your new project.

It contains these folders and files, following our recommended project layout:

File or Folder | Purpose
---------|----------
`app/` | content for UI frontends goes here
`db/` | your domain models and data go here
`srv/` | your service models and code go here
`package.json` | project metadata and configuration
`readme.md` | this getting started guide


## Next Steps

- Open a new terminal and run `cds watch` 
- (in VS Code simply choose _**Terminal** > Run Task > cds watch_)
- Start adding content, for example, a [db/schema.cds](db/schema.cds).


## Learn More

Learn more at https://cap.cloud.sap/docs/get-started/.
