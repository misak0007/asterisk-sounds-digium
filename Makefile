#
# Copyright (C) 2025 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=asterisk-sounds-digium
PKG_VERSION:=1.0.1
PKG_RELEASE:=1
PKG_BUILD_PARALLEL:=0

PKG_BUILD_DIR:=$(BUILD_DIR)/asterisk-sounds-digium-$(PKG_VERSION)

PKG_LICENSE:=GPL-3.0
PKG_LICENSE_FILES:=COPYING LICENSE
PKG_MAINTAINER:=Michael Gruz <michael.gruz@gmail.com>

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/download.mk

define Package/asterisk-sounds-digium/Default
  SUBMENU:=Telephony
  SECTION:=net
  CATEGORY:=Network
  Conflicts:=asterisk-sound
endef

define Download/asterisk-sound
  URL:=https://downloads.asterisk.org/pub/telephony/sounds
  FILE:=asterisk-$(2)sounds-$(3)-current.tar.gz
  URL_FILE:=asterisk-$(2)sounds-$(3)-current.tar.gz
  HASH:=$(4)
  SUBDIR:=$(PKG_SOURCE_SUBDIR)
endef

define Download/asterisk-moh
  URL:=https://downloads.asterisk.org/pub/telephony/sounds
  FILE:=asterisk-moh-opsound-$(2)-current.tar.gz
  URL_FILE:=asterisk-moh-opsounds-$(2)-current.tar.gz
  HASH:=$(3)
  SUBDIR:=$(PKG_SOURCE_SUBDIR)
