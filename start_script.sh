#! /bin/bash
mkdir clone_repos
dir=$(pwd)
echo $dir
cd clone_repos
bash $dir/git-repos/repolist.sh
cd ..
mkdir results
gitleaks detect -s $dir/clone_repos -r $dir/results/gitleaks.json --no-git -v
