apt install -y wget git

# this one liner will install goland
# ref: https://github.com/canha/golang-tools-install-script
wget -q -O - https://git.io/vQhTU | bash
source /root/.bashrc

#my tools
go get -u -v github.com/projectdiscovery/httpx/cmd/httpx
go get -u -v github.com/dwisiswant0/unew
go get -u -v github.com/tomnomnom/anew
go get -u -v github.com/ffuf/ffuf
go get -u -v github.com/lc/gau

go get -u -v github.com/bp0lr/dalfox
go get -u -v github.com/bp0lr/wurl
