#!/bin/bash

USER_AGENT="IBOPlayer/1.0"

# Identifiants DINO
LOGIN_DINO="votre_login_dino"
PASS_DINO="votre_mdp_dino"
FILE_DINO="domains_dino.txt"
OUT_DINO="/tmp/domains_up_dino.txt"

# Identifiants TREX
LOGIN_TREX="votre_login_trex"
PASS_TREX="votre_mdp_trex"
FILE_TREX="domains_trex.txt"
OUT_TREX="/tmp/domains_up_trex.txt"

GREEN="\e[32m"
RED="\e[31m"
NC="\e[0m"

check_domains() {
    local profile="$1"
    local login pass file output

    if [[ "$profile" == "dino" ]]; then
        login="$LOGIN_DINO"
        pass="$PASS_DINO"
        file="$FILE_DINO"
        output="$OUT_DINO"
    elif [[ "$profile" == "trex" ]]; then
        login="$LOGIN_TREX"
        pass="$PASS_TREX"
        file="$FILE_TREX"
        output="$OUT_TREX"
    else
        echo -e "${RED}Unknown profile: $profile${NC}"
        return 1
    fi

    echo -e "\n🔍 Testing domains for profile: ${GREEN}${profile^^}${NC}"
    if [[ ! -f "$file" ]]; then
        echo -e "${RED}Missing domain list: $file${NC}"
        return
    fi

    > "$output"
    while IFS= read -r domain; do
        [[ -z "$domain" ]] && continue
        url="${domain}/player_api.php?username=${login}&password=${pass}"
        response=$(curl -s -A "$USER_AGENT" --max-time 5 "$url")
        if echo "$response" | grep -q '"auth"[ ]*:[ ]*1'; then
            echo "$domain" >> "$output"
            echo -e "🟢 $domain is ${GREEN}ONLINE${NC}"
        else
            echo -e "🔴 $domain is ${RED}OFFLINE${NC}"
        fi
    done < "$file"

    echo -e "\n✅ Online domains saved to: $output"
}

while true; do
    echo ""
    echo "========== IPTV DOMAIN TESTER =========="
    echo "1) Test domains for DINO"
    echo "2) Test domains for TREX"
    echo "0) Exit"
    echo "========================================"
    read -p "Choice: " choice
    echo ""

    case "$choice" in
        1) check_domains "dino" ;;
        2) check_domains "trex" ;;
        0) exit 0 ;;
        *) echo -e "${RED}Invalid option.${NC}" ;;
    esac
done
