curl -X PUT "https://api.cloudflare.com/client/v4/zones/56f26a8e48dc86411f384a09a5ca47c8/firewall/rules/873eee64cbc1445e8e3741c5f00d7a07" \
     -H "X-Auth-Email: khiemsky4@gmail.com" \
     -H "X-Auth-Key: e0f9958a15d747f1d7ab339db302b23537292" \
     -H "Content-Type: application/json" \
     --data '{
     "action": "managed_challenge",
     "priority": 2000,
     "paused": false,
     "description": "Captcha Thiết Bị",
     "filter": {
    "id": "df02f2a35a954a718c7ea6879edfc468",
    "expression": "(ip.geoip.country in {\"KP\" \"VN\" \"KR\"} and http.request.method in {\"GET\" \"POST\"} and http.request.version in {\"HTTP/2\" \"HTTP/3\"} and http.user_agent contains \"iPhone\") or (ip.geoip.country in {\"KP\" \"VN\" \"KR\"} and http.request.method in {\"GET\" \"POST\"} and http.request.version in {\"HTTP/2\" \"HTTP/3\"} and http.user_agent contains \"Windows\") or (ip.geoip.country in {\"KP\" \"VN\" \"KR\"} and http.request.method in {\"GET\" \"POST\"} and http.request.version in {\"HTTP/2\" \"HTTP/3\"} and http.user_agent contains \"Android\")",
    "paused": false,
    "description": "Captcha Thiết Bị"
  }
  }'
