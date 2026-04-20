pkgname=ember
pkgver=1.0.0
pkgrel=1
pkgdesc="A beautiful terminal emulator with ashen theme, built with pywebview"
arch=('x86_64')
url="https://github.com/yourusername/ember"
license=('MIT')
depends=('python' 'python-pywebview')
optdepends=()
source=()
sha256sums=()

build() {
  # Nothing to build, pure Python + HTML
  true
}

package() {
  # Install main executable
  install -Dm755 "${startdir}/ember" "$pkgdir/usr/bin/ember"
  
  # Install HTML/CSS/JS resources
  install -Dm644 "${startdir}/terminal.html" "$pkgdir/usr/share/ember/terminal.html"
  
  # Install desktop entry for launcher
  install -Dm644 "${startdir}/terminal.desktop" "$pkgdir/usr/share/applications/ember.desktop"
  
  # Install config example
  install -Dm644 "${startdir}/config.ini.example" "$pkgdir/usr/share/ember/config.ini.example"
  
  # Install license
  install -Dm644 "${startdir}/LICENSE" "$pkgdir/usr/share/licenses/$pkgname/LICENSE"
}
