# Supply Chain traceability with blockchain

Problem to be solved:

- How to trace the origin of a product?
- Expiration date of a product?
- Error in the supply chain?
- Invalid Source?
- Lack of transparency?
- Seamless communication between the supply chain partners?
- Authentication of the product?
- Accurate information about the product?

App description:

- App Layer:
  - Producer
  - Distributor
  - Retailer
  - Consumer
- Blockchain Layer:
  - Trading System
  - Review System
  - Smart Contracts
- Infrastructure Layer:
  - GCP
  - IBM Managed blockchain
  - Moralis
  - AWS Ledger

System Architecture:
[![System Architecture]('img/supply chain(1).png')]

App Roles:

- Admin
  - Create new user and assign roles
  - Edit user details
  - Delete user
  - View user details
  - Audit user activities

- Producer
  - Register Product
  - Update Product
  - Delete Product
  - View Product
  - View All Products
  - Sell Product
- Processor
  - View Product
  - View All Products
  - Buy Product
  - Sell Product
  - Review Product
- Distributor
  - View Product
  - View All Products
  - Buy Product
  - Sell Product
- Retailer
  - View Product
  - View All Products
  - Buy Product
  - Sell Product
  - Return Product
- Customer
  - View Product
  - View All Products
  - Buy Product
  - Return Product
  - Review Product
- Certifier
  - View Product
  - View All Products
  - Review Product
  - Certify Product
  - De-certify Product
  - issue certificate to producer
  - issue certificate to distributor

<i> Example supply chain implementation with blockchain traceability:

1. Food industry of Bangladesh
2. Footwear industry of Bangladesh

<b> Basic breakdown of the Food industry supply chain project:

- Producer & Farmer
  - is the person who produces the raw product
  - is verified by the certifier
  - is supplying the raw product to the processor
  - is stakeholder of the supply chain
- Investigator & Certifier
  - is the person who investigates the product
  - is verifying the product
  - is issuing the certificate to the producer
  - is govt authority, private authority or a third party
- Stakeholder
  - is the person who is involved in the supply chain
  - is the person who is interested in the supply chain
  - is the person who is affected by the supply chain
- Products
  - is the raw product
  - is the processed product
  - is the final product
  - has a unique id
  - has a name
  - has a description
  - has a price
  - has a quantity
  - has a date of production
  - has from whom it is produced, shipped, sold
- Processor
  - is the person who processes the raw product
  - is verified by the certifier
  - is supplying the processed product to the distributor
  - is stakeholder of the supply chain
- Distributor
  - is the person who distributes the processed product
  - is verified by the certifier
  - is supplying the final product to the retailer
  - is stakeholder of the supply chain
- Retailer
  - is the person who sells the final product
  - is verified by the certifier
  - is selling the final product to the customer
  - is stakeholder of the supply chain
<br>Try running some of the following tasks:

```shell
npx hardhat accounts
npx hardhat compile
npx hardhat clean
npx hardhat test
npx hardhat node
node scripts/sample-script.js
npx hardhat help
```
