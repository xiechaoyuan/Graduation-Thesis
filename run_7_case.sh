#!/usr/bin/sh
#set -x
cd /xvs_export/SevenInOne/
#1 run stream
echo "+++++++++++++++++++++++++++++++++++++++"
echo "start running stream..."
./stream.sh > stream.log 2>&1 &
sleep 5
pid1=`ps -ef | grep -v "grep" | grep "stream.sh" | awk '{print $2}'`
echo "stream root pid: $pid1"
i=0
while (($i < 2))
do
    sleep 3600
    i=$(($i + 1))
    pid2=`ps -ef | grep -v "grep" | grep "stream.sh" | awk '{print $2}'`
    if [[ $pid1 -eq $pid2 ]];then
        echo "stream has run $i hours"
    else
        echo "stream not exist!!! something wrong!"
        break
    fi
done
echo "It is time to kill stream:$pid2"
kill -9 $pid2 && echo "stream done"
sleep 5
echo "#######################################"


#2 run Gups
echo "+++++++++++++++++++++++++++++++++++++++"
echo "start running Gups..."
./ppv_Gups.sh > Gups.log 2>&1 &
sleep 5
pid1=`ps -ef | grep -v "grep" | grep "ppv_Gups.sh" | awk '{print $2}'`
echo "Gups root pid: $pid1"
i=0
while (($i < 2))
do
    sleep 3600
    i=$(($i + 1))
    pid2=`ps -ef | grep -v "grep" | grep "ppv_Gups.sh" | awk '{print $2}'`
    if [[ $pid1 -eq $pid2 ]];then
        echo "Gups has run $i hours"
    else
        echo "Gups not exist!!! something wrong!"
        break
    fi
done
echo "It is time to kill Gups:$pid2"
kill -9 $pid2 && echo "Gups done"
sleep 5
echo "#######################################"

#3 run Crashme
echo "+++++++++++++++++++++++++++++++++++++++"
echo "start running Crashme..."
./ppv_Crashme.sh > Crashme.log 2>&1 &
sleep 5
pid1=`ps -ef | grep -v "grep" | grep "ppv_Crashme.sh" | awk '{print $2}'`
echo "Crashme root pid: $pid1"
i=0
while (($i < 2))
do
    sleep 3600
    i=$(($i + 1))
    pid2=`ps -ef | grep -v "grep" | grep "ppv_Crashme.sh" | awk '{print $2}'`
    if [[ $pid1 -eq $pid2 ]];then
        echo "Crashme has run $i hours"
    else
        echo "Crashme not exist!!! something wrong!"
        break
    fi
done
echo "It is time to kill Crashme:$pid2"
kill -9 $pid2 && echo "Crashme done"
sleep 5
echo "#######################################"


#4 run Dgemm
echo "+++++++++++++++++++++++++++++++++++++++"
echo "start running Dgemm..."
./ppv_Dgemm.sh > Dgemm.log 2>&1 &
sleep 5
pid1=`ps -ef | grep -v "grep" | grep "ppv_Dgemm.sh" | awk '{print $2}'`
echo "Dgemm root pid: $pid1"
i=0
while (($i < 2))
do
    sleep 3600
    i=$(($i + 1))
    pid2=`ps -ef | grep -v "grep" | grep "ppv_Dgemm.sh" | awk '{print $2}'`
    if [[ $pid1 -eq $pid2 ]];then
        echo "Dgemm has run $i hours"
    else
        echo "Dgemm not exist!!! something wrong!"
        break
    fi
done
echo "It is time to kill Dgemm:$pid2"
kill -9 $pid2 && echo "Dgemm done"
sleep 5
echo "#######################################"


#5 run Sgemm
echo "+++++++++++++++++++++++++++++++++++++++"
echo "start running Sgemm..."
./ppv_Sgemm.sh > Sgemm.log 2>&1 &
sleep 5
pid1=`ps -ef | grep -v "grep" | grep "ppv_Sgemm.sh" | awk '{print $2}'`
echo "Sgemm root pid: $pid1"
i=0
while (($i < 2))
do
    sleep 3600
    i=$(($i + 1))
    pid2=`ps -ef | grep -v "grep" | grep "ppv_Sgemm.sh" | awk '{print $2}'`
    if [[ $pid1 -eq $pid2 ]];then
        echo "Sgemm has run $i hours"
    else
        echo "Sgemm not exist!!! something wrong!"
        break
    fi
done
echo "It is time to kill Sgemm:$pid2"
kill -9 $pid2 && echo "Sgemm done"
sleep 5
echo "#######################################"


#6 run Pstates
echo "+++++++++++++++++++++++++++++++++++++++"
echo "start running Pstates..."
./ppv_Pstates.sh > Pstates.log 2>&1 &
sleep 5
pid1=`ps -ef | grep -v "grep" | grep "ppv_Pstates.sh" | awk '{print $2}'`
echo "Pstates root pid: $pid1"
i=0
while (($i < 2))
do
    sleep 3600
    i=$(($i + 1))
    pid2=`ps -ef | grep -v "grep" | grep "ppv_Pstates.sh" | awk '{print $2}'`
    if [[ $pid1 -eq $pid2 ]];then
        echo "Pstates has run $i hours"
    else
        echo "Pstates not exist!!! something wrong!"
        break
    fi
done
echo "It is time to kill Pstates:$pid2"
kill -9 $pid2 && echo "Pstates done"
sleep 5
echo "#######################################"


#7 run Linpack
echo "+++++++++++++++++++++++++++++++++++++++"
echo "start running Linpack..."
./ppv_Linpack.sh > Linpack.log 2>&1 &
sleep 5
pid1=`ps -ef | grep -v "grep" | grep "ppv_Linpack.sh" | awk '{print $2}'`
echo "Linpack root pid: $pid1"
i=0
while (($i < 2))
do
    sleep 3600
    i=$(($i + 1))
    pid2=`ps -ef | grep -v "grep" | grep "ppv_Linpack.sh" | awk '{print $2}'`
    if [[ $pid1 -eq $pid2 ]];then
        echo "Linpack has run $i hours"
    else
        echo "Linpack not exist!!! something wrong!"
        break
    fi
done
echo "It is time to kill Linpack:$pid2"
kill -9 $pid2 && echo "Linpack done"
sleep 5
echo "#######################################"


#8 run specjbb
#echo "+++++++++++++++++++++++++++++++++++++++"
#echo "start running specjbb..."
#./specjbb.sh > specjbb.log 2>&1 &
#sleep 5
#pid1=`ps -ef | grep -v "grep" | grep "specjbb.sh" | awk '{print $2}'`
#echo "specjbb root pid: $pid1"
#i=0
#while (($i < 2))
#do
#    sleep 3600
#    i=$(($i + 1))
#    pid2=`ps -ef | grep -v "grep" | grep "specjbb.sh" | awk '{print $2}'`
#    if [[ $pid1 -eq $pid2 ]];then
#        echo "specjbb has run $i hours"
#    else
#        echo "specjbb not exist!!! something wrong!"
#        break
#    fi
#done
#echo "It is time to kill specjbb:$pid2"
#kill -9 $pid2 && echo "specjbb done"
#sleep 5
#echo "#######################################"
#
