function check_process() {
  count=`pidof imwheel | wc -l`
  if [ 0 == $count ]; then
    echo "start imwheel... "	  
    nohup /usr/bin/imwheel >  $HOME/nohup.out 2>&1 &
    #nohup /usr/bin/imwheel 2>&1 > /dev/null &
  else
    echo "imwheel is runing..."  
  fi 
}

check_process
