# Basic Sales Process Simulation in Business Central (AL)

This project simulates a **basic end-to-end sales process** within Microsoft Dynamics 365 Business Central using **AL language**. It is intended as a **learning exercise** to explore how the core elements of Business Central—such as customers, quotes, orders, invoices, payments, and ledger entries—can be implemented and automated entirely through AL code.

## 🎯 Objective

To build a simplified but functional sales workflow using custom AL objects, with a focus on understanding:

- How to define custom tables and pages
- How to automate sales document flows
- How to simulate payment and ledger activities
- How to generate basic sales reports
- How to apply company branding to sales documents

---


---

## 📅 Development Plan

The project is divided into five development days:

### Day 1: Setup
- Create a custom customer table and page
- Add logic to insert and manage customer contact details
- Define custom pricing and discount structures

### Day 2: Sales Documents
- Create custom sales quote and sales order tables/pages
- Automate the conversion of a quote into an order
- Generate and post sales invoices

### Day 3: Payments
- Create tables/pages to simulate customer payments
- Apply payments to invoices
- Simulate and manage customer ledger entries

### Day 4: Reports & Branding
- Generate customer sales history reports
- Customize invoice/quote layouts with your company branding

### Day 5: Review
- Run the full process via a single codeunit
- Document issues encountered and solutions implemented

---

## 🧱 Requirements

- Microsoft Dynamics 365 Business Central (On-Prem or Sandbox)
- Visual Studio Code with AL Language Extension
- Access to local development environment or container
- Basic understanding of AL object types (table, page, codeunit)

---

## 🚀 Getting Started

1. Clone or download this repository.
2. Open in Visual Studio Code.
3. Review and edit `app.json` and `.vscode/launch.json` for your environment.
4. Run `Ctrl+Shift+P > AL: Publish` to deploy the extension.
5. Use the pages and codeunits to simulate the sales process.

---

## 🧠 Learning Goals

By the end of the project, you should understand:

- The lifecycle of a sales transaction in Business Central
- How to simulate that lifecycle through AL code
- How to structure a Business Central extension for clarity and maintainability

---

## 📝 License

This project is for educational purposes and not intended for production use. No license applied.

---

## 🙋‍♂️ Author

**Antony**  
Learning AL Developer  

