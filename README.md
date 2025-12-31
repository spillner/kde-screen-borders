# kde-screen-borders

Superimpose screen borders over the KDE desktop.  This enables tracking for Sinden light guns, among other uses.

This applet leverages Alex Pol Gonzalez' QtLayerShell component, which is a standard package on many Linux distributions.  It has been tested in KDE, but should work with any other QML-compliant window manager/compositor that can load QtLayerShell.

If you don't already have QtLayerShell, you can install it with the following commands:

  - Ubuntu/Debian: `sudo apt install layer-shell-qt`
  - Arch: `sudo pacman -S layer-shell-qt`
  - Fedora: `sudo dnf install layer-shell-qt`
  - Slackware: `sudo slackpkg layer-shell-qt`

If your distribution isn't listed above, or you want to inspect or customize QtLayerShell, the source is available at https://github.com/KDE/layer-shell-qt.

To use this module to custom desktop environments that don't support the standard QtLayerShell, you can implement your own adapter to the wlr-layer-shell protocol as described at https://drewdevault.com/2018/07/29/Wayland-shells.html.

## Usage

After installing QtLayerShell, simply run `qml screen-borders.qml` or `kqml screen-borders.qml` to launch the applet.  Border thickness and color can be customized at the top of the source file.  The file `double-borders.qml` offers a variation with two concentric borders of contrasting color.

Depending on your compositor version, the border might initially obscure part of your KDE Panel or other edge-anchored desktop widgets.  If that happens, enter your desktop Edit Mode (e.g. by right-clicking on the Panel and selecting "Show Panel configuration") while the screen-borders applet is running and simply shift those widgets to a different screen edge, then back to the original anchor position.  The compositor should respect the LayerShell.Window.exclusionZone property and adjust widget position accordingly.  Note that the wlr-layer-shell protocol does not require any specific implementation behavior for this property, so manual adjustment might be required for some compositors.


