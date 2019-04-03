#!/bin/bash

if [ "$1" = "actual" ]; then
	startDate=$(date -d "-$(($(date +%d)-1)) days" +%Y-%m-%dT00:00:00.000Z)

	endDate=$(date -d "-$(date +%d) days + 1 months" +%Y-%m-%dT00:00:00.000Z)
else
	startDate=$(date -d "-1 month -$(($(date +%d)-1)) days" +%Y-%m-%dT00:00:00.000Z)

	endDate=$(date -d "-$(date +%d) days" +%Y-%m-%dT00:00:00.000Z)
fi


jq -n --arg startD $startDate --arg endD $endDate '{"startDate":$startD,"endDate":$endD,  "me": "true","userGroupIds": [],"userIds": [],"projectIds": [],"clientIds": [],"taskIds": [],"tagIds": [],"billable": "BILLABLE","includeTimeEntries": "true","zoomLevel": "month","archived": "Active","roundingOn": "false"}' | curl -H "content-type: application/json" \
	-H "X-Api-Key: $CLOCKIFY_API_KEY" \
	-d @- \
	-X POST https://api.clockify.me/api/workspaces/$DC_WORKSPACE_ID/reports/summary | jq ".totalTime"
