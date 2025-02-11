# Ebay Scraper

[![Oxylabs promo code](https://raw.githubusercontent.com/oxylabs/product-integrations/refs/heads/master/Affiliate-Universal-1090x275.png)](https://oxylabs.go2cloud.org/aff_c?offer_id=7&aff_id=877&url_id=112)


[![](https://dcbadge.vercel.app/api/server/eWsVUJrnG5)](https://discord.gg/GbxmdGhZjq)

[eBay Scraper](https://oxy.yt/Qapz) is a sophisticated solution designed to gather data from eBay website in real time and without a hassle. This quick guide will detail the process of scraping eBay using Oxylabs' Scraper API.

### How it works

You can get eBay results by providing your own URLs to our service. We can return the HTML of any eBay page you like.

#### Python code example

The example below illustrates how you can get an eBay product page result in HTML format.

```python
import requests
from pprint import pprint

# Structure payload.
payload = {
    'source': 'universal',
    'url': 'https://www.ebay.com/itm/293608130360',
    'geo_location': 'United States',
}

# Get response.
response = requests.request(
    'POST',
    'https://realtime.oxylabs.io/v1/queries',
    auth=('user', 'pass1'),
    json=payload,
)

# Instead of response with job status and results url, this will return the
# JSON response with the result.
pprint(response.json())
```

Find code examples for other programming languages [**here**](https://github.com/oxylabs/ebay-scraper/tree/main/code%20examples)

#### Output example

```json
{
    "results": [
        {
            "content":"<!doctype html>\n<html lang=\"en\">\n<head>
            ...
            </script></body>\n</html>\n",
            "created_at": "2022-11-17 14:53:52",
            "updated_at": "2022-11-17 14:53:54",
            "page": 1,
            "url": "https://www.ebay.com/itm/293608130360",
            "job_id": "6999021798385787905",
            "status_code": 200
        }
    ]
}
```

With Oxylabs’ eBay Scraper, publicly available data extraction will feel effortless. From product information to customer reviews – you’ll have all the data you need. If you have further queries, you can contact us via live chat or [email](mailto:support@oxylabs.io), and we’ll sort out your concerns in no time.

Also, check this tutorial on [pypi](https://pypi.org/project/Ebay-scraper-api/)
