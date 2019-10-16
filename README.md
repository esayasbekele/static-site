## 1) Expected setup (convention)

`index.html` has a reference to config.js and expects SITE_SETTINGS global variable (window.SITE_SETTINGS)

``` 
<!DOCTYPE html>
<head>
    <title>Static site</title>
    <script src="config.js"></script>
</head>
<body> 
    <h1> The static site. </h1>
    <script src="site.js"></script>
</body>
```


## 2) Build an image 

```
docker build -t sample-ui .
```

## 3) Pass `SITE_SETTINGS` as json 

```
docker run -e SITE_SETTINGS='{"API_URL" : "http://production.example.com" }' -d --restar
t always  --name sample-ui -p 4000:4000 sample-ui
```

