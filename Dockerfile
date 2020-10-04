FROM python:3.8.3-slim
LABEL maintainer="Mohammed Salama <dataubc@gmail.com>"
WORKDIR /app
COPY . /app
RUN pip --no-cache-dir install numpy pandas seaborn sklearn jupyter
EXPOSE 8888

# Run app.py when the container launches
CMD ["jupyter", "notebook", "--ip='*'", "--port=8888", "--no-browser", "--allow-root"]