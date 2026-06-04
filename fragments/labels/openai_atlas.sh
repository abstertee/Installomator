openai_atlas)
    name="ChatGPT Atlas"
    type="dmg"
    if [[ $(arch) == "arm64" ]]; then
        downloadURL="https://persistent.oaistatic.com/atlas/public/ChatGPT_Atlas.dmg"
    else
        printlog "ChatGPT Atlas is only compatible with Apple Silicon (arm64) Macs." ERROR
        cleanupAndExit 95 "ChatGPT Atlas requires Apple Silicon" ERROR
    fi
    appNewVersion="$(curl -fs "https://persistent.oaistatic.com/atlas/public/sparkle_public_appcast.xml" | grep -o '<sparkle:shortVersionString>[^<]*' | head -1 | cut -d '>' -f 2)"
    expectedTeamID="2DC432GLL2"
    ;;
