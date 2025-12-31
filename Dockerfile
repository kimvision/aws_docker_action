# 1. 파이썬 베이스 이미지 선택
FROM python:3.10-slim

# 2. 작업 디렉토리 설정
WORKDIR /app

# 3. 필요한 파일 복사
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .

# 4. 프로그램 실행 명령
CMD ["python", "app.py"]