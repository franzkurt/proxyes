cria regra de log

iptables -A INPUT -s 192.0.2.0/24 -p tcp -j LOG --dport 45 --log-prefix='[iptables] '

/etc/rsyslog

:msg,contains,"[iptables] " /var/log/iptables.log
