# Gluon site.mk for Freifunk-Ostholstein
# Basic documentation at https://gluon.readthedocs.io/en/v2018.2.x/user/site.html

GLUON_FEATURES := \
	autoupdater \
	ebtables-filter-multicast \
	ebtables-filter-ra-dhcp \
	ebtables-limit-arp \
	mesh-batman-adv-15 \
	radvd \
	respondd \
	status-page \
	web-advanced \
	web-wizard \
	mesh-vpn-tunneldigger
	# mesh-vpn-fastd
	# alfred

GLUON_SITE_PACKAGES := \
	haveged \
	iwinfo \
	respondd-module-airtime

# Always call `make` from the command line with the desired release version!
# otherwise this is generated:
DEFAULT_GLUON_RELEASE := 0.10.2

# Allow overriding the release number from the command line
GLUON_RELEASE ?= $(DEFAULT_GLUON_RELEASE)

GLUON_PRIORITY ?= 0
GLUON_BRANCH ?= stable

GLUON_LANGS ?= en de
GLUON_REGION=eu

# Enable images for ath10k devices with 802.11s mode
GLUON_ATH10K_MESH=11s
