# Gitleaks customized for Harness


Steps to run this script:

1. Clone the repo

`git clone https://github.com/pranay-harness/gitleaks`

2. To run a gitleaks scan on all the Harness Public repos ren the below script:

`sudo bash start_script.sh`


3. To generate a baseline diff, run the below script. Basically this scipt gives us the results of any new secrets added apart from the exisiting secrets.

`sudo bash baseline_script.sh`


