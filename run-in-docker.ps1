$re = [regex]'^([A-Z]):'
$cb = { $args[0].Groups[1].Value.ToLower() }
$p = "$($PWD.Path -replace '\\+','/')"

echo $p
#ocker run -v "$p":/data  python 
docker run --rm -it --hostname dds -p 8004:8004 -v E:/workcode/django-dynamic-scraper:/app djangodynamicscraper_dds bash