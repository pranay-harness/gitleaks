# Gitleaks customized for Harness


Steps to run this script:

1. Clone the repo

`git clone https://github.com/pranay-harness/gitleaks`

2. Install Git leaks
# MacOS
brew install gitleaks

# From Source
git clone https://github.com/zricethezav/gitleaks.git
cd gitleaks
make build

3. To run a gitleaks scan on all the Harness Public repos ren the below script:

`cd gitleaks`

`sudo bash start_script.sh`


4. To generate a baseline diff, run the below script. Basically this scipt gives us the results of any new secrets added apart from the exisiting secrets.

`sudo bash baseline_script.sh`


