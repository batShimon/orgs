#!/bin/bash
cd /Users/revekkagershovich/Projects/Orgs/orgs
/opt/anaconda3/envs/Revekka_first_environment/bin/jupyter nbconvert \
    --to notebook --execute monthly_review.ipynb \
    --output /tmp/monthly_review_last_run.ipynb \
    >> /Users/revekkagershovich/Projects/Orgs/orgs/monthly_review_cron.log 2>&1
