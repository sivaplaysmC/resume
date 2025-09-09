set dotenv-load := true

resume:
    typst compile \
      --input mailto_url="${MAIL_TO_URL}" \
      --input mail="${MAIL_}" \
      --input tel_url="${TEL_URL}" \
      --input tel="${TEL}" \
      --input linkedin_url="${LINKEDIN_URL}" \
      --input linkedin="${LINKEDIN}" \
      --input github_url="${GITHUB_URL}" \
      --input github="${GITHUB}" \
      main.typ

watch:
    typst watch \
      --input mailto_url="${MAIL_TO_URL}" \
      --input mail="${MAIL_}" \
      --input tel_url="${TEL_URL}" \
      --input tel="${TEL}" \
      --input linkedin_url="${LINKEDIN_URL}" \
      --input linkedin="${LINKEDIN}" \
      --input github_url="${GITHUB_URL}" \
      --input github="${GITHUB}" \
      main.typ
