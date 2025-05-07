# kde-screen-borders

Superimpose screen borders over the KDE desktop.  This enables tracking for Sinden light guns, among other uses.

This applet leverages Alex Pol Gonzalez' QtLayerShell component, available from https://github.com/KDE/layer-shell-qt.  It has been tested in KDE, but should work with any other QML-compliant window manager/compositor that can load the QtLayerShell component.

For other environments, it should be straightforward to implement your own adapter to the wlr-layer-shell protocol, which is described at https://drewdevault.com/2018/07/29/Wayland-shells.html.

## Usage

After installing QtLayerShell, simply run `kqml screen-borders.qml` to launch the applet.  Border thickness and color can be customized at the top of the source file.

Depending on your compositor version, the border might initially obscure part of your KDE Panel or other edge-anchored desktop widgets.  After the applet is running, enter your desktop Edit Mode (e.g. by right-clicking on the Panel and selecting "Show Panel configuration") and simply shift those widgets to a different screen edge, then back to the original anchor position.  The compositor should respect the LayerShell.Window.exclusionZone property and adjust widget position accordingly.  Note that the wlr-layer-shell protocol does not require any specific implementation behavior for this property, so manual adjustment might be required for some compositors.


