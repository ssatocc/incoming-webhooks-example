import json
import os

import requests
from dotenv import load_dotenv


def main():
    load_dotenv()
    web_hook_url = os.environ.get("WEB_HOOK_URL")
    data = json.dumps({"text": "Hello, World!"})
    resp = requests.post(web_hook_url, data=data)
    print(resp.status_code)


if __name__ == "__main__":
    main()
