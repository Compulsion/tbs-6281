pkgname=tbs-6281
pkgver=5.1.4
pkgrel=1
pkgdesc="TBS6281 Driver"
url="https://github.com/ljalves/linux_media/wiki"
arch=('i686' 'x86_64')
license=('GPL')
makedepends=('git' 'linux-headers')
conflicts=('ffdecsawrapper' 'tbs-linux-drivers' 'tbs-dvb-drivers')
provides=('tbs-dvb-drivers')
install='tbs-6281.install'

source=('dvb-demod-si2168-b40-01.fw'
	'dvb-tuner-si2158-a20-01.fw')

md5sums=('8dfc2483d90282bbb05817fbbc282376'
	 '0cba7ce61c1411cbe7f22c0746e24e33')

pkgver() {

	_kernel=`uname -r | sed -r 's/-/_/g'`
	echo "$pkgver"
}

package() {
	install -Dm0644 "$startdir"/dvb-demod-si2168-b40-01.fw "$pkgdir"/usr/lib/firmware/dvb-demod-si2168-b40-01.fw
	install -Dm0644 "$startdir"/dvb-tuner-si2158-a20-01.fw "$pkgdir"/usr/lib/firmware/dvb-tuner-si2158-a20-01.fw

	echo ""
	msg "Compressing modules, this will take awhile..."
	echo ""

	install -Dm644 "$startdir"/drivers/media/pci/saa716x/saa716x_core.ko "$pkgdir"/usr/lib/modules/extramodules-ARCH/saa716x_core.ko
	gzip "$pkgdir"/usr/lib/modules/extramodules-ARCH/saa716x_core.ko
	install -Dm644 "$startdir"/drivers/media/pci/saa716x/saa716x_budget.ko "$pkgdir"/usr/lib/modules/extramodules-ARCH/saa716x_budget.ko
	gzip "$pkgdir"/usr/lib/modules/extramodules-ARCH/saa716x_budget.ko
}
