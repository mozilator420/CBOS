# CBOS

CBOS is a gaming-first Linux desktop built for powerful modern PCs, beginning
with the Ryzen 7 9800X3D and RTX 5080. It derives from Bazzite's
`bazzite-nvidia-open` desktop image, preserving its tested NVIDIA driver,
kernel, Steam, Proton, Gamescope, GameMode, MangoHud, and controller stack.

## Design

- **Modern NVIDIA driver path:** the base image's open NVIDIA kernel-module
  variant, intended for Turing-generation and newer GPUs, including RTX cards.
- **Safe updates:** atomic system updates with rollback rather than independent
  driver installers.
- **Desktop gaming first:** KDE Plasma and Steam desktop mode. CBOS does not
  claim console-style handheld support for NVIDIA hardware.
- **CBOS Companion:** an optional, local-only assistant using Ollama and
  `llama3.2:3b`. It is installed as a first-run choice, uses the RTX GPU only
  while active, and must obtain approval before changing system settings.

## Build and release

GitHub Actions builds the signed container image as
`ghcr.io/mozilator420/cbos:latest`. The **Build disk images** workflow produces
an Anaconda installer ISO as a downloadable workflow artifact.

Before using the image on physical hardware:

1. Add a repository secret named `SIGNING_SECRET` containing a private cosign
   key; never commit that key.
2. Enable GitHub Actions for this repository and run **Build container image**.
3. When that succeeds, run **Build disk images** with the `amd64` platform.
4. Test the ISO on a spare drive before changing your main system.

The image build is intentionally minimal at this stage. It gives CBOS a sound,
maintainable NVIDIA foundation before branding and user-facing assistant work
are added.

