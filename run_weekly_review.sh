#!/bin/bash
# Wait up to 5 minutes for network before proceeding
for i in $(seq 1 30); do
    if /usr/bin/curl -s --max-time 5 https://api.todoist.com > /dev/null 2>&1; then
        break
    fi
    /bin/sleep 10
done
cd /Users/revekkagershovich/Projects/Orgs/orgs
/opt/anaconda3/envs/Revekka_first_environment/bin/jupyter nbconvert \
    --to notebook --execute weekly_review.ipynb \
    --output /tmp/weekly_review_last_run.ipynb \
    >> /Users/revekkagershovich/Projects/Orgs/orgs/weekly_review_cron.log 2>&1
