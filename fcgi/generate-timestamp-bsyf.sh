#!/bin/bash
# script generate-timestamp-bsyf.sh
bsyf_timestamp_out=$1
shift

function bsyf_cleanup() {
    rm -vf $bsyf_timestamp_out*
}

trap 
(echo -n 'const char bsyf_lastgitcommit[]="' ; \
 git log --format=oneline --abbrev=12 --abbrev-commit -q  \
     | head -1 | tr -d '\n\r\f\"\\\\' ; \
 echo '";') >> $bsyf_timestamp_out-tmp

if git status|grep -q 'nothing to commit' ; then
    endgitid='";'
else
    endgitid='+";'
fi
(echo -n 'const char bsyf_gitid[]="'; 
 git log --format=oneline -q -1 | cut '-d '  -f1 | tr -d '\n';
     echo $endgitid)  >> $bsyf_timestamp_out-tmp

(echo -n 'const char bsyf_lastgittag[]="'; (git describe --abbrev=0 --all || echo '*notag*') | tr -d '\n\r\f\"\\\\'; echo '";') >> $bsyf_timestamp_out-tmp

(echo -n 'const char bsyf_checksum[]="'; cat $* | md5sum | cut -d' ' -f1 | tr -d '\n\r\f\"\\' ; echo '";') >> $bsyf_timestamp_out-tmp

(echo -n 'const char bsyf_directory[]="'; /bin/pwd | tr -d '\n\\"' ; echo '";') >> $bsyf_timestamp_out-tmp

(echo -n 'const char bsyf_makefile[]="'; echo -n  $(realpath Makefile); echo '";') >> $bsyf_timestamp_out-tmp
