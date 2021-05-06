# main logic
download_script(){
  echo "--------------------------------------------------"
  echo "Downloading bootstrapper for $1 from $2..."
  wget --verbose https://raw.githubusercontent.com/"$2"/"$3"/"${4:toolkits/virtual-machines/bootstrapper}" -O src/scripts/"$1"
  if [[ $? != "0" ]]; then
    echo "Failed to download bootstrapper link for $1. Error code from Wget executation  was $?"
    echo "If the repository has been renamed or moved, please go to the following link to"
    echo "update it in the registry:"
    echo
    echo "   https://cdrs-deploy.repohubdev.tk/register/submit-update/?template-slug=$1&isWarning=1"
  else
    echo "Success!"
  fi
  echo "--------------------------------------------------"  echo
}

# https://github.com/cdr/deploy-code-server
download_script "deploy-code-server-upstream" "cdr/deploy-code-server" main "deploy-vm/launch-code-server.sh"
sleep 3

# https://github.com/code-server-boilerplates/starter-pack
download_script "example-project" "code-server-boilerplates/starter-pack" main
sleep 3

### template - start ###
#download_script slug-here "owner/repo" branch path/to/bootstrapper-file
#sleep 3
### template - end ###
