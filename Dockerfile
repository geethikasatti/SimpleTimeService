# ---------- Builder stage ----------
FROM python:alpine AS builder


WORKDIR /build
COPY requirements.txt .


# Install dependencies into a temporary directory
RUN pip install --no-cache-dir --prefix=/install -r requirements.txt


# ---------- Runtime stage ----------
FROM python:alpine


# Create non-root user
RUN addgroup --system appgroup && adduser --system --ingroup appgroup appuser


WORKDIR /app


# Copy only installed dependencies from builder
COPY --from=builder /install /usr/local


# Copy application code
COPY app ./app


# Fix ownership
RUN chown -R appuser:appgroup /app


USER appuser


EXPOSE 8000


CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]