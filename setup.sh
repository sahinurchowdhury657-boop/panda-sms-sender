#!/bin/bash

echo "================================================"
echo "  Panda SMS Sender v4.0 - Setup"
echo "  Developer - @rsrudro27"
echo "================================================"
echo ""

echo "[*] Updating packages..."
if command -v pkg &> /dev/null; then
    pkg update -y && pkg upgrade -y
    pkg install python -y
elif command -v apt &> /dev/null; then
    apt update -y && apt upgrade -y
    apt install python3 python3-pip -y
fi

echo "[*] Installing Python requirements..."
pip install -r requirements.txt 2>/dev/null || pip3 install -r requirements.txt 2>/dev/null

echo ""
echo "================================================"
echo "  ✓ Setup Complete!"
echo "  ✓ Run: python panda_sms.py"
echo "================================================"
echo ""
echo "  Quick Start:"
echo "  1. python panda_sms.py"
echo "  2. Menu [2] → Add target numbers (with country code)"
echo "  3. Menu [4] → Start attack"
echo ""
echo "  No CAPTCHA solving required!"
