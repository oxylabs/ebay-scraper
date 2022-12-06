# Ebay Scraper

### How it works

You can get eBay results by providing your own URLs to our service. We can return the HTML of any eBay page you like.

#### Python code example

The example below illustrates how you can get an eBay product page result in HTML format.

```python
import requests
from pprint import pprint

# Structure payload.
payload = {
    'source': 'universal_ecommerce',
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

#### Output Example

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
