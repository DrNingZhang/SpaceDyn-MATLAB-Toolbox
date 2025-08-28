# SpaceDyn: A MATLAB Toolbox for Space and Mobile Robots
## Overview

**SpaceDyn** is an open-source MATLAB toolbox developed by the **Space Robotics Laboratory at Tohoku University, Japan**. This powerful toolbox specializes in the kinematic and dynamic analysis and simulation of articulated multi-body systems featuring a moving base, making it an invaluable tool for researchers and engineers in the fields of robotics and aerospace engineering.

The toolbox is specifically designed to handle the complex dynamics of various advanced robotic systems. It excels at simulating free-flying space robots, such as satellites equipped with robotic manipulators, with a notable example being the ETS-VII model. For planetary exploration applications, SpaceDyn effectively models wheeled mobile robots operating on challenging terrain surfaces. The toolbox also extends its capabilities to legged robotics, supporting the simulation of walking robots with varying numbers of limbs. Furthermore, it addresses the complexities of flexible-base manipulator systems, including sophisticated platforms like the Canadian SRMS/SPDM and the Japanese JEMRMS used in space station operations.

A key strength of SpaceDyn is its versatility in simulating these systems across diverse environments, ranging from microgravity conditions of space to various gravitational fields encountered in planetary exploration missions.

## Key Features

SpaceDyn offers a comprehensive suite of capabilities for multi-body dynamics simulation. The toolbox provides robust support for systems where the base platform, such as a satellite or rover vehicle, is not fixed but can move and rotate freely in three-dimensional space. It efficiently handles open-chain systems with tree-structured topologies, accommodating complex robotic systems with multiple branches and limbs.

Unlike many conventional robotics toolboxes, SpaceDyn employs a flexible coordinate system definition that does not rely on the Denavit-Hartenberg (DH) convention. This approach offers greater flexibility in defining link coordinates and inertia properties, particularly beneficial for systems with moving bases. For attitude representation, the toolbox utilizes direction cosine matrices, ensuring singularity-free orientation calculations throughout simulations.

The toolbox includes complete implementations of both forward and inverse dynamics solvers. The forward dynamics capability enables simulation of system motion based on applied forces and torques, while the inverse dynamics functionality calculates the required joint torques to achieve specified motions. Additionally, SpaceDyn incorporates sophisticated modeling of external interactions, including ground contact forces, joint torques, and external forces applied to end-effectors or the base body.

SpaceDyn provides detailed kinematic and dynamic analysis, computing positions, velocities, and accelerations of all body centroids, joints, and endpoints throughout the simulation duration.

## System Requirements & Installation

SpaceDyn requires MATLAB version 5.0 or higher to function properly. The toolbox utilizes functions and three-dimensional array operations that are not supported in MATLAB 4.x or earlier versions. Users can download the latest version of the toolbox directly from the official website at [https://astro.mech.tohoku.ac.jp/spacedyn/](https://astro.mech.tohoku.ac.jp/spacedyn/).

Installation is straightforward: after downloading the toolbox files, simply add the spacedyn folder and all its subfolders to your MATLAB path using the addpath function or through MATLAB's Set Path dialog box. This ensures all functions and utilities are accessible from any working directory within MATLAB.

## Getting Started

To begin using SpaceDyn, we recommend thoroughly reviewing the comprehensive documentation included with the distribution. The manual provides essential theoretical background, complete variable definitions, and detailed modeling guidelines that are crucial for effective use of the toolbox.

New users should explore the provided demonstration scripts to understand how to properly define robot models, set appropriate initial conditions, and execute dynamics simulations. When preparing your own models, pay careful attention to defining the topological structure, kinematic parameters including link vectors, and dynamic parameters such as masses and inertia tensors.

For simulation tasks, utilize the core functions such as sd_forward_dynamics for dynamics simulation and sd_inverse_dynamics for calculating required joint torques. The toolbox includes numerous helper functions for visualization, analysis, and results processing.

## Limitations

While SpaceDyn excels in many areas, users should be aware of certain limitations. The toolbox does not directly support closed-chain systems such as parallel manipulators. Modeling such systems requires additional user implementation through virtual cuts and constraint forces.

Additionally, problems involving dynamically changing contact points present challenges. Scenarios where contact points change during simulation, such as a robot foot lifting off and landing at a different location, require sophisticated user programming to properly model the switching constraints and contact dynamics.

## License and Usage

SpaceDyn is distributed as freeware and is open-source for academic and research purposes. The toolbox is available at no cost for academic use, and researchers are encouraged to download and utilize it freely for academic research and educational activities.

However, any commercial use of the toolbox is expressly prohibited without explicit permission from the authors. Users who intend to modify and redistribute the toolbox must consult the original authors prior to distribution. Proper academic etiquette requires referencing SpaceDyn as the original work in any derived publications or software distributions.

Please note that the authors provide no warranty for the software and hold no responsibility for any damages resulting from the use of this toolbox.

## Citing SpaceDyn

If you use SpaceDyn in your academic work resulting in publication, please cite the relevant technical papers by Professor Kazuya Yoshida and his co-authors. The documentation provides a complete list of relevant publications that describe the theoretical foundations and applications of the toolbox. Proper citation ensures appropriate academic credit and helps support the continued development of the toolbox.

## Acknowledgments

SpaceDyn was developed through the collaborative efforts of researchers at Tohoku University's Space Robotics Laboratory, including Motoaki Shimizu, Tadashi Hiraoka, Koichi Fujishima, Akihide Kurosu, Kenichi Hashizume, and Kazuya Yoshida.

The project was directed by Professor Kazuya Yoshida of the Space Robotics Laboratory in the Department of Aeronautics and Space Engineering at Tohoku University, Japan. The laboratory continues to advance the field of space robotics through innovative research and tool development.
