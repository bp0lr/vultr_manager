cd /root
apt install -y wget git python3 python3-pip

# this one liner will install goland
# ref: https://github.com/canha/golang-tools-install-script
wget -q -O - https://git.io/vQhTU | bash
source /root/.bashrc

echo "alias ls='ls --color=auto'" >> ~/.bashrc 
cat /root/keys.txt >> ~/.bashrc
source ~/.bashrc

rm -rf /root/go/
rm -rf /root/keys.txt

#my tools
go get -u -v github.com/projectdiscovery/chaos-client/cmd/chaos
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

git clone https://github.com/devanshbatham/ParamSpider /opt/bp0/ParamSpider
cd /opt/bp0/ParamSpider
pip3 install -r requirements.txt

###########################################################
# recon
###########################################################
git clone https://github.com/bp0lr/reconme.git /opt/bp0/reconme

cd /opt/bp0/reconme
knut /reconme:/opt/bp0/test/ > /dev/null 2>&1 &