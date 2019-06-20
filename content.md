class: center, middle
layout: true
---
# Git, Secrets and You!

### SADA: Google Cloud

### June 21st, 2019

.footnote[Go to presentation [repository](https://github.com/smaslennikov/sada-beer-and-learn-1/)]

---
layout: false
.left-column[
## Agenda
]
.right-column[
 - Have a drink
]
--
.right-column[
 - State the problem
]
--
.right-column[
 - Solve it natively
]
--
.right-column[
 - Solve it externally
]
--
.right-column[
 - Solve by abolishment
]
---
.left-column[
 ## Agenda
 ## Problem statement
]
--
.right-column[
TODO
]
---
.left-column[
 ## Agenda
 ## Problem statement
 ## Native solution
]
--
.right-column[
TODO
]
---
.left-column[
 ## Agenda
 ## Problem statement
 ## Native solution
 ## External solution
]
--
.right-column[
TODO
]
---
.left-column[
 ## Agenda
 ## Problem statement
 ## Native solution
 ## External solution
 ## Going around the problem
]
--
.right-column[
### Store secrets outside of git.

Example: `chamber`

* cli tool that uses AWS's SSM+KMS
* populates secrets in environment variables in shell
* [https://github.com/segmentio/chamber](https://github.com/segmentio/chamber)
]
--
.right-column[
### Usage
```bash
//chamber exec <service> -- <command>
chamber exec terraform -- terraform apply
```
]
--
.right-column[
### Let's port it to GCP
]