endef

ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-en-alaw-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-en-alaw-digium),)
$(eval $(call Download,asterisk-sound,core-,en-alaw,ff09b4c0512506bafc07a072a07bf08a316529469b63f0ebfd88f6f865faca60))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-en-g722-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-en-g722-digium),)
$(eval $(call Download,asterisk-sound,core-,en-g722,59891033e764d9dffc5ccdd78e845a1c8ea6bed0b434128bb0199c63ef591770))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-en-g729-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-en-g729-digium),)
$(eval $(call Download,asterisk-sound,core-,en-g729,306ec9f38de9859e3f750ecff1385187945021919ea936c02e890134a04bae33))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-en-gsm-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-en-gsm-digium),)
$(eval $(call Download,asterisk-sound,core-,en-gsm,d79c3d2044d41da8f363c447dfccc140be86b4fcc41b1ca5a60a80da52f24f2d))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-en-sln16-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-en-sln16-digium),)
$(eval $(call Download,asterisk-sound,core-,en-sln16,3d0b93d84cdc166777d12c5f802613c3617b03c8701335648a298d7c8cf12991))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-en-ulaw-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-en-ulaw-digium),)
$(eval $(call Download,asterisk-sound,core-,en-ulaw,83ec602fb1f2cb06a5194a95f855b84bae35d49d5bdb6fbd9274d5d1a5d16b0e))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-en-wav-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-en-wav-digium),)
$(eval $(call Download,asterisk-sound,core-,en-wav,07ad543764567ea235d3a96dcd15ecce4521855efc295de6f5443299c331ec0b))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-en-siren7-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-en-siren7-digium),)
$(eval $(call Download,asterisk-sound,core-,en-siren7,162ae882fc5f98936db21473f5470050ec06aaf432bc9da73af45cd7f54c34d8))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-en-siren14-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-en-siren14-digium),)
$(eval $(call Download,asterisk-sound,core-,en-siren14,4b54e3b03c916c6a9f16d0726a9ee3b635e272523ffd76111ba0c9fe178d1465))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-en_AU-alaw-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-en_AU-alaw-digium),)
$(eval $(call Download,asterisk-sound,core-,en_AU-alaw,df94e7a3bf36e0c07c11cb114a37c147c1b6644264678fd726ea37f9506acf22))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-en_AU-g722-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-en_AU-g722-digium),)
$(eval $(call Download,asterisk-sound,core-,en_AU-g722,41741fe59d5247ffe8f4aa22288987fd3b4b53149ee8f2055a7f3d9bade74471))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-en_AU-g729-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-en_AU-g729-digium),)
$(eval $(call Download,asterisk-sound,core-,en_AU-g729,e006dab334bc9385c9446402d2cd691d1243f8b0fe7b61324949a0ad140bb4ee))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-en_AU-gsm-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-en_AU-gsm-digium),)
$(eval $(call Download,asterisk-sound,core-,en_AU-gsm,3b4f363c9bd87dd023c668d16a868d11e896fdda38c921fadd5f45aaccda3554))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-en_AU-sln16-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-en_AU-sln16-digium),)
$(eval $(call Download,asterisk-sound,core-,en_AU-sln16,4a11986b715756570012187f841a0655667e1d70e43239f1e4915067e5bfceed))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-en_AU-ulaw-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-en_AU-ulaw-digium),)
$(eval $(call Download,asterisk-sound,core-,en_AU-ulaw,4eda9775a0e07410df70d94503444a831095bc9903fd9d83f24f849077b4fe45))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-en_AU-wav-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-en_AU-wav-digium),)
$(eval $(call Download,asterisk-sound,core-,en_AU-wav,869a201a2052e292395b7a37ef7c5ca3eadfe6cf6b9208a2650321d125e08f15))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-en_AU-siren7-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-en_AU-siren7-digium),)
$(eval $(call Download,asterisk-sound,core-,en_AU-siren7,d4003d2c610d1b012f12e890aaca5f502223d29025f9959d801bcb75b0575e5f))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-en_AU-siren14-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-en_AU-siren14-digium),)
$(eval $(call Download,asterisk-sound,core-,en_AU-siren14,8d62db98eb0b2fff70b6a7ee26a6135d961933724015f23fca220502a1616c03))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-en_GB-alaw-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-en_GB-alaw-digium),)
$(eval $(call Download,asterisk-sound,core-,en_GB-alaw,760c57e6add101602d8ebaacbd4cb6f494f75633ec2da3c592674a1a95c0be8d))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-en_GB-g722-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-en_GB-g722-digium),)
$(eval $(call Download,asterisk-sound,core-,en_GB-g722,f642e3e3d03863627da426a0cad7de05a5b52da36e7f80ca386d63655d9e6aa9))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-en_GB-g729-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-en_GB-g729-digium),)
$(eval $(call Download,asterisk-sound,core-,en_GB-g729,d48e55a35c8a53b608ad891ab88be9de1497cca172a7a559d2d88e8c1e9068fc))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-en_GB-gsm-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-en_GB-gsm-digium),)
$(eval $(call Download,asterisk-sound,core-,en_GB-gsm,b3cd277ad16e95cc7888810b02ccf3012bd44d3455dd5c94b7e8e172f9356f6d))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-en_GB-sln16-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-en_GB-sln16-digium),)
$(eval $(call Download,asterisk-sound,core-,en_GB-sln16,599d974df525f8ca17ff35e56ad8a7d66ea0dda4976af8453b7c3e06efc58761))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-en_GB-ulaw-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-en_GB-ulaw-digium),)
$(eval $(call Download,asterisk-sound,core-,en_GB-ulaw,610fd58ffdf1c6b264d460b9d23b68163e8e2edc74cda1b6bdba63d222ca0b29))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-en_GB-wav-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-en_GB-wav-digium),)
$(eval $(call Download,asterisk-sound,core-,en_GB-wav,0d1f341426283a26f8c02e891cc87c75e63598a519496cbaddacd8ae776e8773))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-en_GB-siren7-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-en_GB-siren7-digium),)
$(eval $(call Download,asterisk-sound,core-,en_GB-siren7,56a7055c60d2e07817f5d2a667d2d75424134001116f6c5ae41e00225207b244))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-en_GB-siren14-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-en_GB-siren14-digium),)
$(eval $(call Download,asterisk-sound,core-,en_GB-siren14,0fbb5137ba1640735caf498692d5ef7760ab0d4b7ff26ef20177f836cdb8a258))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-en_NZ-alaw-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-en_NZ-alaw-digium),)
$(eval $(call Download,asterisk-sound,core-,en_NZ-alaw,88f0b492fb62980ad5f1545a88b355656a295e6494e27949dcc5c3f55e69bc50))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-en_NZ-g722-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-en_NZ-g722-digium),)
$(eval $(call Download,asterisk-sound,core-,en_NZ-g722,f1db6114297ab7dcb9856fe37b1588f456270303f29ef58fdcce6f2425d26a16))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-en_NZ-g729-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-en_NZ-g729-digium),)
$(eval $(call Download,asterisk-sound,core-,en_NZ-g729,6d3f03b6a74d0b702ba2958cb547e469e4ee94213e438e6f03249ed9c1a34d21))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-en_NZ-gsm-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-en_NZ-gsm-digium),)
$(eval $(call Download,asterisk-sound,core-,en_NZ-gsm,401e4d8a6a3d49e173bbfa5fd75f4d26299f0f9cfde186fe4b31d7f4c79c530c))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-en_NZ-sln16-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-en_NZ-sln16-digium),)
$(eval $(call Download,asterisk-sound,core-,en_NZ-sln16,4eafa12c930b099e94b7b226608d7c545982cc9539c8144acf90aa39f863a0f3))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-en_NZ-ulaw-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-en_NZ-ulaw-digium),)
$(eval $(call Download,asterisk-sound,core-,en_NZ-ulaw,a5b7cd111a9151e3af0e1e562b3b298a0e982af432028915543da78a8dbe686f))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-en_NZ-wav-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-en_NZ-wav-digium),)
$(eval $(call Download,asterisk-sound,core-,en_NZ-wav,7f9e2fd7c385e867fc60f885722d01c8b5cb6e7db02f4800467ec6cc0dc8773f))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-en_NZ-siren7-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-en_NZ-siren7-digium),)
$(eval $(call Download,asterisk-sound,core-,en_NZ-siren7,bb12a569ac26d5f4474fd233c159b2870e9f593308d518bc601793acc771f977))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-en_NZ-siren14-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-en_NZ-siren14-digium),)
$(eval $(call Download,asterisk-sound,core-,en_NZ-siren14,646a72e108dfd0356b908877f7aaceafcdcdf84511970903cdb14c36d80ef413))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-es-alaw-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-es-alaw-digium),)
$(eval $(call Download,asterisk-sound,core-,es-alaw,e21319d9a1a19f1552a05a3826dfed6456deaafc2fc1f0e5df9d7b7413a8092a))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-es-g722-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-es-g722-digium),)
$(eval $(call Download,asterisk-sound,core-,es-g722,3c474f73cc4f65478b3cf05ab0c5da19c8ce408699f61491f6aafba450cb540a))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-es-g729-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-es-g729-digium),)
$(eval $(call Download,asterisk-sound,core-,es-g729,e28b3fd6d00a697a6a115b6c360f204e5459b1fa7b1ac862f5eba5464d396c48))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-es-gsm-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-es-gsm-digium),)
$(eval $(call Download,asterisk-sound,core-,es-gsm,552e80985f6c3419a16362d9a5ae9a52351efc8f9ee251b37db6a61d36e39dfc))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-es-sln16-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-es-sln16-digium),)
$(eval $(call Download,asterisk-sound,core-,es-sln16,b0064864c2ca7c6e9b57debf9b9ceee7882dfb24d1b4cee7d693130a2c15d8b8))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-es-ulaw-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-es-ulaw-digium),)
$(eval $(call Download,asterisk-sound,core-,es-ulaw,e457d1046efe7c259b7f2aefcb709d15df1cfefba566818e7ce42d502fecaf82))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-es-wav-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-es-wav-digium),)
$(eval $(call Download,asterisk-sound,core-,es-wav,4486234639392254da452f03d835e89c37416367b11cc8c76bc8492151ac4ebe))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-es-siren7-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-es-siren7-digium),)
$(eval $(call Download,asterisk-sound,core-,es-siren7,549333050ac7ec71ab9a813ea011cc73e316001f1c7843100fde82759e84becf))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-es-siren14-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-es-siren14-digium),)
$(eval $(call Download,asterisk-sound,core-,es-siren14,d84bb2df6f02f7a96ee2e947cd92b6cbb999ab87e34ab8dc44eb47454b29fd5f))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-fr-alaw-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-fr-alaw-digium),)
$(eval $(call Download,asterisk-sound,core-,fr-alaw,5e63ef6c9baf5ba0fd62e83619df2f4148f3b88ef01055c15a9995cd525e19ae))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-fr-g722-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-fr-g722-digium),)
$(eval $(call Download,asterisk-sound,core-,fr-g722,7ff3ca96bbb295a6458e6eb1ff92690d9a5d0db0b4ddfa2c488237e4d251efbe))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-fr-g729-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-fr-g729-digium),)
$(eval $(call Download,asterisk-sound,core-,fr-g729,737fd4e25b87535b789a0ca8f2afa261af63ba8b92253ca5c956f900a877251a))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-fr-gsm-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-fr-gsm-digium),)
$(eval $(call Download,asterisk-sound,core-,fr-gsm,b8d25c13e831d9fb02d538d0eebb42c58e892f69ebacafe6b68a7b1c992e3112))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-fr-sln16-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-fr-sln16-digium),)
$(eval $(call Download,asterisk-sound,core-,fr-sln16,10cc01327151efc7a3517d9ff2e821aaea865b3595abde69703f668b28bd3dff))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-fr-ulaw-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-fr-ulaw-digium),)
$(eval $(call Download,asterisk-sound,core-,fr-ulaw,346a1fc66578b9ab771784956703d5e9e1b18fa0375862a27e7f8225a9b4f5e8))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-fr-wav-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-fr-wav-digium),)
$(eval $(call Download,asterisk-sound,core-,fr-wav,43a5d591dc3e70c2e2c0b4c41b21980efb4de4c949172ffddb03a7ae5819f8ed))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-fr-siren7-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-fr-siren7-digium),)
$(eval $(call Download,asterisk-sound,core-,fr-siren7,edae6804cf4a7e993c7ae294653d216bb10d7928b3cdaa468714b27eef552934))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-fr-siren14-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-fr-siren14-digium),)
$(eval $(call Download,asterisk-sound,core-,fr-siren14,f4635c4e0ab92d59b60fe7ad9f91db275d958266c53389c0300866b314afc1e8))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-it-alaw-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-it-alaw-digium),)
$(eval $(call Download,asterisk-sound,core-,it-alaw,ea75fb7c243a973acf26da4b9baed9a92625ddc15b884eb1d3ed7018636fea26))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-it-g722-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-it-g722-digium),)
$(eval $(call Download,asterisk-sound,core-,it-g722,44a7fd7b067ff7f71df7fec31f9a8c960e13d35ca30c31878913c4020bfc00b6))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-it-g729-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-it-g729-digium),)
$(eval $(call Download,asterisk-sound,core-,it-g729,c890ac145aa42ef1e3e6777710bb6591ccfc2c447ea33483a4eccb4615415014))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-it-gsm-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-it-gsm-digium),)
$(eval $(call Download,asterisk-sound,core-,it-gsm,92f960667c49fff78c5e9e6d5e33fa0ebd019961bdfe7c1936039151245bb037))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-it-sln16-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-it-sln16-digium),)
$(eval $(call Download,asterisk-sound,core-,it-sln16,08e95f14adb4c925cf2b3360ce2f3047c1af287c643c0f46ec88636fa66bfedc))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-it-ulaw-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-it-ulaw-digium),)
$(eval $(call Download,asterisk-sound,core-,it-ulaw,35d721cc70541ec98655870bd7f6b4bb987b8f5a467d8029bdbebfc8819207b8))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-it-wav-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-it-wav-digium),)
$(eval $(call Download,asterisk-sound,core-,it-wav,5dd007716a64f9599e47a9ce51ec6decb93221846d2d5b694120ae85f891ed13))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-it-siren7-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-it-siren7-digium),)
$(eval $(call Download,asterisk-sound,core-,it-siren7,aee5209de5ae79ab3c9f9e79cffc47ec1cc7d980e9e937cbe8f2a47579b83bf1))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-it-siren14-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-it-siren14-digium),)
$(eval $(call Download,asterisk-sound,core-,it-siren14,e12d983d7c9e8d462b906d8f2a48661d07028ca0535188b9104d2d224534a20e))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-ja-alaw-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-ja-alaw-digium),)
$(eval $(call Download,asterisk-sound,core-,ja-alaw,cc4bfc94e74e7b50480e58a1a9b47b55d9770d0abf53e60b59fd96238c9ce0a8))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-ja-g722-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-ja-g722-digium),)
$(eval $(call Download,asterisk-sound,core-,ja-g722,d8d90c5d8ea511cd981948c052c0e8fb5347e7cadf32d8c6a9ff1eaf09aa1d28))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-ja-g729-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-ja-g729-digium),)
$(eval $(call Download,asterisk-sound,core-,ja-g729,3f2289ff02c68873b6e712078a583e53a83636d08e3a981eec8d689fa4edc453))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-ja-gsm-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-ja-gsm-digium),)
$(eval $(call Download,asterisk-sound,core-,ja-gsm,d4a355fff204d6b59ca9c893bac73260ddd3f0aa510fc32677272c453a6420a0))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-ja-sln16-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-ja-sln16-digium),)
$(eval $(call Download,asterisk-sound,core-,ja-sln16,638c3166aed569da6974481f0c2237ca39266a7e1d8244869fc187e53af0a159))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-ja-ulaw-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-ja-ulaw-digium),)
$(eval $(call Download,asterisk-sound,core-,ja-ulaw,8b418608ce935df77b5c5784aea5a751673ff1a5ae608c690928a524532f0207))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-ja-wav-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-ja-wav-digium),)
$(eval $(call Download,asterisk-sound,core-,ja-wav,f7bd2b21d72e3538f0f5d7331dbd3dbd56a9cdb339a789daabe689f5a33e484f))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-ja-siren7-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-ja-siren7-digium),)
$(eval $(call Download,asterisk-sound,core-,ja-siren7,966c170877a68ec6dc3b3fe9582a89efd5a667de91fbd548009f90a27c370970))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-ja-siren14-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-ja-siren14-digium),)
$(eval $(call Download,asterisk-sound,core-,ja-siren14,1eeef00c6a5fc65f4626906246a0cc3245ca3601a63e1cf23eeb7c44a2c77c9a))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-ru-alaw-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-ru-alaw-digium),)
$(eval $(call Download,asterisk-sound,core-,ru-alaw,9077f6a35da0bd9d761cd55f4dda551bcd7b84692ed682876006a128db582919))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-ru-g722-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-ru-g722-digium),)
$(eval $(call Download,asterisk-sound,core-,ru-g722,fde2a071b811a081219138693d6813d122d91c2c3423936274b110b97645b61b))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-ru-g729-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-ru-g729-digium),)
$(eval $(call Download,asterisk-sound,core-,ru-g729,c5c987eef609969db839338b7ae3ebfd84ad7800b165caccbf0bf32595f9a7bb))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-ru-gsm-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-ru-gsm-digium),)
$(eval $(call Download,asterisk-sound,core-,ru-gsm,04ec077e8dd7fe56533d5d9c180c90200b3f9eff47f2725be888d738c1bc22d2))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-ru-sln16-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-ru-sln16-digium),)
$(eval $(call Download,asterisk-sound,core-,ru-sln16,7e2c31919e4a4d08ca7858e8db910ed3a92006750f2586635c04671080980108))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-ru-ulaw-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-ru-ulaw-digium),)
$(eval $(call Download,asterisk-sound,core-,ru-ulaw,f655e1214767b4e39fc9eac822f16ad4642f32f65e9bf52edb5c2cdb8118b98f))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-ru-wav-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-ru-wav-digium),)
$(eval $(call Download,asterisk-sound,core-,ru-wav,db52d0a1828f6ee0c211f5c30fa5b8e35753e3bcff3d9ec6fa3e1cdc833954bf))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-ru-siren7-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-ru-siren7-digium),)
$(eval $(call Download,asterisk-sound,core-,ru-siren7,4102c1730347977054785cb1eab8d19e99c6428d7d171172dfc374f303b2f843))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-ru-siren14-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-ru-siren14-digium),)
$(eval $(call Download,asterisk-sound,core-,ru-siren14,4c65be6e8948dfb77b5e42fd5efb01fa5db1d9e12153b89e1b675ff430f60b71))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-sv-alaw-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-sv-alaw-digium),)
$(eval $(call Download,asterisk-sound,core-,sv-alaw,8e371b0bad78953e5a37759a052f892085da4a6c8ab9d12910c7e7339804f2ae))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-sv-g722-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-sv-g722-digium),)
$(eval $(call Download,asterisk-sound,core-,sv-g722,cfcd30e9f23f34efa3b98d36d5bba439e8aa7e77231f9cb402008df05a856cea))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-sv-g729-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-sv-g729-digium),)
$(eval $(call Download,asterisk-sound,core-,sv-g729,964a8a6c81b132f22b9da159f5e2c22fdfd93adadc2013b4ca8df63060d4589d))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-sv-gsm-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-sv-gsm-digium),)
$(eval $(call Download,asterisk-sound,core-,sv-gsm,42e8b7afc29151b74d86a22e7882628e6945bebcdead0fc7162202267a178bf0))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-sv-sln16-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-sv-sln16-digium),)
$(eval $(call Download,asterisk-sound,core-,sv-sln16,2f1048ab311202fe09df235299554d2faa70d8ee59561346827c336ef33f046c))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-sv-ulaw-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-sv-ulaw-digium),)
$(eval $(call Download,asterisk-sound,core-,sv-ulaw,2c00f3682b575f8b3e76a5c1270d3eaf4442ee391caeeda0b5754c94d22290a3))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-sv-wav-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-sv-wav-digium),)
$(eval $(call Download,asterisk-sound,core-,sv-wav,1c93397bc60d2ef866dc20ce516af892bca5d9641c8017f9acbf759c6958776d))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-sv-siren7-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-sv-siren7-digium),)
$(eval $(call Download,asterisk-sound,core-,sv-siren7,17dca190289a92b705b6e1701b10408b93612953fbb220fb94e8b79ad3588363))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-sv-siren14-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-sv-siren14-digium),)
$(eval $(call Download,asterisk-sound,core-,sv-siren14,ac9d4f96423b523328fc8cd875f7d24512412df17f6a138e67e2dd0684818742))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-extra-sounds-en-alaw-digium),)
$(eval $(call Download,asterisk-sound,extra-,en-alaw,ae807a9d4148d85a894d6bb4b9deb43c6bccf18e7a1b344d0f9dce58f9ab363f))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-extra-sounds-en-g722-digium),)
$(eval $(call Download,asterisk-sound,extra-,en-g722,b004f2c427c83088fc455cacf74c17a871e514ed22558f5b9c9c09876b05bb4b))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-extra-sounds-en-g729-digium),)
$(eval $(call Download,asterisk-sound,extra-,en-g729,22d9cba447924c4d04b097eb19edcadbd6aba522cbd55dcd80dcff59585b983f))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-extra-sounds-en-gsm-digium),)
$(eval $(call Download,asterisk-sound,extra-,en-gsm,a872eb41868a75b8b4ea677d46f2659870c7190037e1d97853b4b060e60e9d7c))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-extra-sounds-en-sln16-digium),)
$(eval $(call Download,asterisk-sound,extra-,en-sln16,d0dec22b0db14b0569e0f04b4f5f9f66c44c3aaa23fb542881e903e562aa1192))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-extra-sounds-en-ulaw-digium),)
$(eval $(call Download,asterisk-sound,extra-,en-ulaw,1eb9756ff853bd0dd625cb6f9367fc6b9c371cabf3f224e0f68ca3673e150b0e))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-extra-sounds-en-wav-digium),)
$(eval $(call Download,asterisk-sound,extra-,en-wav,8505428482c4fd0790927a9ef63ade0cefdaf95a769575443a7a0a1ce568b2a3))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-extra-sounds-en-siren7-digium),)
$(eval $(call Download,asterisk-sound,extra-,en-siren7,c7816bfbe2130430f4e666ebcdbc99bd2ee9413f0e851a75342f458c91c577a7))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-extra-sounds-en-siren14-digium),)
$(eval $(call Download,asterisk-sound,extra-,en-siren14,2b9fb3c502a61d0757fcf202c656b8e09bedb93c19c615264971e551cd752931))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-extra-sounds-en_GB-alaw-digium),)
$(eval $(call Download,asterisk-sound,extra-,en_GB-alaw,fd228bb491c17a71a927938027b870a870bd54830e7ddf2e1dd68841c76156a7))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-extra-sounds-en_GB-g722-digium),)
$(eval $(call Download,asterisk-sound,extra-,en_GB-g722,966d17b27b5d71da865b09fb06a5beb8ce2dd326c3a13e51d145f42fea9e87c5))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-extra-sounds-en_GB-g729-digium),)
$(eval $(call Download,asterisk-sound,extra-,en_GB-g729,8729c5ac2aa1bdba63839734de16930fb8187a9eca0e810a74d5b73ac4cbc9b3))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-extra-sounds-en_GB-gsm-digium),)
$(eval $(call Download,asterisk-sound,extra-,en_GB-gsm,e67df77f1a0d58f4f2210da36021b7c1b5726a712176fbbe2e995f418e03fe97))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-extra-sounds-en_GB-sln16-digium),)
$(eval $(call Download,asterisk-sound,extra-,en_GB-sln16,5fa236851f707725dc5e2343b0057c504e02dcb25dde602b14b9b9e3ae4684ad))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-extra-sounds-en_GB-ulaw-digium),)
$(eval $(call Download,asterisk-sound,extra-,en_GB-ulaw,e88fe1de8e68c1122d5a4e99c2000def9f1f30f8b9e9bc13450038ed8dd0e4ba))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-extra-sounds-en_GB-wav-digium),)
$(eval $(call Download,asterisk-sound,extra-,en_GB-wav,21dfcbadffefcbd48980dbf873cdba23fb348843a018aabe3c09d6daaa15e64d))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-extra-sounds-en_GB-siren7-digium),)
$(eval $(call Download,asterisk-sound,extra-,en_GB-siren7,5c37dd1b37a6fea73ab20b93e4dfb3aeccf4591349330d75d5c6aa033e8593f0))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-extra-sounds-en_GB-siren14-digium),)
$(eval $(call Download,asterisk-sound,extra-,en_GB-siren14,2da29ae0045a0b27022b39b420626466ac683f3aab0704ee95fd5f7b72ff1c4e))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-extra-sounds-fr-alaw-digium),)
$(eval $(call Download,asterisk-sound,extra-,fr-alaw,cdeabe043eab833de980772c267ea18524131362312e356c008234350f924c80))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-extra-sounds-fr-g722-digium),)
$(eval $(call Download,asterisk-sound,extra-,fr-g722,7d3657866ae03443ee334ed936cd6e67195342982678dee2c8792f2beb8e8ef5))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-extra-sounds-fr-g729-digium),)
$(eval $(call Download,asterisk-sound,extra-,fr-g729,71893b0539b09f80c2d014843d066f57da12dbe37e6dbf86bc58b71c7952b142))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-extra-sounds-fr-gsm-digium),)
$(eval $(call Download,asterisk-sound,extra-,fr-gsm,a20c5abd5e302685302ce33138539447f7cf7df54b1068ea1f1af72c52e024f5))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-extra-sounds-fr-sln16-digium),)
$(eval $(call Download,asterisk-sound,extra-,fr-sln16,3ed78afdec3fb2e1b12f41c4af4e0a36798a727a1da0467d1a436838cf200863))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-extra-sounds-fr-ulaw-digium),)
$(eval $(call Download,asterisk-sound,extra-,fr-ulaw,a3adbd2b5682c6cf43bf1a827bc5134ae554265eb8f98a7793bcd77e91b3070e))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-extra-sounds-fr-wav-digium),)
$(eval $(call Download,asterisk-sound,extra-,fr-wav,a742bef8258eff0212d1843c4bb717a7d8bbef17b1360244595a71581da03e7b))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-extra-sounds-fr-siren7-digium),)
$(eval $(call Download,asterisk-sound,extra-,fr-siren7,51dc8a1a077590bc010a15f46a748d0c6c2a999f19a16542ec4295746bc89780))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-extra-sounds-fr-siren14-digium),)
$(eval $(call Download,asterisk-sound,extra-,fr-siren14,7b0f2085573cb683c1e3694a4216e5da9a1a567f2ab09312f7e5079f5ce683b4))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-moh-opsounds-alaw-digium),)
$(eval $(call Download,asterisk-moh,alaw,8b6d63486fd58fd535eaed394f9bd32ecdf6e650975aaa258941f423c8150b81))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-moh-opsounds-g722-digium),)
$(eval $(call Download,asterisk-moh,g722,05d206cebfb3433e1bd7fddcf8886cc043e1b21b42ba80a762302e5cf90377ad))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-moh-opsounds-g729-digium),)
$(eval $(call Download,asterisk-moh,g729,0147ca9a97f0c550227aacb7793499057c4d2c64e021c95f93722f27d5549585))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-moh-opsounds-gsm-digium),)
$(eval $(call Download,asterisk-moh,gsm,b0fb7b52b05094a3d5298c965e98717f9907d65a9ec47604ac05d8b06a96e940))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-moh-opsounds-sln16-digium),)
$(eval $(call Download,asterisk-moh,sln16,30a47e80f182c8ee860354924c2d2ee687f936a2858b8a6a209ba97b86c88eaf))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-moh-opsounds-ulaw-digium),)
$(eval $(call Download,asterisk-moh,ulaw,95b163d7f931d58864aba2cfe32156accca7af782c850fb867a85ce88c02573c))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-moh-opsounds-wav-digium),)
$(eval $(call Download,asterisk-moh,wav,449fb810d16502c3052fedf02f7e77b36206ac5a145f3dacf4177843a2fcb538))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-moh-opsounds-siren7-digium),)
$(eval $(call Download,asterisk-moh,siren7,b3abaf1334162e15a9cb2a57289377323d70348afac653577792560b0ee290f2))
endif
ifneq ($(CONFIG_PACKAGE_asterisk-moh-opsounds-siren14-digium),)
$(eval $(call Download,asterisk-moh,siren14,521cf5dbde700b2ab14cc9b78093a38104de96914179f0be846fe1d004f67f72))
endif

