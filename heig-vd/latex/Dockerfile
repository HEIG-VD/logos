# Dockerfile
FROM debian:bookworm-slim

# Outils indispensables pour TeX Live + fonts
RUN apt-get update && apt-get install -y --no-install-recommends \
    perl wget xz-utils ca-certificates make fontconfig python3 \
 && rm -rf /var/lib/apt/lists/*

# Installer TeX Live en "scheme-minimal"
ENV TEXLIVE_DIR=/usr/local/texlive
ENV TL_TEXMFLOCAL=/usr/local/texlive/texmf-local
ENV PATH=$TEXLIVE_DIR/bin/x86_64-linux:$PATH
RUN mkdir -p /tmp/install-tl && \
    wget -qO- http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz \
      | tar xz -C /tmp/install-tl --strip-components=1 && \
    printf '%s\n' \
      "selected_scheme scheme-minimal" \
      "TEXDIR $TEXLIVE_DIR" \
      "TEXMFLOCAL $TL_TEXMFLOCAL" \
      "TEXMFHOME ~/.texmf" \
      "binary_x86_64-linux 1" \
      "collection-basic 1" \
      "option_doc 0" \
      "option_src 0" \
      > /tmp/texlive.profile && \
    /tmp/install-tl/install-tl -profile /tmp/texlive.profile && \
    tlmgr option repository http://mirror.ctan.org/systems/texlive/tlnet && \
    tlmgr path add

# Installe les mêmes paquets que dans ton CI
RUN tlmgr install \
    latex-bin \
    latex \
    tools \
    xetex \
    luatex \
    l3build

# (optionnel) pour installer automatiquement ce qui manque à la volée
RUN tlmgr install texliveonfly
