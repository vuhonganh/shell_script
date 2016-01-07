function test_dirname_basename()
{
    echo 
    echo "Finding behavior of dirname and basename:"
    echo 
    for DEP in bms/2-5-0 bms/python_libs/1-0-0-0 ccache/3-1-6 oracle/10-2-0-3 oracle/10-2-0-4 python/2-7-6-0 toolchain/amd64_2_6_16/1-0-0-0; do
	#sync_component nomad/linux/`dirname $DEP` `basename $DEP`
	echo "\${DEP} =  ${DEP}"
	vardir=`dirname $DEP`
	varbase=`basename $DEP`
	echo "dirname \${DEP} is $vardir "
	echo "basename \${DEP} is $varbase "
	echo
    done
    wait
    #unset COMPONENT VERSION
    #bms --version >/dev/null 2>&1 || failed_sync
}
test_dirname_basename
