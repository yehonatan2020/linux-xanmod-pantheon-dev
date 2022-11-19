# Maintainer: DemonKiller
pkgname=alg-cala-config-xanmod
destname="/etc"
pkgver=22.07
pkgrel=4
pkgdesc="Calamares config for Arch Linux GUI Themed Editions"
arch=('any')
url="https://github.com/yehonatan2020"
license=('GPL3')
makedepends=('git')
depends=()
conflicts=()
provides=("${pkgname}")
options=(!strip !emptydirs)
source=(${pkgname}::"git+${url}/${pkgname}")
sha256sums=('SKIP')
package() {
	install -dm755 ${pkgdir}${destname}
	cp -r ${srcdir}/${pkgname}${destname}/* ${pkgdir}${destname}
    chmod 755 ${pkgdir}/etc/calamares/launch.sh
}
