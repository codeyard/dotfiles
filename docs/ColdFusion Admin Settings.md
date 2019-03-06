# ColdFusion Admin Settings

## Server Settings

Settings:
- Request Throttle Memory `250` MB


Caching:
- Uncheck "Save class files"


Memory Variables:
- Check "Use J2EE session variables"


Mappings:
- base = `/var/www/wog-v3/base/`
- coldspring = `/var/www/coldspring/`
- front = `/var/www/wog-v3/front/`
- ModelGlue = `/var/www/ModelGlue/`


Mail:
- Mail Server: `127.0.0.1`


Web Socket:
- Uncheck "Enable WebSocket Server"
- Uncheck "Start Flash Policy Server"


Java and JVM:
- Minimum JVM Heap Size (in MB) `512`
- Maximum JVM Heap Size (in MB) `1024`
- JVM Arguments add `-Dfile.encoding=UTF-8`



## Debugging & Logging

Debug Output Settings:
- Check "Enable Robust Exception Information"


Logging Settings:
- Check "Log slow pages taking longer than 30 seconds "


## Server Monitoring

Monitoring Settings:
- Uncheck "Enable Monitoring"
