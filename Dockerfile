# Use official image with node + n8n already installed
FROM n8nio/n8n:1.45.1

# Set basic auth + timezone via ENV
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=admin123
ENV GENERIC_TIMEZONE=America/Chicago

EXPOSE 5678

# Start the n8n server
CMD ["n8n"]
