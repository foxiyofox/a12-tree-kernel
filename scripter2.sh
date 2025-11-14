#!/bin/bash
# fix_all_compilation_errors.sh

# RTL8188EU fixes
echo "Fixing RTL8188EU errors..."

# rtw_ieee80211.c
sed -i 's/!memcmp((pbuf + 2), wpa_oui_type, sizeof(wpa_oui_type)) == false/memcmp((pbuf + 2), wpa_oui_type, sizeof(wpa_oui_type)) != 0/' drivers/staging/rtl8188eu/core/rtw_ieee80211.c

# rtw_mlme.c
sed -i 's/!memcmp(competitor->network.Ssid.Ssid, pmlmepriv->assoc_ssid.Ssid, pmlmepriv->assoc_ssid.SsidLength) == false/memcmp(competitor->network.Ssid.Ssid, pmlmepriv->assoc_ssid.Ssid, pmlmepriv->assoc_ssid.SsidLength) == 0/' drivers/staging/rtl8188eu/core/rtw_mlme.c

# rtw_pwrctrl.c
sed -i 's/((pwrpriv->rpwm == pslv))/(pwrpriv->rpwm == pslv)/' drivers/staging/rtl8188eu/core/rtw_pwrctrl.c

# rtw_recv.c
sed -i 's/!memcmp(psnap_type, SNAP_ETH_TYPE_IPX, 2) == false/memcmp(psnap_type, SNAP_ETH_TYPE_IPX, 2) != 0/g' drivers/staging/rtl8188eu/core/rtw_recv.c
sed -i 's/!memcmp(psnap_type, SNAP_ETH_TYPE_APPLETALK_AARP, 2) == false/memcmp(psnap_type, SNAP_ETH_TYPE_APPLETALK_AARP, 2) != 0/g' drivers/staging/rtl8188eu/core/rtw_recv.c

# rtw_wlan_util.c
sed -i 's/!memcmp(cur_network->network.MacAddress, pbssid, 6) == false/memcmp(cur_network->network.MacAddress, pbssid, 6) != 0/' drivers/staging/rtl8188eu/core/rtw_wlan_util.c

# rf_cfg.c - Fix enum conversion
sed -i 's/RF90_PATH_A/RF_PATH_A/g' drivers/staging/rtl8188eu/hal/rf_cfg.c

# RTL8723BS fixes
echo "Fixing RTL8723BS errors..."

# rtw_security.c
sed -i 's/((pattrib->encrypt == _AES_))/(pattrib->encrypt == _AES_)/g' drivers/staging/rtl8723bs/core/rtw_security.c
sed -i 's/((prxattrib->encrypt == _AES_))/(prxattrib->encrypt == _AES_)/g' drivers/staging/rtl8723bs/core/rtw_security.c

# odm_EdcaTurboCheck.c
sed -i 's/((pregpriv->wifi_spec == 1))/(pregpriv->wifi_spec == 1)/' drivers/staging/rtl8723bs/hal/odm_EdcaTurboCheck.c

echo "All fixes applied!"
