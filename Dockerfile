FROM nginx:alpine

LABEL maintainer="Anushka Ghule"
LABEL project="CND Kubernetes Deployment"

COPY index.html /usr/share/nginx/html/index.html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
