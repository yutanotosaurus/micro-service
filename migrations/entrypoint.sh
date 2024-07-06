#!/bin/bash

# Auth Service Migrations
echo "Running auth-service migrations..."
psql postgresql://user:password@auth-db:5432/authdb -f /migrations/auth/*.sql

# Product Service Migrations
echo "Running product-service migrations..."
psql postgresql://user:password@product-db:5432/productdb -f /migrations/product/*.sql

# Cart Service Migrations
echo "Running cart-service migrations..."
psql postgresql://user:password@cart-db:5432/cartdb -f /migrations/cart/*.sql

# Order Service Migrations
echo "Running order-service migrations..."
psql postgresql://user:password@order-db:5432/orderdb -f /migrations/order/*.sql

# Payment Service Migrations
echo "Running payment-service migrations..."
psql postgresql://user:password@payment-db:5432/paymentdb -f /migrations/payment/*.sql

echo "Migrations completed!"
