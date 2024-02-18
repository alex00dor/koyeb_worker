FROM denoland/deno

WORKDIR /app

COPY main.js /app
RUN deno cache main.js

ARG PORT
EXPOSE ${PORT:-8000}

CMD ["run", "--allow-net", "--allow-env", "main.js"]
