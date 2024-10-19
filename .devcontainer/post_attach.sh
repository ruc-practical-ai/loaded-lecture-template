echo "Configuring git to treat working directory as safe..."
git config --global --add safe.directory $(pwd)

if [ $? -eq 0 ]; then
    echo "Successfully configured git!"
else
    echo "Failed to configure git to treat working directory as safe."
fi

echo ""
echo "Sourcing .bash_profile..."
source /home/developer/.bash_profile

echo ""
echo "Checking poetry version..."
echo "Using poetry version:"
poetry --version

if [ $? -eq 0 ]; then
    echo "Successfully installed poetry!"
else
    echo "Failed to install poetry."
fi

echo ""
echo "Logged in as user:"
whoami

echo ""
echo "Success - ready to develop!"
echo ""