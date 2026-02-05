#!/bin/bash

# CBBot Release Creation Script
# Usage: bash scripts/create-release.sh <version>

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Default values
VERSION=${1:-"1.0.0"}
RELEASE_NAME="CBBot v${VERSION} - One-Click Development Environment"
TAG_NAME="v${VERSION}"
PACKAGE_NAME="CBbot-v${VERSION}.tar.gz"

echo -e "${BLUE}🚀 CBBot Release Creator${NC}"
echo -e "${YELLOW}Version: ${VERSION}${NC}"
echo -e "${YELLOW}Tag: ${TAG_NAME}${NC}"
echo -e "${YELLOW}Package: ${PACKAGE_NAME}${NC}"
echo ""

# Function to print status
print_status() {
    echo -e "${GREEN}✅ $1${NC}"
}

print_error() {
    echo -e "${RED}❌ $1${NC}"
    exit 1
}

print_warning() {
    echo -e "${YELLOW}⚠️  $1${NC}"
}

# Check if we're in the right directory
if [ ! -f "README.md" ] || [ ! -d "package" ]; then
    print_error "Please run this script from the CBBot root directory"
fi

# Check if git is clean
if [ -n "$(git status --porcelain)" ]; then
    print_warning "Working directory is not clean. Please commit or stash changes first."
    read -p "Continue anyway? (y/N): " -n 1 -r
    echo
    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
        exit 1
    fi
fi

echo -e "${BLUE}📦 Creating release package...${NC}"

# Create temporary directory for packaging
TEMP_DIR=$(mktemp -d)
PROJECT_DIR="${TEMP_DIR}/CBbot"

# Copy project files (exclude .git and other unnecessary files)
mkdir -p "${PROJECT_DIR}"

print_status "Copying project files"
cp -r . "${PROJECT_DIR}" 2>/dev/null || {
    # Use rsync if cp fails (better handling of special files)
    rsync -av --exclude='.git' --exclude='*.tar.gz' --exclude='node_modules' \
          --exclude='.DS_Store' --exclude='logs' . "${PROJECT_DIR}/"
}

# Clean up unnecessary files in the copy
cd "${PROJECT_DIR}"
rm -rf .git .DS_Store **/.DS_Store logs/*.log 2>/dev/null || true

# Go back to original directory
cd - > /dev/null

# Create the package
print_status "Creating tar.gz package"
cd "${TEMP_DIR}"
tar -czf "${PACKAGE_NAME}" CBbot/
cd - > /dev/null

# Move package to project root
mv "${TEMP_DIR}/${PACKAGE_NAME}" .

# Clean up temp directory
rm -rf "${TEMP_DIR}"

print_status "Package created: ${PACKAGE_NAME}"

# Get package size
PACKAGE_SIZE=$(du -h "${PACKAGE_NAME}" | cut -f1)
print_status "Package size: ${PACKAGE_SIZE}"

echo ""
echo -e "${BLUE}📋 Release Information${NC}"
echo -e "${YELLOW}════════════════════════════════════════${NC}"
echo -e "Release Name: ${RELEASE_NAME}"
echo -e "Tag Name: ${TAG_NAME}"
echo -e "Package File: ${PACKAGE_NAME}"
echo -e "Package Size: ${PACKAGE_SIZE}"
echo ""

echo -e "${BLUE}📝 Next Steps${NC}"
echo -e "${YELLOW}════════════════════════════════════════${NC}"
echo "1. Review the package contents:"
echo "   tar -tzf ${PACKAGE_NAME} | head -20"
echo ""
echo "2. Create GitHub Release:"
echo "   - Go to: https://github.com/mobvoi/CBbot/releases/new"
echo "   - Tag version: ${TAG_NAME}"
echo "   - Release title: ${RELEASE_NAME}"
echo "   - Upload: ${PACKAGE_NAME}"
echo ""
echo "3. Use release template:"
echo "   - Copy content from: .github/RELEASE_TEMPLATE.md"
echo "   - Update download links to point to actual release assets"
echo ""
echo "4. Test the release:"
echo "   - Download and extract the package"
echo "   - Test installation process"
echo "   - Verify all documentation links work"
echo ""

echo -e "${GREEN}🎉 Release package ready!${NC}"
echo -e "${BLUE}Package: ${PACKAGE_NAME}${NC}"
echo ""

# Optional: Show package contents preview
read -p "Show package contents preview? (y/N): " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
    echo -e "${BLUE}📦 Package Contents (first 20 files):${NC}"
    tar -tzf "${PACKAGE_NAME}" | head -20
    echo "..."
fi

echo ""
print_status "Release creation completed successfully!"