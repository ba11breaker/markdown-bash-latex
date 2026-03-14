# Exercise: Mermaid Diagrams

Practice creating different types of Mermaid diagrams. Edit this file and
preview it in VS Code (with the Mermaid extension) or push to GitHub.

---

## Exercise 1: Flowchart

Create a flowchart that models a login process:
1. User enters credentials
2. System checks if credentials are valid
3. If valid → show dashboard
4. If invalid → increment attempt counter
5. If attempts >= 3 → lock account, otherwise → back to step 1

<!-- YOUR CODE HERE: -->

```mermaid

```

---

## Exercise 2: Sequence Diagram

Create a sequence diagram showing an online purchase flow with these
participants: Customer, Website, PaymentAPI, Database

The flow should be:
1. Customer adds item to cart on Website
2. Customer clicks checkout
3. Website sends payment request to PaymentAPI
4. PaymentAPI processes and returns success/failure
5. On success, Website saves order to Database
6. Website confirms order to Customer

Use `alt` for the success/failure branching and `+`/`-` for activation.

<!-- YOUR CODE HERE: -->

```mermaid

```

---

## Exercise 3: ER Diagram

Model a simple library database with these tables:
- **BOOK**: id (PK), title, isbn, published_year
- **AUTHOR**: id (PK), name, nationality
- **MEMBER**: id (PK), name, email, join_date
- **LOAN**: id (PK), loan_date, return_date

Relationships:
- An author writes one or more books
- A book can have one or more authors (use a junction table BOOK_AUTHOR)
- A member can have zero or more loans
- A loan is for exactly one book

<!-- YOUR CODE HERE: -->

```mermaid

```

---

## Exercise 4: State Diagram

Model the lifecycle of a pull request:
- States: Draft, Open, ReviewRequested, ChangesRequested, Approved, Merged, Closed
- A PR starts as Draft or Open
- Include at least one composite state and transitions that reflect a realistic review workflow

<!-- YOUR CODE HERE: -->

```mermaid

```

---

## Exercise 5: Gantt Chart

Create a Gantt chart for a 4-week personal website project with these phases:
- **Design** (week 1): wireframes (3d), mockups (4d)
- **Development** (weeks 2-3): HTML/CSS (5d), JavaScript (5d), backend (4d)
- **Launch** (week 4): testing (3d), deployment (2d)

Use task dependencies, mark design tasks as `done`, development as `active`,
and add a milestone for "Go Live".

<!-- YOUR CODE HERE: -->

```mermaid

```

---

## Exercise 6: Mind Map

Create a mind map for your personal tech learning roadmap. Include at least:
- 3 main branches (e.g., Languages, Tools, Concepts)
- 2-3 sub-items under each branch
- At least one branch with 3 levels of depth

<!-- YOUR CODE HERE: -->

```mermaid

```

---

## Exercise 7: Styled Flowchart

Create a CI/CD pipeline flowchart with these stages:
- Build → Test → Lint → Deploy to Staging → Approval → Deploy to Prod

Requirements:
- Use `classDef` to define at least 3 color styles (e.g., success, pending, fail)
- Apply styles to nodes using `:::`
- Use a decision diamond for the approval step
- Add a failure path from Test and Lint back to Build

<!-- YOUR CODE HERE: -->

```mermaid

```

---

## Exercise 8: Git Graph

Create a git graph that shows:
- A main branch with 3 initial commits
- A `develop` branch forked from main
- Two feature branches (`feature-a` and `feature-b`) forked from develop
- `feature-a` merged back to develop first
- Then `feature-b` merged to develop
- Finally develop merged to main with a release tag

<!-- YOUR CODE HERE: -->

```mermaid

```
