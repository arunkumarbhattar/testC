<div id="top"></div>

[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]
[![LinkedIn][linkedin-shield]][linkedin-url]



<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/Vedaant-Rajoo/testC">
  </a>

<h3 align="center">Analysing 3C</h3>

  <p align="center">
    This project highlights the use of 3C and analyses it's usage. 3C is a tool used to automatically convert legacy C code to checked C code.
    <br />
    <a href="https://github.com/Vedaant-Rajoo/testC"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://github.com/Vedaant-Rajoo/testC">View Demo</a>
    ·
    <a href="https://github.com/Vedaant-Rajoo/testC/issues">Report Bug</a>
    ·
    <a href="https://github.com/Vedaant-Rajoo/testC/issues">Request Feature</a>
  </p>
</div>



<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project
Checked C adds static and dynamic checking to C to detect or prevent common programming errors such as buffer overruns and out-of-bounds memory accesses. 
The 3C (Checked-C-Convert) software facilitates conversion of existing C code to Checked C by automatically inferring as many Checked C annotations as possible and guiding the developer through the process of assigning the remaining ones. 3C aims to provide the first feasible way for organizations with large legacy C codebases (that they don't want to drop everything to rewrite in a better language) to comprehensively verify their code's spatial memory safety.



<p align="right">(<a href="#top">back to top</a>)</p>





<!-- GETTING STARTED -->
## Getting Started

As described [here](https://github.com/microsoft/checkedc-clang/blob/master/clang/docs/checkedc/3C/README.md#which-checkedc-clang-repository-to-use),
you can use either
https://github.com/correctcomputation/checkedc-clang or
https://github.com/microsoft/checkedc-clang (or, of course, a
third-party fork, though we can't be responsible for that). Assuming
you have already cloned one of these repositories, run the following
(from the `checkedc-clang` directory or whatever you named your clone)
for a basic build:

```
# Get a copy of the Checked C system headers. Use Microsoft's
# "checkedc" repository regardless of which "checkedc-clang"
# repository you use.
git clone https://github.com/microsoft/checkedc llvm/projects/checkedc-wrapper/checkedc

mkdir build && cd build
cmake ../llvm -G Ninja -DLLVM_ENABLE_PROJECTS=clang
ninja TARGET
```

where `TARGET` stands for the target(s) you want to build. For the
`3c` command-line tool, the target is `3c`, but assuming you want to
actually compile the Checked C source files generated by 3C, you'll
also want to build `clang` (the Checked C compiler, which is a
modified version of Clang). Executables will end up in `build/bin`;
you'll likely want to add this directory to your `$PATH` or write
suitable wrapper scripts.

### Prerequisites

You need the `clang` compiled from the above section to be included in your `PATH` for 3c and clang to work on the checked C code.


<!-- USAGE EXAMPLES -->
## Usage
To use this repo, go to a specific folder which consists of programs (Simple C programs) and run this command:
```
make original   // To compile the original Legacy C code.
```

```
make checked    // To compile the fixed 3C code (The ideal case after fixing)
```
```
make manual     // To compile the manually converted code. (The ideal case)
```
```
make just3c     // To compile the after running 3c for one pass (This might not compile for most cases due to problems in 3C)
```

<p align="right">(<a href="#top">back to top</a>)</p>





<!-- CONTACT -->
## Contact

Your Name - [@iamnewedia](https://twitter.com/iamnewedia) - vrajoo@purdue.edu

Project Link: [https://github.com/Vedaant-Rajoo/testC](https://github.com/Vedaant-Rajoo/testC)

<p align="right">(<a href="#top">back to top</a>)</p>

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/Vedaant-Rajoo/testC.svg?style=for-the-badge
[contributors-url]: https://github.com/Vedaant-Rajoo/testC/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/Vedaant-Rajoo/testC.svg?style=for-the-badge
[forks-url]: https://github.com/Vedaant-Rajoo/testC/network/members
[stars-shield]: https://img.shields.io/github/stars/Vedaant-Rajoo/testC.svg?style=for-the-badge
[stars-url]: https://github.com/Vedaant-Rajoo/testC/stargazers
[issues-shield]: https://img.shields.io/github/issues/Vedaant-Rajoo/testC.svg?style=for-the-badge
[issues-url]: https://github.com/Vedaant-Rajoo/testC/issues
[license-shield]: https://img.shields.io/github/license/Vedaant-Rajoo/testC.svg?style=for-the-badge
[license-url]: https://github.com/Vedaant-Rajoo/testC/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/vedaant-rajoo
[product-screenshot]: images/screenshot.png

