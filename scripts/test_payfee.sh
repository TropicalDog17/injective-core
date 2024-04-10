#!/bin/sh

CHAINID="injective-1"
PASSPHRASE="12345678"
SENDER=$(yes 12345678 | injectived keys show genesis -a)
RECIPENT=$(yes 12345678 | injectived keys show signer1 -a)

send_feenative(){
    yes 12345678 | injectived tx bank send $SENDER $RECIPENT 100000000000000000000inj --from genesis --chain-id $CHAINID --broadcast-mode sync --fees 10000000000000000inj --yes
}



send_feenative

