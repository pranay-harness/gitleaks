dir=$(pwd)
gitleaks detect -s $dir/clone_repos --baseline-path baseline.json -r $dir/results/baseline_diff.json -v --no-git --exit-code 0
