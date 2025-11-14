#!/bin/bash
# fix_specific_errors.sh

# Correção específica para cada erro

# 1. Corrige odm.c linha 1077
sed -i '1077s/if ((pregpriv->wifi_spec == 1))/if (pregpriv->wifi_spec == 1)/' drivers/staging/rtl8188eu/hal/odm.c

# 2. Corrige rtl8723b_hal_init.c linha 3351
# Primeiro remove parênteses da comparação
sed -i '3351s/} else if ((mode == _HW_STATE_ADHOC_)/} else if (mode == _HW_STATE_ADHOC_)/' drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
# Depois remove o parêntese extra no final
sed -i '3351s/_ADHOC_) \/\*|| .*\*\/) {/_ADHOC_) \/\*|| .*\*\/ {/' drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c

echo "Correções aplicadas!"
