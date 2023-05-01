uname -r
#проверить текущую версию ядра

sudo yum -y update   
#обновить репозитории программного обеспечения

sudo rpm --import https://www.elrepo.org/RPM-GPG-KEY-elrepo.org
#необходимо включить новый репозиторий (репозиторий ELRepo).

sudo rpm -Uvh https://www.elrepo.org/elrepo-release-7.0-3.el7.elrepo.noarch.rpm
#установите репозиторий ELRepo

sudo yum -y --enablerepo=elrepo-kernel install kernel-ml
#Чтобы установить последнее основное ядро

#sudo yum -y --enablerepo=elrepo-kernel install kernel-lt
#Чтобы установить последнее ядро долгосрочной поддержки
sudo reboot

uname -r