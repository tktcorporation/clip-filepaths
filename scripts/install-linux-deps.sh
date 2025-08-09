#!/usr/bin/env bash
set -euo pipefail

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Check if running on Linux
if [[ "$OSTYPE" != "linux-gnu"* ]]; then
    echo -e "${YELLOW}📦 Not running on Linux. Skipping Linux dependencies installation.${NC}"
    exit 0
fi

echo -e "${GREEN}📦 Installing Linux dependencies for clip-filepaths...${NC}"

# Check if running with sudo privileges when needed
if ! command -v sudo &> /dev/null; then
    echo -e "${RED}❌ sudo is required but not found. Please install sudo or run as root.${NC}"
    exit 1
fi

# List of required packages
PACKAGES=(
    libx11-dev
    libxext-dev
    libxrender-dev
    libxtst-dev
    libxinerama-dev
    libxcb1-dev
    libxcb-render0-dev
    libxcb-shape0-dev
    libxcb-xfixes0-dev
    libxmu-dev
    pkg-config
    xvfb
    x11-apps
    xclip
    xauth
)

# Check which packages are already installed
MISSING_PACKAGES=()
for pkg in "${PACKAGES[@]}"; do
    if ! dpkg -l | grep -q "^ii  $pkg"; then
        MISSING_PACKAGES+=("$pkg")
    fi
done

# Install missing packages
if [ ${#MISSING_PACKAGES[@]} -eq 0 ]; then
    echo -e "${GREEN}✅ All required Linux packages are already installed.${NC}"
else
    echo -e "${YELLOW}📦 Installing missing packages: ${MISSING_PACKAGES[*]}${NC}"
    
    # Update package list
    sudo apt-get update -y || {
        echo -e "${RED}❌ Failed to update package list${NC}"
        exit 1
    }
    
    # Install missing packages
    sudo apt-get install -y "${MISSING_PACKAGES[@]}" || {
        echo -e "${RED}❌ Failed to install packages${NC}"
        exit 1
    }
    
    echo -e "${GREEN}✅ Successfully installed Linux dependencies.${NC}"
fi

# Verify critical packages for X11 clipboard support
echo -e "${GREEN}🔍 Verifying X11 development files...${NC}"
if pkg-config --exists x11; then
    echo -e "${GREEN}✅ X11 development files found.${NC}"
else
    echo -e "${RED}❌ X11 development files not properly installed.${NC}"
    exit 1
fi