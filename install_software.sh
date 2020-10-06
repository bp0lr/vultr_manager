apt install -y wget git

# this one liner will install goland
# ref: https://github.com/canha/golang-tools-install-script
wget -q -O - https://git.io/vQhTU | bash
source /root/.bashrc

#my tools
go get -u -v github.com/projectdiscovery/httpx/cmd/httpx
go get -u -v github.com/michenriksen/aquatone
go get -u -v github.com/dwisiswant0/unew
go get -u -v github.com/tomnomnom/unfurl
go get -u -v github.com/tomnomnom/anew
go get -u -v github.com/mgumz/knut
go get -u -v github.com/ffuf/ffuf
go get -u -v github.com/lc/gau

go get -u -v github.com/bp0lr/dalfox
go get -u -v github.com/bp0lr/wurl


git clone https://github.com/maurosoria/dirsearch.git /opt/bp0/dirsearch
git clone https://github.com/bp0lr/wordlists.git /opt/bp0/wordlists

###########################################################
# recon
###########################################################
git clone https://github.com/bp0lr/reconme.git /opt/bp0/reconme

cd /opt/bp0/reconme
knut /reconme:/opt/bp0/test/ > /dev/null 2>&1 &