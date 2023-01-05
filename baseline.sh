
DATE=$(date +%Y-%m-%d)
gitleaks detect -s /harness/clone_repos --baseline-path baseline.json -r results_$DATE.csv -f csv -v --no-git --exit-code 0
if [ -s results_$DATE.csv ];
then
curl -X POST --data-urlencode "payload={\"channel\": \"gitleaks-alert\", \"username\": \"Gitleaks-Alert\",\"type\": \"mrkdwn\", \"text\":\" New Hardcoded Secrets added to the repo ----> \n Checkout the new identified secrets here - https://storage.cloud.google.com/harness-trivy-scans/results_$DATE.csv \n  \", \"icon_emoji\": \":harnesshd:\"}" https://hooks.slack.com/services/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
else
exit 0
fi



gitleaks detect -s /harness/clone_repos --baseline-path baseline.json -r results.json -v --no-git --exit-code 0