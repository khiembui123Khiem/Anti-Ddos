curl -X PUT "https://api.cloudflare.com/client/v4/zones/56f26a8e48dc86411f384a09a5ca47c8/firewall/rules/274f528ae2c44b7e9b1888b31c6f5d75" \
     -H "X-Auth-Email: khiemsky4@gmail.com" \
     -H "X-Auth-Key: e0f9958a15d747f1d7ab339db302b23537292" \
     -H "Content-Type: application/json" \
     --data '{
     "action": "block",
     "priority": 1000,
     "paused": true,
     "description": "Block quốc tế",
     "filter": {
    "id": "784782a9cde7475faeb2aa6b5562e605",
    "expression": "(not ip.geoip.country in {\"KP\" \"VN\" \"KR\"} and http.request.method in {\"GET\" \"POST\"} and http.request.version in {\"HTTP/2\" \"HTTP/3\"})",
    "paused": false,
    "description": "Block quốc tế"
  }
  }'
