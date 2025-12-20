pb jets

private aviation website for pb jets. palm beach.

setup

1. clone the repo
2. open index.html in a browser or run `python3 -m http.server 8000`

emailjs

replace the placeholder values in index.html with your emailjs credentials:
- emailjs.init("your_public_key")
- emailjs.send("your_service_id", "your_template_id", ...)

deploy

push to github and connect to netlify. set environment variables in netlify dashboard if using the build script.

