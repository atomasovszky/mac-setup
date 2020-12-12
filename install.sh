x-code-select --install

# Install homebrew
brew --version || /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install homebrew formulas
for formula in $(cat formulas); do
	brew install $formula;
done

# Install homebrew casks
for cask in $(cat casks); do
	brew install --cask $cask;
done

