# love2dgame1
My first non-tutorial project in love2D
<!-- Improved compatibility of back to top link: See: https://github.com/othneildrew/Best-README-Template/pull/73 -->

<a name="readme-top"></a>

<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->

[![MIT License][license-shield]][license-url]

<!-- ABOUT THE PROJECT -->

## About This Repo

Using resources from [Learn to LÖVE](https://www.sheepolution.com/learn/book/contents) tutorial and [LÖVE Wiki](https://love2d.org/wiki/Main_Page) I've managed to put this game together.

There is a decent amount of my own code in it but the key concern was reinforcing knowledge I've achieved throughout the tutorial. Which came with a few hiccups but it worked out in the end.

The game is fully playable and I'm more than keen to move onto new projects after a few eventual updates.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Built With

- [![Lua][Lua-shield]][Lua-url]
- [![LÖVE][LOVE-shield]][LOVE-url]

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->

## Getting Started

### Files

Most of the files commited to this repository are raw code. Only panda_survival.love (a play-ready LÖVE file) and classic.lua (class module) avoid this classification.

1. main.lua: Main file for the game
2. enemy.lua: Information and functions of the enemy entity
3. player.lua: Information and functions of the player entity
4. conf.lua: A config file that interacts with the builder to set title and icon
### Prerequisites

- Lua

- LÖVE

### Installation

A. Only LÖVE required 
  1. Download panda_survival.love
  2. Double-click the file
  3. Play

B. Raw code start
  1. Clone the repo
    ```sh
    git clone https://github.com/TodorNik/love2dgame1
    ```
  2. cd into a chapter or game directory
    ```sh
    cd love2dgame1/
    ```
  3. Run main.lua using LÖVE
     ```sh
     love . or lovec .
     ```
  4. Play

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ROADMAP -->

## Roadmap

- [X] Add smoother transition after game over
- [X] Replace placeholder art, set a background
- [] Add special enemies every X number of points

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## License

Distributed under the MIT License. See `LICENSE.txt` for more information.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->

[license-shield]: https://img.shields.io/github/license/othneildrew/Best-README-Template.svg?style=for-the-badge
[license-url]: https://github.com/wem1c/Learn-To-LOVE/blob/master/LICENSE
[Lua-shield]: https://img.shields.io/badge/Lua-5B1B1B?style=for-the-badge&logo=lua&logoColor=white
[Lua-url]: https://www.lua.org/
[LOVE-shield]: https://img.shields.io/badge/LÖVE-5B1B1B?style=for-the-badge&logo=love&logoColor
[LOVE-url]: https://www.love.com/
