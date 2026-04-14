FROM nginx:alpine

# Copy nginx config
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copy all site files
COPY redesign/ /usr/share/nginx/html/redesign/
COPY brand_assets/ /usr/share/nginx/html/brand_assets/

# Expose port 80
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
