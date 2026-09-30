#!/bin/bash


TTF=./Twemoji.Mozilla.ttf

# 下载 Mozilla 维护的最新 Twemoji (COLR) 字体
curl --location https://github.com/mozilla/twemoji-colr/releases/latest/download/Twemoji.Mozilla.ttf --output $TTF


pyftsubset $TTF \
  --unicodes="U+1F1E6-1F1FF, U+1F3F4, U+E0062-E0063, U+E0065, U+E0067, U+E006C, U+E006E, U+E0073, U+E0077, U+E007F" \
  --layout-features="*" \
  --no-subset-tables+=FFTM \
  --output-file=./TwemojiCountryFlags.ttf

rm $TTF
