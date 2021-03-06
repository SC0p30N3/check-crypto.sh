#!/bin/bash
btcprice=$(curl -s https://api.coinmarketcap.com/v1/ticker/bitcoin/ | grep "price_usd" | cut -d ":" -f2 | cut -d '"' -f2)
ltcprice=$(curl -s https://api.coinmarketcap.com/v1/ticker/litecoin/ | grep "price_usd" | cut -d ":" -f2 | cut -d '"' -f2)
ethprice=$(curl -s https://api.coinmarketcap.com/v1/ticker/Ethereum/ | grep "price_usd" | cut -d ":" -f2 | cut -d '"' -f2)
monprice=$(curl -s https://api.coinmarketcap.com/v1/ticker/monero/ | grep "price_usd" | cut -d ":" -f2 | cut -d '"' -f2)
zcoinprice=$(curl -s https://api.coinmarketcap.com/v1/ticker/zcoin/ | grep "price_usd" | cut -d ":" -f2 | cut -d '"' -f2)
dashprice=$(curl -s https://api.coinmarketcap.com/v1/ticker/dash/ | grep "price_usd" | cut -d ":" -f2 | cut -d '"' -f2)
zcoinprice=$(curl -s https://api.coinmarketcap.com/v1/ticker/zcoin/ | grep "price_usd" | cut -d ":" -f2 | cut -d '"' -f2)
bitcoincash=$(curl -s https://api.coinmarketcap.com/v1/ticker/bitcoin-cash/ | grep "price_usd" | cut -d ":" -f2 | cut -d '"' -f2)
digibyte=$(curl -s https://api.coinmarketcap.com/v1/ticker/digibyte/ | grep "price_usd" | cut -d ":" -f2 | cut -d '"' -f2)
echo ' '
echo "$(tput smul)CURRENT PRICES:$(tput rmul)"
echo "BTC:"$(tput setaf 3) $btcprice $(tput sgr0) 
echo "BCH:"$(tput setaf 6) $bitcoincash $(tput sgr0)
echo "DSH:"$(tput setaf 8) $dashprice $(tput sgr0)
echo "ETH:"$(tput setaf 2) $ethprice $(tput sgr0)
echo "XMR:"$(tput setaf 1) $monprice $(tput sgr0)
echo "LTC:"$(tput setaf 5) $ltcprice $(tput sgr0)
echo "XZC:"$(tput setaf 10) $zcoinprice $(tput sgr0)
echo "DGB:"$(tput setaf 2) $digibyte $(tput sgr0)
echo ' '
echo "$(date +%D)"
echo "$(date +%r)"

