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

Try running some of the following tasks:

```shell
npx hardhat accounts
npx hardhat compile
npx hardhat clean
npx hardhat test
npx hardhat node
node scripts/sample-script.js
npx hardhat help
```