curl --user user:pass \
'https://realtime.oxylabs.io/v1/queries' \
-H "Content-Type: application/json" \
-d '{"source": "universal_ecommerce", "url": "https://www.ebay.com/itm/293608130360", "geo_location": "United States"}'