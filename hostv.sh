#sed -n '/#/!p' /etc/hosts
#sed -r -i '/com/s/^#*//' /etc/hosts

hostClr(){
  for i in '130 dujia' '131 dujia' '132 dujia' '202 dujia' '125 dujia' '190 dujia' '159 dujia' '162 dujia'
    do
      sed -r -i "/$i/s/^.*192/#192/" /etc/hosts
      sed -r -i "/$i/s/^.*10/#10/" /etc/hosts
    done
}

case "$1" in
  host ) sed -n '/^[^#].*com/'p /etc/hosts;;
  uqzz ) sed -r -i '/qunarzz/s/^.*192/#192/' /etc/hosts;;
  sqzz )  sed -r -i '/qunarzz/s/^#*//' /etc/hosts;;
  svc1 ) hostClr; sed -r -i '/130 dujia/s/^#*//' /etc/hosts;;
  svc2 ) hostClr; sed -r -i '/131 dujia/s/^#*//' /etc/hosts;;
  svc3 ) hostClr; sed -r -i '/132 dujia/s/^#*//' /etc/hosts;;
  svc4 ) hostClr; sed -r -i '/202 dujia/s/^#*//' /etc/hosts;;
  svc5 ) hostClr; sed -r -i '/125 dujia/s/^#*//' /etc/hosts;;
  svc6 ) hostClr; sed -r -i '/159 dujia/s/^#*//' /etc/hosts;;
  svc7 ) hostClr; sed -r -i '/162 dujia/s/^#*//' /etc/hosts;;
  sc2 ) hostClr; sed -r -i '/191 dujia/s/^#*//' /etc/hosts;;
  uhost ) sed -i '/com/s/\(^#*\)/#/' /etc/hosts
esac

:<<BLOCK
if [ "$1" == "/etc/hosts" ];then
  sed -n '/com/'p /etc/hosts
fi

if [ "$1" == "qzzoff" ];then
  sed -r -i '/qunarzz/s/^.*192/#192/' /etc/hosts
fi

if [ "$1" == "qzzon" ];then
  sed -r -i '/qunarzz/s/^#*//' /etc/hosts
fi

if [ "$1" == "vc1on" ];then
  hostClr()
  sed -r -i 
fi
BLOCK
