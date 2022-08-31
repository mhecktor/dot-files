brew install kubectl colima

if command -v colima
then
    colima start --with-kubernetes -r containerd --cpu 6 --memory 20 --disk 60
    colima nerdctl install
fi