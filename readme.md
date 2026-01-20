# IHDCP Official Source Code

This repository provides the official implementation for the paper "IHDCP: Single Image Dehazing Using Inverted Haze Density Correction Prior". To protect intellectual property, the core implementation is distributed as MATLAB p-code (`.p` files).

## Requirements
- MATLAB R2021b or newer 
- Windows OS 

## Quick Start
1. Place input images in the `input_images/` folder.
2. Open MATLAB and run `demo.m`.
3. Dehazed results will be saved to the `output_images/` folder.

## Project Structure
- `demo.m`: Entry script that reads images from `input_images/` and writes results to `output_images/`.
- Core p-code files (runnable, source code hidden):
  - `Airlight.p`
  - `boxfilter.p`
  - `dehazing.p`
  - `guidedfilter.p`
  - `maxfilt2.p`
  - `vanherk.p`
- `input_images/`: Sample input images.
- `output_images/`: Dehazed results generated after running `demo.m`.

## Notes
- Do not rename or move `.p` files or change their relative paths; this may cause runtime errors.
- Batch processing is supported: place multiple images in `input_images/`, and `demo.m` will iterate and generate corresponding results.
- If you encounter MATLAB version compatibility issues, please try a newer MATLAB release.


For technical inquiries or licensing, please contact us at [lt3088919588@email.swu.edu.cn](mailto:lt3088919588@email.swu.edu.cn). The core algorithm is provided as p-code only to protect intellectual property.
