# Static timesheet app served by nginx
FROM nginx:1.27-alpine

# Remove default nginx site and add our static file as index
RUN rm -rf /usr/share/nginx/html/*
COPY timesheet.html /usr/share/nginx/html/index.html

EXPOSE 80

HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
  CMD wget -qO- http://localhost/ >/dev/null 2>&1 || exit 1

CMD ["nginx", "-g", "daemon off;"]
