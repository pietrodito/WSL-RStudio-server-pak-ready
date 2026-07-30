# WSL-RStudio-server-pak-ready

## Permet à `pak::pak()` d'installer les dépendances Ubuntu à la volée
+ Paramètrage des dépots Ubuntu en https (WSL + VPN)
+ L'utilisateur rstudio est sudoer sans mot de passe 

## Usage

### Côté WSL
```{bash}
URL_REPO="git@github.com:pietrodito/WSL-RStudio-server-pak-ready.git"
DOCKER_DIR="$HOME/Comp/docker/"
RSTUDIO_USER_FILES="$HOME/Comp/rstudio/"


mkdir -p "$DOCKER_DIR" "$RSTUDIO_USER_FILES"

git clone "$URL_REPO" "$DOCKER_DIR/rstudio-server/"

cd "$DOCKER_DIR/rstudio-server/"
LOCAL_UID=$(id -u) LOCAL_GID=$(id -g) docker compose up -d --build
```

### Côté Windows
+ [http://localhost:8787/](http://localhost:8787/)
+ user = rstudio
+ pswd = asdf

