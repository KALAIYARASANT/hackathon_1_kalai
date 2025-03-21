FROM python:3.12.4

WORKDIR /app

COPY . /app
 
RUN pip install --no-cache-dir -r hack_requirement.txt

EXPOSE 8080

ENTRYPOINT [ "streamlit", "run", "hack_wepapp.py", "--server.port=8080", "--server.address=0.0.0.0" ]