define Build/Prepare
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/core-en
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-en-alaw-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-en-alaw-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/core-en
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/core-en -xzf $(DL_DIR)/asterisk-core-sounds-en-alaw-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-en-g722-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-en-g722-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/core-en
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/core-en -xzf $(DL_DIR)/asterisk-core-sounds-en-g722-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-en-g729-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-en-g729-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/core-en
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/core-en -xzf $(DL_DIR)/asterisk-core-sounds-en-g729-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-en-gsm-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-en-gsm-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/core-en
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/core-en -xzf $(DL_DIR)/asterisk-core-sounds-en-gsm-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-en-sln16-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-en-sln16-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/core-en
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/core-en -xzf $(DL_DIR)/asterisk-core-sounds-en-sln16-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-en-ulaw-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-en-ulaw-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/core-en
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/core-en -xzf $(DL_DIR)/asterisk-core-sounds-en-ulaw-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-en-wav-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-en-wav-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/core-en
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/core-en -xzf $(DL_DIR)/asterisk-core-sounds-en-wav-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-en-siren7-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-en-siren7-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/core-en
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/core-en -xzf $(DL_DIR)/asterisk-core-sounds-en-siren7-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-en-siren14-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-en-siren14-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/core-en
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/core-en -xzf $(DL_DIR)/asterisk-core-sounds-en-siren14-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-en_AU-alaw-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-en_AU-alaw-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/core-en_AU
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/core-en_AU -xzf $(DL_DIR)/asterisk-core-sounds-en_AU-alaw-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-en_AU-g722-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-en_AU-g722-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/core-en_AU
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/core-en_AU -xzf $(DL_DIR)/asterisk-core-sounds-en_AU-g722-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-en_AU-g729-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-en_AU-g729-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/core-en_AU
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/core-en_AU -xzf $(DL_DIR)/asterisk-core-sounds-en_AU-g729-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-en_AU-gsm-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-en_AU-gsm-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/core-en_AU
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/core-en_AU -xzf $(DL_DIR)/asterisk-core-sounds-en_AU-gsm-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-en_AU-sln16-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-en_AU-sln16-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/core-en_AU
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/core-en_AU -xzf $(DL_DIR)/asterisk-core-sounds-en_AU-sln16-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-en_AU-ulaw-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-en_AU-ulaw-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/core-en_AU
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/core-en_AU -xzf $(DL_DIR)/asterisk-core-sounds-en_AU-ulaw-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-en_AU-wav-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-en_AU-wav-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/core-en_AU
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/core-en_AU -xzf $(DL_DIR)/asterisk-core-sounds-en_AU-wav-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-en_AU-siren7-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-en_AU-siren7-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/core-en_AU
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/core-en_AU -xzf $(DL_DIR)/asterisk-core-sounds-en_AU-siren7-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-en_AU-siren14-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-en_AU-siren14-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/core-en_AU
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/core-en_AU -xzf $(DL_DIR)/asterisk-core-sounds-en_AU-siren14-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-en_GB-alaw-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-en_GB-alaw-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/core-en_GB
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/core-en_GB -xzf $(DL_DIR)/asterisk-core-sounds-en_GB-alaw-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-en_GB-g722-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-en_GB-g722-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/core-en_GB
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/core-en_GB -xzf $(DL_DIR)/asterisk-core-sounds-en_GB-g722-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-en_GB-g729-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-en_GB-g729-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/core-en_GB
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/core-en_GB -xzf $(DL_DIR)/asterisk-core-sounds-en_GB-g729-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-en_GB-gsm-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-en_GB-gsm-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/core-en_GB
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/core-en_GB -xzf $(DL_DIR)/asterisk-core-sounds-en_GB-gsm-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-en_GB-sln16-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-en_GB-sln16-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/core-en_GB
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/core-en_GB -xzf $(DL_DIR)/asterisk-core-sounds-en_GB-sln16-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-en_GB-ulaw-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-en_GB-ulaw-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/core-en_GB
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/core-en_GB -xzf $(DL_DIR)/asterisk-core-sounds-en_GB-ulaw-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-en_GB-wav-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-en_GB-wav-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/core-en_GB
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/core-en_GB -xzf $(DL_DIR)/asterisk-core-sounds-en_GB-wav-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-en_GB-siren7-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-en_GB-siren7-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/core-en_GB
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/core-en_GB -xzf $(DL_DIR)/asterisk-core-sounds-en_GB-siren7-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-en_GB-siren14-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-en_GB-siren14-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/core-en_GB
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/core-en_GB -xzf $(DL_DIR)/asterisk-core-sounds-en_GB-siren14-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-en_NZ-alaw-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-en_NZ-alaw-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/core-en_NZ
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/core-en_NZ -xzf $(DL_DIR)/asterisk-core-sounds-en_NZ-alaw-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-en_NZ-g722-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-en_NZ-g722-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/core-en_NZ
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/core-en_NZ -xzf $(DL_DIR)/asterisk-core-sounds-en_NZ-g722-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-en_NZ-g729-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-en_NZ-g729-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/core-en_NZ
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/core-en_NZ -xzf $(DL_DIR)/asterisk-core-sounds-en_NZ-g729-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-en_NZ-gsm-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-en_NZ-gsm-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/core-en_NZ
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/core-en_NZ -xzf $(DL_DIR)/asterisk-core-sounds-en_NZ-gsm-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-en_NZ-sln16-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-en_NZ-sln16-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/core-en_NZ
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/core-en_NZ -xzf $(DL_DIR)/asterisk-core-sounds-en_NZ-sln16-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-en_NZ-ulaw-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-en_NZ-ulaw-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/core-en_NZ
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/core-en_NZ -xzf $(DL_DIR)/asterisk-core-sounds-en_NZ-ulaw-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-en_NZ-wav-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-en_NZ-wav-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/core-en_NZ
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/core-en_NZ -xzf $(DL_DIR)/asterisk-core-sounds-en_NZ-wav-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-en_NZ-siren7-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-en_NZ-siren7-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/core-en_NZ
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/core-en_NZ -xzf $(DL_DIR)/asterisk-core-sounds-en_NZ-siren7-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-en_NZ-siren14-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-en_NZ-siren14-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/core-en_NZ
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/core-en_NZ -xzf $(DL_DIR)/asterisk-core-sounds-en_NZ-siren14-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-es-alaw-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-es-alaw-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/core-es
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/core-es -xzf $(DL_DIR)/asterisk-core-sounds-es-alaw-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-es-g722-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-es-g722-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/core-es
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/core-es -xzf $(DL_DIR)/asterisk-core-sounds-es-g722-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-es-g729-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-es-g729-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/core-es
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/core-es -xzf $(DL_DIR)/asterisk-core-sounds-es-g729-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-es-gsm-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-es-gsm-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/core-es
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/core-es -xzf $(DL_DIR)/asterisk-core-sounds-es-gsm-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-es-sln16-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-es-sln16-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/core-es
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/core-es -xzf $(DL_DIR)/asterisk-core-sounds-es-sln16-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-es-ulaw-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-es-ulaw-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/core-es
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/core-es -xzf $(DL_DIR)/asterisk-core-sounds-es-ulaw-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-es-wav-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-es-wav-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/core-es
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/core-es -xzf $(DL_DIR)/asterisk-core-sounds-es-wav-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-es-siren7-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-es-siren7-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/core-es
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/core-es -xzf $(DL_DIR)/asterisk-core-sounds-es-siren7-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-es-siren14-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-es-siren14-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/core-es
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/core-es -xzf $(DL_DIR)/asterisk-core-sounds-es-siren14-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-fr-alaw-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-fr-alaw-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/core-fr
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/core-fr -xzf $(DL_DIR)/asterisk-core-sounds-fr-alaw-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-fr-g722-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-fr-g722-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/core-fr
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/core-fr -xzf $(DL_DIR)/asterisk-core-sounds-fr-g722-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-fr-g729-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-fr-g729-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/core-fr
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/core-fr -xzf $(DL_DIR)/asterisk-core-sounds-fr-g729-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-fr-gsm-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-fr-gsm-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/core-fr
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/core-fr -xzf $(DL_DIR)/asterisk-core-sounds-fr-gsm-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-fr-sln16-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-fr-sln16-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/core-fr
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/core-fr -xzf $(DL_DIR)/asterisk-core-sounds-fr-sln16-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-fr-ulaw-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-fr-ulaw-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/core-fr
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/core-fr -xzf $(DL_DIR)/asterisk-core-sounds-fr-ulaw-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-fr-wav-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-fr-wav-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/core-fr
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/core-fr -xzf $(DL_DIR)/asterisk-core-sounds-fr-wav-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-fr-siren7-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-fr-siren7-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/core-fr
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/core-fr -xzf $(DL_DIR)/asterisk-core-sounds-fr-siren7-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-fr-siren14-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-fr-siren14-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/core-fr
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/core-fr -xzf $(DL_DIR)/asterisk-core-sounds-fr-siren14-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-it-alaw-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-it-alaw-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/core-it
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/core-it -xzf $(DL_DIR)/asterisk-core-sounds-it-alaw-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-it-g722-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-it-g722-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/core-it
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/core-it -xzf $(DL_DIR)/asterisk-core-sounds-it-g722-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-it-g729-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-it-g729-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/core-it
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/core-it -xzf $(DL_DIR)/asterisk-core-sounds-it-g729-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-it-gsm-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-it-gsm-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/core-it
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/core-it -xzf $(DL_DIR)/asterisk-core-sounds-it-gsm-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-it-sln16-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-it-sln16-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/core-it
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/core-it -xzf $(DL_DIR)/asterisk-core-sounds-it-sln16-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-it-ulaw-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-it-ulaw-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/core-it
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/core-it -xzf $(DL_DIR)/asterisk-core-sounds-it-ulaw-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-it-wav-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-it-wav-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/core-it
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/core-it -xzf $(DL_DIR)/asterisk-core-sounds-it-wav-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-it-siren7-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-it-siren7-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/core-it
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/core-it -xzf $(DL_DIR)/asterisk-core-sounds-it-siren7-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-it-siren14-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-it-siren14-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/core-it
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/core-it -xzf $(DL_DIR)/asterisk-core-sounds-it-siren14-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-ja-alaw-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-ja-alaw-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/core-ja
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/core-ja -xzf $(DL_DIR)/asterisk-core-sounds-ja-alaw-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-ja-g722-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-ja-g722-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/core-ja
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/core-ja -xzf $(DL_DIR)/asterisk-core-sounds-ja-g722-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-ja-g729-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-ja-g729-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/core-ja
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/core-ja -xzf $(DL_DIR)/asterisk-core-sounds-ja-g729-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-ja-gsm-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-ja-gsm-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/core-ja
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/core-ja -xzf $(DL_DIR)/asterisk-core-sounds-ja-gsm-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-ja-sln16-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-ja-sln16-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/core-ja
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/core-ja -xzf $(DL_DIR)/asterisk-core-sounds-ja-sln16-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-ja-ulaw-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-ja-ulaw-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/core-ja
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/core-ja -xzf $(DL_DIR)/asterisk-core-sounds-ja-ulaw-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-ja-wav-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-ja-wav-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/core-ja
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/core-ja -xzf $(DL_DIR)/asterisk-core-sounds-ja-wav-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-ja-siren7-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-ja-siren7-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/core-ja
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/core-ja -xzf $(DL_DIR)/asterisk-core-sounds-ja-siren7-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-ja-siren14-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-ja-siren14-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/core-ja
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/core-ja -xzf $(DL_DIR)/asterisk-core-sounds-ja-siren14-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-ru-alaw-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-ru-alaw-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/core-ru
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/core-ru -xzf $(DL_DIR)/asterisk-core-sounds-ru-alaw-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-ru-g722-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-ru-g722-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/core-ru
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/core-ru -xzf $(DL_DIR)/asterisk-core-sounds-ru-g722-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-ru-g729-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-ru-g729-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/core-ru
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/core-ru -xzf $(DL_DIR)/asterisk-core-sounds-ru-g729-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-ru-gsm-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-ru-gsm-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/core-ru
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/core-ru -xzf $(DL_DIR)/asterisk-core-sounds-ru-gsm-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-ru-sln16-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-ru-sln16-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/core-ru
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/core-ru -xzf $(DL_DIR)/asterisk-core-sounds-ru-sln16-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-ru-ulaw-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-ru-ulaw-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/core-ru
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/core-ru -xzf $(DL_DIR)/asterisk-core-sounds-ru-ulaw-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-ru-wav-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-ru-wav-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/core-ru
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/core-ru -xzf $(DL_DIR)/asterisk-core-sounds-ru-wav-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-ru-siren7-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-ru-siren7-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/core-ru
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/core-ru -xzf $(DL_DIR)/asterisk-core-sounds-ru-siren7-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-ru-siren14-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-ru-siren14-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/core-ru
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/core-ru -xzf $(DL_DIR)/asterisk-core-sounds-ru-siren14-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-sv-alaw-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-sv-alaw-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/core-sv
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/core-sv -xzf $(DL_DIR)/asterisk-core-sounds-sv-alaw-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-sv-g722-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-sv-g722-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/core-sv
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/core-sv -xzf $(DL_DIR)/asterisk-core-sounds-sv-g722-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-sv-g729-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-sv-g729-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/core-sv
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/core-sv -xzf $(DL_DIR)/asterisk-core-sounds-sv-g729-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-sv-gsm-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-sv-gsm-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/core-sv
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/core-sv -xzf $(DL_DIR)/asterisk-core-sounds-sv-gsm-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-sv-sln16-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-sv-sln16-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/core-sv
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/core-sv -xzf $(DL_DIR)/asterisk-core-sounds-sv-sln16-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-sv-ulaw-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-sv-ulaw-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/core-sv
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/core-sv -xzf $(DL_DIR)/asterisk-core-sounds-sv-ulaw-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-sv-wav-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-sv-wav-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/core-sv
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/core-sv -xzf $(DL_DIR)/asterisk-core-sounds-sv-wav-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-sv-siren7-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-sv-siren7-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/core-sv
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/core-sv -xzf $(DL_DIR)/asterisk-core-sounds-sv-siren7-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-core-sounds-sv-siren14-digium)$(CONFIG_PACKAGE_asterisk-core-sounds-voicemail-sv-siren14-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/core-sv
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/core-sv -xzf $(DL_DIR)/asterisk-core-sounds-sv-siren14-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-extra-sounds-en-alaw-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/extra-en
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/extra-en -xzf $(DL_DIR)/asterisk-extra-sounds-en-alaw-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-extra-sounds-en-g722-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/extra-en
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/extra-en -xzf $(DL_DIR)/asterisk-extra-sounds-en-g722-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-extra-sounds-en-g729-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/extra-en
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/extra-en -xzf $(DL_DIR)/asterisk-extra-sounds-en-g729-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-extra-sounds-en-gsm-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/extra-en
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/extra-en -xzf $(DL_DIR)/asterisk-extra-sounds-en-gsm-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-extra-sounds-en-sln16-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/extra-en
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/extra-en -xzf $(DL_DIR)/asterisk-extra-sounds-en-sln16-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-extra-sounds-en-ulaw-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/extra-en
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/extra-en -xzf $(DL_DIR)/asterisk-extra-sounds-en-ulaw-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-extra-sounds-en-wav-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/extra-en
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/extra-en -xzf $(DL_DIR)/asterisk-extra-sounds-en-wav-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-extra-sounds-en-siren7-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/extra-en
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/extra-en -xzf $(DL_DIR)/asterisk-extra-sounds-en-siren7-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-extra-sounds-en-siren14-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/extra-en
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/extra-en -xzf $(DL_DIR)/asterisk-extra-sounds-en-siren14-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-extra-sounds-en_GB-alaw-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/extra-en_GB
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/extra-en_GB -xzf $(DL_DIR)/asterisk-extra-sounds-en_GB-alaw-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-extra-sounds-en_GB-g722-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/extra-en_GB
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/extra-en_GB -xzf $(DL_DIR)/asterisk-extra-sounds-en_GB-g722-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-extra-sounds-en_GB-g729-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/extra-en_GB
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/extra-en_GB -xzf $(DL_DIR)/asterisk-extra-sounds-en_GB-g729-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-extra-sounds-en_GB-gsm-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/extra-en_GB
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/extra-en_GB -xzf $(DL_DIR)/asterisk-extra-sounds-en_GB-gsm-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-extra-sounds-en_GB-sln16-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/extra-en_GB
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/extra-en_GB -xzf $(DL_DIR)/asterisk-extra-sounds-en_GB-sln16-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-extra-sounds-en_GB-ulaw-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/extra-en_GB
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/extra-en_GB -xzf $(DL_DIR)/asterisk-extra-sounds-en_GB-ulaw-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-extra-sounds-en_GB-wav-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/extra-en_GB
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/extra-en_GB -xzf $(DL_DIR)/asterisk-extra-sounds-en_GB-wav-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-extra-sounds-en_GB-siren7-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/extra-en_GB
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/extra-en_GB -xzf $(DL_DIR)/asterisk-extra-sounds-en_GB-siren7-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-extra-sounds-en_GB-siren14-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/extra-en_GB
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/extra-en_GB -xzf $(DL_DIR)/asterisk-extra-sounds-en_GB-siren14-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-extra-sounds-fr-alaw-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/extra-fr
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/extra-fr -xzf $(DL_DIR)/asterisk-extra-sounds-fr-alaw-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-extra-sounds-fr-g722-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/extra-fr
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/extra-fr -xzf $(DL_DIR)/asterisk-extra-sounds-fr-g722-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-extra-sounds-fr-g729-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/extra-fr
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/extra-fr -xzf $(DL_DIR)/asterisk-extra-sounds-fr-g729-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-extra-sounds-fr-gsm-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/extra-fr
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/extra-fr -xzf $(DL_DIR)/asterisk-extra-sounds-fr-gsm-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-extra-sounds-fr-sln16-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/extra-fr
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/extra-fr -xzf $(DL_DIR)/asterisk-extra-sounds-fr-sln16-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-extra-sounds-fr-ulaw-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/extra-fr
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/extra-fr -xzf $(DL_DIR)/asterisk-extra-sounds-fr-ulaw-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-extra-sounds-fr-wav-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/extra-fr
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/extra-fr -xzf $(DL_DIR)/asterisk-extra-sounds-fr-wav-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-extra-sounds-fr-siren7-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/extra-fr
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/extra-fr -xzf $(DL_DIR)/asterisk-extra-sounds-fr-siren7-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-extra-sounds-fr-siren14-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/extra-fr
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/extra-fr -xzf $(DL_DIR)/asterisk-extra-sounds-fr-siren14-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-moh-opsounds-alaw-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/moh
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/moh -xzf $(DL_DIR)/asterisk-moh-opsound-alaw-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-moh-opsounds-g722-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/moh
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/moh -xzf $(DL_DIR)/asterisk-moh-opsound-g722-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-moh-opsounds-g729-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/moh
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/moh -xzf $(DL_DIR)/asterisk-moh-opsound-g729-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-moh-opsounds-gsm-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/moh
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/moh -xzf $(DL_DIR)/asterisk-moh-opsound-gsm-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-moh-opsounds-sln16-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/moh
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/moh -xzf $(DL_DIR)/asterisk-moh-opsound-sln16-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-moh-opsounds-ulaw-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/moh
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/moh -xzf $(DL_DIR)/asterisk-moh-opsound-ulaw-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-moh-opsounds-wav-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/moh
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/moh -xzf $(DL_DIR)/asterisk-moh-opsound-wav-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-moh-opsounds-siren7-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/moh
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/moh -xzf $(DL_DIR)/asterisk-moh-opsound-siren7-current.tar.gz
endif
ifneq ($(CONFIG_PACKAGE_asterisk-moh-opsounds-siren14-digium),)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/moh
	$(HOST_TAR) -C $(PKG_BUILD_DIR)/moh -xzf $(DL_DIR)/asterisk-moh-opsound-siren14-current.tar.gz
endif
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/asterisk/install/sounds
	$(INSTALL_DIR) $(1)/usr/share/asterisk/sounds/$(3)
	$(INSTALL_DIR) $(1)/usr/share/asterisk/sounds/$(3)/dictate
	$(INSTALL_DIR) $(1)/usr/share/asterisk/sounds/$(3)/digits
	$(INSTALL_DIR) $(1)/usr/share/asterisk/sounds/$(3)/followme
	$(INSTALL_DIR) $(1)/usr/share/asterisk/sounds/$(3)/letters
	$(INSTALL_DIR) $(1)/usr/share/asterisk/sounds/$(3)/phonetic
	$(INSTALL_DIR) $(1)/usr/share/asterisk/sounds/$(3)/silence
	$(CP) $(PKG_BUILD_DIR)/core-$(3)/dictate/*.$(2) $(1)/usr/share/asterisk/sounds/$(3)/dictate
	$(CP) $(PKG_BUILD_DIR)/core-$(3)/digits/*.$(2) $(1)/usr/share/asterisk/sounds/$(3)/digits
	$(CP) $(PKG_BUILD_DIR)/core-$(3)/followme/*.$(2) $(1)/usr/share/asterisk/sounds/$(3)/followme
	$(CP) $(PKG_BUILD_DIR)/core-$(3)/letters/*.$(2) $(1)/usr/share/asterisk/sounds/$(3)/letters
	$(CP) $(PKG_BUILD_DIR)/core-$(3)/phonetic/*.$(2) $(1)/usr/share/asterisk/sounds/$(3)/phonetic
	$(CP) $(PKG_BUILD_DIR)/core-$(3)/silence/*.$(2) $(1)/usr/share/asterisk/sounds/$(3)/silence
	$(CP) $(PKG_BUILD_DIR)/core-$(3)/*.$(2) $(1)/usr/share/asterisk/sounds/$(3)
	rm -f $(1)/usr/share/asterisk/sounds/vm-*
endef

define Package/asterisk/install/voicemail
	$(INSTALL_DIR) $(1)/usr/share/asterisk/sounds/$(3)
	$(CP) $(PKG_BUILD_DIR)/core-$(3)/vm-*.$(2) $(1)/usr/share/asterisk/sounds/$(3)
endef

define Package/asterisk/install/extra
	$(INSTALL_DIR) $(1)/usr/share/asterisk/sounds/$(3)
	$(INSTALL_DIR) $(1)/usr/share/asterisk/sounds/$(3)/ha
	$(INSTALL_DIR) $(1)/usr/share/asterisk/sounds/$(3)/wx
	$(CP) $(PKG_BUILD_DIR)/extra-$(3)/*.$(2) $(1)/usr/share/asterisk/sounds/$(3)
	$(CP) $(PKG_BUILD_DIR)/extra-$(3)/wx/*.$(2) $(1)/usr/share/asterisk/sounds/$(3)/wx
	$(CP) $(PKG_BUILD_DIR)/extra-$(3)/ha/*.$(2) $(1)/usr/share/asterisk/sounds/$(3)/ha
endef

define Package/asterisk/install/extralite
	$(INSTALL_DIR) $(1)/usr/share/asterisk/sounds/$(3)
	$(CP) $(PKG_BUILD_DIR)/extra-$(3)/*.$(2) $(1)/usr/share/asterisk/sounds/$(3)
endef

define Package/asterisk/install/moh
	$(INSTALL_DIR) $(1)/usr/share/asterisk/moh/
	$(CP) $(PKG_BUILD_DIR)/moh/*.$(2) $(1)/usr/share/asterisk/moh/
endef

define BuildasteriskCoreSound
  define Package/asterisk-core-sounds-$(1)-digium
  $$(call Package/asterisk-sounds-digium/Default)
    TITLE:=Sound support
    DEPENDS:=asterisk
  endef

  define Package/asterisk-core-sounds-$(1)-digium/description
$(2)
  endef

  define Package/asterisk-core-sounds-$(1)-digium/install
$(call Package/asterisk/install/sounds,$$(1),$(3),$(4))
  endef

  $$(eval $$(call BuildPackage,asterisk-core-sounds-$(1)-digium))
endef

define BuildasteriskVoicemail
  define Package/asterisk-core-sounds-$(1)-digium
  $$(call Package/asterisk-sounds-digium/Default)
    TITLE:=Sound support
    DEPENDS:=asterisk
  endef

  define Package/asterisk-core-sounds-$(1)-digium/description
$(2)
  endef

  define Package/asterisk-core-sounds-$(1)-digium/install
$(call Package/asterisk/install/voicemail,$$(1),$(3),$(4))
  endef

  $$(eval $$(call BuildPackage,asterisk-core-sounds-$(1)-digium))
endef

define BuildasteriskExtraSound
  define Package/asterisk-extra-sounds-$(1)-digium
  $$(call Package/asterisk-sounds-digium/Default)
    TITLE:=Sound support
    DEPENDS:=asterisk
  endef

  define Package/asterisk-extra-sounds-$(1)-digium/description
$(2)
  endef

  define Package/asterisk-extra-sounds-$(1)-digium/install
$(call Package/asterisk/install/extra,$$(1),$(3),$(4))
  endef

  $$(eval $$(call BuildPackage,asterisk-extra-sounds-$(1)-digium))
endef

define BuildasteriskExtraLiteSound
  define Package/asterisk-extra-sounds-$(1)-digium
  $$(call Package/asterisk-sounds-digium/Default)
    TITLE:=Sound support
    DEPENDS:=asterisk
  endef

  define Package/asterisk-extra-sounds-$(1)-digium/description
$(2)
  endef

  define Package/asterisk-extra-sounds-$(1)-digium/install
$(call Package/asterisk/install/extralite,$$(1),$(3),$(4))
  endef

  $$(eval $$(call BuildPackage,asterisk-extra-sounds-$(1)-digium))
endef

define BuildasteriskMohSound
  define Package/asterisk-moh-opsounds-$(1)-digium
  $$(call Package/asterisk-sounds-digium/Default)
    TITLE:=Sound support
    DEPENDS:=asterisk
  endef

  define Package/asterisk-moh-opsounds-$(1)-digium/description
$(2)
  endef

  define Package/asterisk-moh-opsounds-$(1)-digium/install
$(call Package/asterisk/install/moh,$$(1),$(1))
  endef

  $$(eval $$(call BuildPackage,asterisk-moh-opsounds-$(1)-digium))
endef

$(eval $(call BuildasteriskCoreSound,en-alaw,en core sound Files. alaw format,alaw,en))
$(eval $(call BuildasteriskVoicemail,voicemail-en-alaw,en core voice mail Files. alaw format,alaw,en))
$(eval $(call BuildasteriskCoreSound,en-g722,en core sound Files. g722 format,g722,en))
$(eval $(call BuildasteriskVoicemail,voicemail-en-g722,en core voice mail Files. g722 format,g722,en))
$(eval $(call BuildasteriskCoreSound,en-g729,en core sound Files. g729 format,g729,en))
$(eval $(call BuildasteriskVoicemail,voicemail-en-g729,en core voice mail Files. g729 format,g729,en))
$(eval $(call BuildasteriskCoreSound,en-gsm,en core sound Files. gsm format,gsm,en))
$(eval $(call BuildasteriskVoicemail,voicemail-en-gsm,en core voice mail Files. gsm format,gsm,en))
$(eval $(call BuildasteriskCoreSound,en-sln16,en core sound Files. sln16 format,sln16,en))
$(eval $(call BuildasteriskVoicemail,voicemail-en-sln16,en core voice mail Files. sln16 format,sln16,en))
$(eval $(call BuildasteriskCoreSound,en-ulaw,en core sound Files. ulaw format,ulaw,en))
$(eval $(call BuildasteriskVoicemail,voicemail-en-ulaw,en core voice mail Files. ulaw format,ulaw,en))
$(eval $(call BuildasteriskCoreSound,en-wav,en core sound Files. wav format,wav,en))
$(eval $(call BuildasteriskVoicemail,voicemail-en-wav,en core voice mail Files. wav format,wav,en))
$(eval $(call BuildasteriskCoreSound,en-siren7,en core sound Files. siren7 format,siren7,en))
$(eval $(call BuildasteriskVoicemail,voicemail-en-siren7,en core voice mail Files. siren7 format,siren7,en))
$(eval $(call BuildasteriskCoreSound,en-siren14,en core sound Files. siren14 format,siren14,en))
$(eval $(call BuildasteriskVoicemail,voicemail-en-siren14,en core voice mail Files. siren14 format,siren14,en))
$(eval $(call BuildasteriskCoreSound,en_AU-alaw,en_AU core sound Files. alaw format,alaw,en_AU))
$(eval $(call BuildasteriskVoicemail,voicemail-en_AU-alaw,en_AU core voice mail Files. alaw format,alaw,en_AU))
$(eval $(call BuildasteriskCoreSound,en_AU-g722,en_AU core sound Files. g722 format,g722,en_AU))
$(eval $(call BuildasteriskVoicemail,voicemail-en_AU-g722,en_AU core voice mail Files. g722 format,g722,en_AU))
$(eval $(call BuildasteriskCoreSound,en_AU-g729,en_AU core sound Files. g729 format,g729,en_AU))
$(eval $(call BuildasteriskVoicemail,voicemail-en_AU-g729,en_AU core voice mail Files. g729 format,g729,en_AU))
$(eval $(call BuildasteriskCoreSound,en_AU-gsm,en_AU core sound Files. gsm format,gsm,en_AU))
$(eval $(call BuildasteriskVoicemail,voicemail-en_AU-gsm,en_AU core voice mail Files. gsm format,gsm,en_AU))
$(eval $(call BuildasteriskCoreSound,en_AU-sln16,en_AU core sound Files. sln16 format,sln16,en_AU))
$(eval $(call BuildasteriskVoicemail,voicemail-en_AU-sln16,en_AU core voice mail Files. sln16 format,sln16,en_AU))
$(eval $(call BuildasteriskCoreSound,en_AU-ulaw,en_AU core sound Files. ulaw format,ulaw,en_AU))
$(eval $(call BuildasteriskVoicemail,voicemail-en_AU-ulaw,en_AU core voice mail Files. ulaw format,ulaw,en_AU))
$(eval $(call BuildasteriskCoreSound,en_AU-wav,en_AU core sound Files. wav format,wav,en_AU))
$(eval $(call BuildasteriskVoicemail,voicemail-en_AU-wav,en_AU core voice mail Files. wav format,wav,en_AU))
$(eval $(call BuildasteriskCoreSound,en_AU-siren7,en_AU core sound Files. siren7 format,siren7,en_AU))
$(eval $(call BuildasteriskVoicemail,voicemail-en_AU-siren7,en_AU core voice mail Files. siren7 format,siren7,en_AU))
$(eval $(call BuildasteriskCoreSound,en_AU-siren14,en_AU core sound Files. siren14 format,siren14,en_AU))
$(eval $(call BuildasteriskVoicemail,voicemail-en_AU-siren14,en_AU core voice mail Files. siren14 format,siren14,en_AU))
$(eval $(call BuildasteriskCoreSound,en_GB-alaw,en_GB core sound Files. alaw format,alaw,en_GB))
$(eval $(call BuildasteriskVoicemail,voicemail-en_GB-alaw,en_GB core voice mail Files. alaw format,alaw,en_GB))
$(eval $(call BuildasteriskCoreSound,en_GB-g722,en_GB core sound Files. g722 format,g722,en_GB))
$(eval $(call BuildasteriskVoicemail,voicemail-en_GB-g722,en_GB core voice mail Files. g722 format,g722,en_GB))
$(eval $(call BuildasteriskCoreSound,en_GB-g729,en_GB core sound Files. g729 format,g729,en_GB))
$(eval $(call BuildasteriskVoicemail,voicemail-en_GB-g729,en_GB core voice mail Files. g729 format,g729,en_GB))
$(eval $(call BuildasteriskCoreSound,en_GB-gsm,en_GB core sound Files. gsm format,gsm,en_GB))
$(eval $(call BuildasteriskVoicemail,voicemail-en_GB-gsm,en_GB core voice mail Files. gsm format,gsm,en_GB))
$(eval $(call BuildasteriskCoreSound,en_GB-sln16,en_GB core sound Files. sln16 format,sln16,en_GB))
$(eval $(call BuildasteriskVoicemail,voicemail-en_GB-sln16,en_GB core voice mail Files. sln16 format,sln16,en_GB))
$(eval $(call BuildasteriskCoreSound,en_GB-ulaw,en_GB core sound Files. ulaw format,ulaw,en_GB))
$(eval $(call BuildasteriskVoicemail,voicemail-en_GB-ulaw,en_GB core voice mail Files. ulaw format,ulaw,en_GB))
$(eval $(call BuildasteriskCoreSound,en_GB-wav,en_GB core sound Files. wav format,wav,en_GB))
$(eval $(call BuildasteriskVoicemail,voicemail-en_GB-wav,en_GB core voice mail Files. wav format,wav,en_GB))
$(eval $(call BuildasteriskCoreSound,en_GB-siren7,en_GB core sound Files. siren7 format,siren7,en_GB))
$(eval $(call BuildasteriskVoicemail,voicemail-en_GB-siren7,en_GB core voice mail Files. siren7 format,siren7,en_GB))
$(eval $(call BuildasteriskCoreSound,en_GB-siren14,en_GB core sound Files. siren14 format,siren14,en_GB))
$(eval $(call BuildasteriskVoicemail,voicemail-en_GB-siren14,en_GB core voice mail Files. siren14 format,siren14,en_GB))
$(eval $(call BuildasteriskCoreSound,en_NZ-alaw,en_NZ core sound Files. alaw format,alaw,en_NZ))
$(eval $(call BuildasteriskVoicemail,voicemail-en_NZ-alaw,en_NZ core voice mail Files. alaw format,alaw,en_NZ))
$(eval $(call BuildasteriskCoreSound,en_NZ-g722,en_NZ core sound Files. g722 format,g722,en_NZ))
$(eval $(call BuildasteriskVoicemail,voicemail-en_NZ-g722,en_NZ core voice mail Files. g722 format,g722,en_NZ))
$(eval $(call BuildasteriskCoreSound,en_NZ-g729,en_NZ core sound Files. g729 format,g729,en_NZ))
$(eval $(call BuildasteriskVoicemail,voicemail-en_NZ-g729,en_NZ core voice mail Files. g729 format,g729,en_NZ))
$(eval $(call BuildasteriskCoreSound,en_NZ-gsm,en_NZ core sound Files. gsm format,gsm,en_NZ))
$(eval $(call BuildasteriskVoicemail,voicemail-en_NZ-gsm,en_NZ core voice mail Files. gsm format,gsm,en_NZ))
$(eval $(call BuildasteriskCoreSound,en_NZ-sln16,en_NZ core sound Files. sln16 format,sln16,en_NZ))
$(eval $(call BuildasteriskVoicemail,voicemail-en_NZ-sln16,en_NZ core voice mail Files. sln16 format,sln16,en_NZ))
$(eval $(call BuildasteriskCoreSound,en_NZ-ulaw,en_NZ core sound Files. ulaw format,ulaw,en_NZ))
$(eval $(call BuildasteriskVoicemail,voicemail-en_NZ-ulaw,en_NZ core voice mail Files. ulaw format,ulaw,en_NZ))
$(eval $(call BuildasteriskCoreSound,en_NZ-wav,en_NZ core sound Files. wav format,wav,en_NZ))
$(eval $(call BuildasteriskVoicemail,voicemail-en_NZ-wav,en_NZ core voice mail Files. wav format,wav,en_NZ))
$(eval $(call BuildasteriskCoreSound,en_NZ-siren7,en_NZ core sound Files. siren7 format,siren7,en_NZ))
$(eval $(call BuildasteriskVoicemail,voicemail-en_NZ-siren7,en_NZ core voice mail Files. siren7 format,siren7,en_NZ))
$(eval $(call BuildasteriskCoreSound,en_NZ-siren14,en_NZ core sound Files. siren14 format,siren14,en_NZ))
$(eval $(call BuildasteriskVoicemail,voicemail-en_NZ-siren14,en_NZ core voice mail Files. siren14 format,siren14,en_NZ))
$(eval $(call BuildasteriskCoreSound,es-alaw,es core sound Files. alaw format,alaw,es))
$(eval $(call BuildasteriskVoicemail,voicemail-es-alaw,es core voice mail Files. alaw format,alaw,es))
$(eval $(call BuildasteriskCoreSound,es-g722,es core sound Files. g722 format,g722,es))
$(eval $(call BuildasteriskVoicemail,voicemail-es-g722,es core voice mail Files. g722 format,g722,es))
$(eval $(call BuildasteriskCoreSound,es-g729,es core sound Files. g729 format,g729,es))
$(eval $(call BuildasteriskVoicemail,voicemail-es-g729,es core voice mail Files. g729 format,g729,es))
$(eval $(call BuildasteriskCoreSound,es-gsm,es core sound Files. gsm format,gsm,es))
$(eval $(call BuildasteriskVoicemail,voicemail-es-gsm,es core voice mail Files. gsm format,gsm,es))
$(eval $(call BuildasteriskCoreSound,es-sln16,es core sound Files. sln16 format,sln16,es))
$(eval $(call BuildasteriskVoicemail,voicemail-es-sln16,es core voice mail Files. sln16 format,sln16,es))
$(eval $(call BuildasteriskCoreSound,es-ulaw,es core sound Files. ulaw format,ulaw,es))
$(eval $(call BuildasteriskVoicemail,voicemail-es-ulaw,es core voice mail Files. ulaw format,ulaw,es))
$(eval $(call BuildasteriskCoreSound,es-wav,es core sound Files. wav format,wav,es))
$(eval $(call BuildasteriskVoicemail,voicemail-es-wav,es core voice mail Files. wav format,wav,es))
$(eval $(call BuildasteriskCoreSound,es-siren7,es core sound Files. siren7 format,siren7,es))
$(eval $(call BuildasteriskVoicemail,voicemail-es-siren7,es core voice mail Files. siren7 format,siren7,es))
$(eval $(call BuildasteriskCoreSound,es-siren14,es core sound Files. siren14 format,siren14,es))
$(eval $(call BuildasteriskVoicemail,voicemail-es-siren14,es core voice mail Files. siren14 format,siren14,es))
$(eval $(call BuildasteriskCoreSound,fr-alaw,fr core sound Files. alaw format,alaw,fr))
$(eval $(call BuildasteriskVoicemail,voicemail-fr-alaw,fr core voice mail Files. alaw format,alaw,fr))
$(eval $(call BuildasteriskCoreSound,fr-g722,fr core sound Files. g722 format,g722,fr))
$(eval $(call BuildasteriskVoicemail,voicemail-fr-g722,fr core voice mail Files. g722 format,g722,fr))
$(eval $(call BuildasteriskCoreSound,fr-g729,fr core sound Files. g729 format,g729,fr))
$(eval $(call BuildasteriskVoicemail,voicemail-fr-g729,fr core voice mail Files. g729 format,g729,fr))
$(eval $(call BuildasteriskCoreSound,fr-gsm,fr core sound Files. gsm format,gsm,fr))
$(eval $(call BuildasteriskVoicemail,voicemail-fr-gsm,fr core voice mail Files. gsm format,gsm,fr))
$(eval $(call BuildasteriskCoreSound,fr-sln16,fr core sound Files. sln16 format,sln16,fr))
$(eval $(call BuildasteriskVoicemail,voicemail-fr-sln16,fr core voice mail Files. sln16 format,sln16,fr))
$(eval $(call BuildasteriskCoreSound,fr-ulaw,fr core sound Files. ulaw format,ulaw,fr))
$(eval $(call BuildasteriskVoicemail,voicemail-fr-ulaw,fr core voice mail Files. ulaw format,ulaw,fr))
$(eval $(call BuildasteriskCoreSound,fr-wav,fr core sound Files. wav format,wav,fr))
$(eval $(call BuildasteriskVoicemail,voicemail-fr-wav,fr core voice mail Files. wav format,wav,fr))
$(eval $(call BuildasteriskCoreSound,fr-siren7,fr core sound Files. siren7 format,siren7,fr))
$(eval $(call BuildasteriskVoicemail,voicemail-fr-siren7,fr core voice mail Files. siren7 format,siren7,fr))
$(eval $(call BuildasteriskCoreSound,fr-siren14,fr core sound Files. siren14 format,siren14,fr))
$(eval $(call BuildasteriskVoicemail,voicemail-fr-siren14,fr core voice mail Files. siren14 format,siren14,fr))
$(eval $(call BuildasteriskCoreSound,it-alaw,it core sound Files. alaw format,alaw,it))
$(eval $(call BuildasteriskVoicemail,voicemail-it-alaw,it core voice mail Files. alaw format,alaw,it))
$(eval $(call BuildasteriskCoreSound,it-g722,it core sound Files. g722 format,g722,it))
$(eval $(call BuildasteriskVoicemail,voicemail-it-g722,it core voice mail Files. g722 format,g722,it))
$(eval $(call BuildasteriskCoreSound,it-g729,it core sound Files. g729 format,g729,it))
$(eval $(call BuildasteriskVoicemail,voicemail-it-g729,it core voice mail Files. g729 format,g729,it))
$(eval $(call BuildasteriskCoreSound,it-gsm,it core sound Files. gsm format,gsm,it))
$(eval $(call BuildasteriskVoicemail,voicemail-it-gsm,it core voice mail Files. gsm format,gsm,it))
$(eval $(call BuildasteriskCoreSound,it-sln16,it core sound Files. sln16 format,sln16,it))
$(eval $(call BuildasteriskVoicemail,voicemail-it-sln16,it core voice mail Files. sln16 format,sln16,it))
$(eval $(call BuildasteriskCoreSound,it-ulaw,it core sound Files. ulaw format,ulaw,it))
$(eval $(call BuildasteriskVoicemail,voicemail-it-ulaw,it core voice mail Files. ulaw format,ulaw,it))
$(eval $(call BuildasteriskCoreSound,it-wav,it core sound Files. wav format,wav,it))
$(eval $(call BuildasteriskVoicemail,voicemail-it-wav,it core voice mail Files. wav format,wav,it))
$(eval $(call BuildasteriskCoreSound,it-siren7,it core sound Files. siren7 format,siren7,it))
$(eval $(call BuildasteriskVoicemail,voicemail-it-siren7,it core voice mail Files. siren7 format,siren7,it))
$(eval $(call BuildasteriskCoreSound,it-siren14,it core sound Files. siren14 format,siren14,it))
$(eval $(call BuildasteriskVoicemail,voicemail-it-siren14,it core voice mail Files. siren14 format,siren14,it))
$(eval $(call BuildasteriskCoreSound,ja-alaw,ja core sound Files. alaw format,alaw,ja))
$(eval $(call BuildasteriskVoicemail,voicemail-ja-alaw,ja core voice mail Files. alaw format,alaw,ja))
$(eval $(call BuildasteriskCoreSound,ja-g722,ja core sound Files. g722 format,g722,ja))
$(eval $(call BuildasteriskVoicemail,voicemail-ja-g722,ja core voice mail Files. g722 format,g722,ja))
$(eval $(call BuildasteriskCoreSound,ja-g729,ja core sound Files. g729 format,g729,ja))
$(eval $(call BuildasteriskVoicemail,voicemail-ja-g729,ja core voice mail Files. g729 format,g729,ja))
$(eval $(call BuildasteriskCoreSound,ja-gsm,ja core sound Files. gsm format,gsm,ja))
$(eval $(call BuildasteriskVoicemail,voicemail-ja-gsm,ja core voice mail Files. gsm format,gsm,ja))
$(eval $(call BuildasteriskCoreSound,ja-sln16,ja core sound Files. sln16 format,sln16,ja))
$(eval $(call BuildasteriskVoicemail,voicemail-ja-sln16,ja core voice mail Files. sln16 format,sln16,ja))
$(eval $(call BuildasteriskCoreSound,ja-ulaw,ja core sound Files. ulaw format,ulaw,ja))
$(eval $(call BuildasteriskVoicemail,voicemail-ja-ulaw,ja core voice mail Files. ulaw format,ulaw,ja))
$(eval $(call BuildasteriskCoreSound,ja-wav,ja core sound Files. wav format,wav,ja))
$(eval $(call BuildasteriskVoicemail,voicemail-ja-wav,ja core voice mail Files. wav format,wav,ja))
$(eval $(call BuildasteriskCoreSound,ja-siren7,ja core sound Files. siren7 format,siren7,ja))
$(eval $(call BuildasteriskVoicemail,voicemail-ja-siren7,ja core voice mail Files. siren7 format,siren7,ja))
$(eval $(call BuildasteriskCoreSound,ja-siren14,ja core sound Files. siren14 format,siren14,ja))
$(eval $(call BuildasteriskVoicemail,voicemail-ja-siren14,ja core voice mail Files. siren14 format,siren14,ja))
$(eval $(call BuildasteriskCoreSound,ru-alaw,ru core sound Files. alaw format,alaw,ru))
$(eval $(call BuildasteriskVoicemail,voicemail-ru-alaw,ru core voice mail Files. alaw format,alaw,ru))
$(eval $(call BuildasteriskCoreSound,ru-g722,ru core sound Files. g722 format,g722,ru))
$(eval $(call BuildasteriskVoicemail,voicemail-ru-g722,ru core voice mail Files. g722 format,g722,ru))
$(eval $(call BuildasteriskCoreSound,ru-g729,ru core sound Files. g729 format,g729,ru))
$(eval $(call BuildasteriskVoicemail,voicemail-ru-g729,ru core voice mail Files. g729 format,g729,ru))
$(eval $(call BuildasteriskCoreSound,ru-gsm,ru core sound Files. gsm format,gsm,ru))
$(eval $(call BuildasteriskVoicemail,voicemail-ru-gsm,ru core voice mail Files. gsm format,gsm,ru))
$(eval $(call BuildasteriskCoreSound,ru-sln16,ru core sound Files. sln16 format,sln16,ru))
$(eval $(call BuildasteriskVoicemail,voicemail-ru-sln16,ru core voice mail Files. sln16 format,sln16,ru))
$(eval $(call BuildasteriskCoreSound,ru-ulaw,ru core sound Files. ulaw format,ulaw,ru))
$(eval $(call BuildasteriskVoicemail,voicemail-ru-ulaw,ru core voice mail Files. ulaw format,ulaw,ru))
$(eval $(call BuildasteriskCoreSound,ru-wav,ru core sound Files. wav format,wav,ru))
$(eval $(call BuildasteriskVoicemail,voicemail-ru-wav,ru core voice mail Files. wav format,wav,ru))
$(eval $(call BuildasteriskCoreSound,ru-siren7,ru core sound Files. siren7 format,siren7,ru))
$(eval $(call BuildasteriskVoicemail,voicemail-ru-siren7,ru core voice mail Files. siren7 format,siren7,ru))
$(eval $(call BuildasteriskCoreSound,ru-siren14,ru core sound Files. siren14 format,siren14,ru))
$(eval $(call BuildasteriskVoicemail,voicemail-ru-siren14,ru core voice mail Files. siren14 format,siren14,ru))
$(eval $(call BuildasteriskCoreSound,sv-alaw,sv core sound Files. alaw format,alaw,sv))
$(eval $(call BuildasteriskVoicemail,voicemail-sv-alaw,sv core voice mail Files. alaw format,alaw,sv))
$(eval $(call BuildasteriskCoreSound,sv-g722,sv core sound Files. g722 format,g722,sv))
$(eval $(call BuildasteriskVoicemail,voicemail-sv-g722,sv core voice mail Files. g722 format,g722,sv))
$(eval $(call BuildasteriskCoreSound,sv-g729,sv core sound Files. g729 format,g729,sv))
$(eval $(call BuildasteriskVoicemail,voicemail-sv-g729,sv core voice mail Files. g729 format,g729,sv))
$(eval $(call BuildasteriskCoreSound,sv-gsm,sv core sound Files. gsm format,gsm,sv))
$(eval $(call BuildasteriskVoicemail,voicemail-sv-gsm,sv core voice mail Files. gsm format,gsm,sv))
$(eval $(call BuildasteriskCoreSound,sv-sln16,sv core sound Files. sln16 format,sln16,sv))
$(eval $(call BuildasteriskVoicemail,voicemail-sv-sln16,sv core voice mail Files. sln16 format,sln16,sv))
$(eval $(call BuildasteriskCoreSound,sv-ulaw,sv core sound Files. ulaw format,ulaw,sv))
$(eval $(call BuildasteriskVoicemail,voicemail-sv-ulaw,sv core voice mail Files. ulaw format,ulaw,sv))
$(eval $(call BuildasteriskCoreSound,sv-wav,sv core sound Files. wav format,wav,sv))
$(eval $(call BuildasteriskVoicemail,voicemail-sv-wav,sv core voice mail Files. wav format,wav,sv))
$(eval $(call BuildasteriskCoreSound,sv-siren7,sv core sound Files. siren7 format,siren7,sv))
$(eval $(call BuildasteriskVoicemail,voicemail-sv-siren7,sv core voice mail Files. siren7 format,siren7,sv))
$(eval $(call BuildasteriskCoreSound,sv-siren14,sv core sound Files. siren14 format,siren14,sv))
$(eval $(call BuildasteriskVoicemail,voicemail-sv-siren14,sv core voice mail Files. siren14 format,siren14,sv))
$(eval $(call BuildasteriskExtraSound,en-alaw,en extra sound Files. alaw format,alaw,en))
$(eval $(call BuildasteriskExtraSound,en-g722,en extra sound Files. g722 format,g722,en))
$(eval $(call BuildasteriskExtraSound,en-g729,en extra sound Files. g729 format,g729,en))
$(eval $(call BuildasteriskExtraSound,en-gsm,en extra sound Files. gsm format,gsm,en))
$(eval $(call BuildasteriskExtraSound,en-sln16,en extra sound Files. sln16 format,sln16,en))
$(eval $(call BuildasteriskExtraSound,en-ulaw,en extra sound Files. ulaw format,ulaw,en))
$(eval $(call BuildasteriskExtraSound,en-wav,en extra sound Files. wav format,wav,en))
$(eval $(call BuildasteriskExtraSound,en-siren7,en extra sound Files. siren7 format,siren7,en))
$(eval $(call BuildasteriskExtraSound,en-siren14,en extra sound Files. siren14 format,siren14,en))
$(eval $(call BuildasteriskExtraLiteSound,en_GB-alaw,en_GB extra sound Files. alaw format,alaw,en_GB))
$(eval $(call BuildasteriskExtraLiteSound,en_GB-g722,en_GB extra sound Files. g722 format,g722,en_GB))
$(eval $(call BuildasteriskExtraLiteSound,en_GB-g729,en_GB extra sound Files. g729 format,g729,en_GB))
$(eval $(call BuildasteriskExtraLiteSound,en_GB-gsm,en_GB extra sound Files. gsm format,gsm,en_GB))
$(eval $(call BuildasteriskExtraLiteSound,en_GB-sln16,en_GB extra sound Files. sln16 format,sln16,en_GB))
$(eval $(call BuildasteriskExtraLiteSound,en_GB-ulaw,en_GB extra sound Files. ulaw format,ulaw,en_GB))
$(eval $(call BuildasteriskExtraLiteSound,en_GB-wav,en_GB extra sound Files. wav format,wav,en_GB))
$(eval $(call BuildasteriskExtraLiteSound,en_GB-siren7,en_GB extra sound Files. siren7 format,siren7,en_GB))
$(eval $(call BuildasteriskExtraLiteSound,en_GB-siren14,en_GB extra sound Files. siren14 format,siren14,en_GB))
$(eval $(call BuildasteriskExtraSound,fr-alaw,fr extra sound Files. alaw format,alaw,fr))
$(eval $(call BuildasteriskExtraSound,fr-g722,fr extra sound Files. g722 format,g722,fr))
$(eval $(call BuildasteriskExtraSound,fr-g729,fr extra sound Files. g729 format,g729,fr))
$(eval $(call BuildasteriskExtraSound,fr-gsm,fr extra sound Files. gsm format,gsm,fr))
$(eval $(call BuildasteriskExtraSound,fr-sln16,fr extra sound Files. sln16 format,sln16,fr))
$(eval $(call BuildasteriskExtraSound,fr-ulaw,fr extra sound Files. ulaw format,ulaw,fr))
$(eval $(call BuildasteriskExtraSound,fr-wav,fr extra sound Files. wav format,wav,fr))
$(eval $(call BuildasteriskExtraSound,fr-siren7,fr extra sound Files. siren7 format,siren7,fr))
$(eval $(call BuildasteriskExtraSound,fr-siren14,fr extra sound Files. siren14 format,siren14,fr))
$(eval $(call BuildasteriskMohSound,alaw,moh sound Files. alaw format))
$(eval $(call BuildasteriskMohSound,g722,moh sound Files. g722 format))
$(eval $(call BuildasteriskMohSound,g729,moh sound Files. g729 format))
$(eval $(call BuildasteriskMohSound,gsm,moh sound Files. gsm format))
$(eval $(call BuildasteriskMohSound,sln16,moh sound Files. sln16 format))
$(eval $(call BuildasteriskMohSound,ulaw,moh sound Files. ulaw format))
$(eval $(call BuildasteriskMohSound,wav,moh sound Files. wav format))
$(eval $(call BuildasteriskMohSound,siren7,moh sound Files. siren7 format))
$(eval $(call BuildasteriskMohSound,siren14,moh sound Files. siren14 format))
