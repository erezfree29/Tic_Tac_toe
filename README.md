# Tic-Tac-Toe

![tictactoe-example](https://cdn.pixabay.com/photo/2017/02/25/10/53/board-2097446_1280.jpg)


## Built With

- Ruby
- Vscode
- Rubocop


## How to Play

'Tic Tac Toe' is a traditional game for two players played on a board with 9 squares.

Each player is represented by a symbol, either 'X' or 'O'. The players then take turns to place their respective symbols in an empty square on the board, with O's going first - in our version of the game, these squares are represented by the numbers 1 to 9.

The aim of the game is to have three of your symbols form a line, be it vertically, horizontally or diagonally, as illustrated in the image below.

In the event that all 9 squares are taken without either player getting three of their symbols in a line, a draw is declared.


## Runing the TEST instructions
 Install
-After installing RSpec, run gem install terminal-table  
 Test
-In order to run the test on the table file the user need to install the terminal-table gem on his local machine.
-To run the tests just type rspec.
 
 

### Prerequisites

If you intend to download the project, you will need to have Ruby already installed on your machine. For more information on how to install Ruby, follow [this link](https://www.ruby-lang.org/en/downloads/).

### Installation Instructions

To get your own copy of our project simply clone the repository to your local machine.

**Step 1**: Using the Command Line, navigate into the location where you would like to have the repository. Then enter the following line of code:

```
`git clone https://github.com/erezfree29/Ruby-code2.git
```

**Step 2**: Once the repo has been cloned, navigate inside it by entering the following command:

`cd Ruby-code2`

**Step 3**: Once in the root directory of the repository, simply enter the following line of code to start a game:

`bin/main`

From there, the game will begin, and the user need only follow the subsequent instructions that appear in the Terminal.

## Repository Contents

The code for the project is divided into two main directories: **./bin** and **./lib**.

The **./bin** folder contains the executable **main.rb** file. This is the only file that contains the Kernel.puts and Kernel.gets methods, allowing for interaction with the game via the Terminal. _This is the only file that should be run if you want to play the game._

The **./lib** folder contains subsidiary files that set up all of the classes and methods used in bin/main.rb

- **player.rb**, where the Player class is defined.
- **board.rb**, where the Board class is defined.

In addition to the above, the repo also contains .rubocop.yml for linting.


## ✒️  Author <a name = "author"></a>

👤 **Erez Friemagor**
- Github: [@erezfree29](https://github.com/erezfree29)
- Linkedin: [Erez Friemagor](https://www.linkedin.com/in/mert-gunduz-875280202/)

👤 **Makungong Collins Tatang**
- GitHub: [@CollinsTatang](https://github.com/CollinsTatang)
- Twitter: [@CollinsTatang1](https://twitter.com/CollinsTatang1)
- LinkedIn: [makungong-collins](https://www.linkedin.com/in/makungong-collins-b43260190/)



## Show your support ⭐️⭐️

If you've read this far....give a star to this project ⭐️!

## 📝 License

This project has no licence.
