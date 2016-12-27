echo "Setup in progress..."
echo "Installing necessary packages..."
composer install
sudo chmod -R 777 storage/
echo "Creating env file..."
cp .env.example .env
php artisan key:generate

echo "Installing necessary node packages..."
npm install
echo "Publishing css..."
gulp