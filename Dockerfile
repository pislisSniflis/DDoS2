FROM ubuntu:latest
RUN apt update && apt install -y hping3 net-tools
CMD ["/bin/bash"]
FROM python:3.9-slim
COPY attack.py /attack.py
RUN pip install requests
CMD ["python", "/attack.py"]
