set -e

if [ -z "$1"] 
then
  exit
fi
APP="$1"
pushd ./sdk/workspace/
echo "==> make app="""$APP""""
make app="$APP"
echo "==> make upload ip=10.0.10.1 from="""app""" to="""$APP""""
make upload ip=10.0.10.1 from="app" to="$APP"
popd