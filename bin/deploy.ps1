write-host
write-host ==================================================================
if (( $args[0] -eq "prod" -or $args[0] -eq "dev" ) -and ( $args[1] -eq "down" -or  $args[1] -eq "up" ))
{
#    cd ..
    $fileEnv="docker-compose." +$args[0] + ".yaml"
    $downOrUp=$args[1]
    write-host "Running docker-compose -f docker-compose.yaml -f $fileEnv $downOrUp"
    docker-compose -f docker-compose.yaml -f $fileEnv $downOrUp
}
else
{
    write-host 'Need to follow format ./deploy prod|dev down|up'
}