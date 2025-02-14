# sudo-quotes

Welcome to **sudo-quotes** – a delightful way to enhance your command-line experience with inspiring, humorous, and thought-provoking quotes from the world of GNU/Linux and Free Software.

## Description
`sudo-quotes` is a lightweight Shell script that injects a dose of inspiration into your command-line routine. Each time you open a new terminal, you'll be greeted with a random quote from the world of GNU/Linux and Free Software, making your terminal sessions more enjoyable and thought-provoking.

## Installation
To install `sudo-quotes`, follow these steps:

1. Clone the repository:
   ```sh
   git clone https://github.com/cyberllloner/sudo-quotes.git
   ```
2. Navigate to the project directory:
   ```sh
   cd sudo-quotes
   ```
3. Make the script executable:
   ```sh
   chmod +x sudo-quotes.sh
   ```
4. To run the script every time a new terminal is opened, add the following line to your shell profile (e.g., `~/.bashrc` or `~/.zshrc`):
   ```sh
   echo "/path/to/sudo-quotes/sudo-quotes.sh" >> ~/.bashrc
   ```
   Replace `/path/to/sudo-quotes/` with the actual path to the `sudo-quotes` directory.
5. Apply the changes to your shell profile:
   ```sh
   source ~/.bashrc
   ```

## Usage
Every time you open a new terminal, a random quote will be displayed.

## Contributing

### Adding Quotes
1. Fork the repository by clicking the "Fork" button on the top right of the repository page.
2. Navigate to your forked repository.
3. Edit the `quotes.txt` file to add your quote in the format `Quote - Source` on a new line.
4. Commit the changes and create a pull request.

### Adding Greetings
1. Fork the repository by clicking the "Fork" button on the top right of the repository page.
2. Navigate to your forked repository.
3. Edit the `greetings.txt` file to add your greeting on a new line.
4. Commit the changes and create a pull request.

### Contributing to Code
1. Fork the repository by clicking the "Fork" button on the top right of the repository page.
2. Clone your forked repository:
   ```sh
   git clone https://github.com/your-username/sudo-quotes.git
   cd sudo-quotes
   ```
3. Create a new branch:
   ```sh
   git checkout -b feature/your-feature
   ```
4. Make your changes and commit them:
   ```sh
   git commit -am "Add: your feature"
   ```
5. Push to the branch:
   ```sh
   git push origin feature/your-feature
   ```
6. Open a pull request by navigating to your forked repository on GitHub and clicking the "New pull request" button.

## License
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
