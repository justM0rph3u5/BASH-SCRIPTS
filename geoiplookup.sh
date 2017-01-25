#!/bin/bash
#prerequisite: geoip package

cat /home/morpheus/iplist.txt | awk &#39;{print $Z}&#39; &gt; ipformat.txt

ipformat.txt|uniq &gt; mainiplist.txt

IP=`cat mainiplist.txt`

for i in $IP

do

echo &quot;$i,`geoiplookup $i | cut -d &quot;,&quot; -f2 | sed -e &#39;s&#39;`&quot; &gt;&gt; info.txt

done
