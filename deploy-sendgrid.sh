#!/bin/bash

now=$(date)

./node_modules/.bin/gulp build --production

sed -i 's#assets/img/career.png#https://cdn.mcauto-images-production.sendgrid.net/9da0e7b770003246/d54c12f3-d9cb-44d6-9c0e-f6eb48010057/128x128.png#g' dist/*.html
sed -i 's#assets/img/code.png#https://cdn.mcauto-images-production.sendgrid.net/9da0e7b770003246/2bb46876-88f4-4af5-8895-ad01e4f78da2/128x128.png#g' dist/*.html
sed -i 's#assets/img/concevoir.png#https://cdn.mcauto-images-production.sendgrid.net/9da0e7b770003246/84ced697-0aa6-433e-82ee-d6f7477a5b51/545x533.png#g' dist/*.html
sed -i 's#assets/img/connaitre.png#https://cdn.mcauto-images-production.sendgrid.net/9da0e7b770003246/d3afe7c7-dd71-47fe-87c0-5c70a75c9b11/546x496.png#g' dist/*.html
sed -i 's#assets/img/construire.png#https://cdn.mcauto-images-production.sendgrid.net/9da0e7b770003246/06707bb1-9471-42a6-bbea-17ee7cb65845/554x509.png#g' dist/*.html
sed -i 's#assets/img/database.png#https://cdn.mcauto-images-production.sendgrid.net/9da0e7b770003246/0326d417-f3ad-4a81-80ec-a946f6645621/128x128.png#g' dist/*.html
sed -i 's#assets/img/deployer.png#https://cdn.mcauto-images-production.sendgrid.net/9da0e7b770003246/a165d867-8904-491c-aa01-027bc7d33b77/533x520.png#g' dist/*.html
sed -i 's#assets/img/devops.png#https://cdn.mcauto-images-production.sendgrid.net/9da0e7b770003246/38fd320a-fd30-4921-8e54-241354d9f9d2/128x128.png#g' dist/*.html
sed -i 's#assets/img/docker.png#https://cdn.mcauto-images-production.sendgrid.net/9da0e7b770003246/0e79574c-2eab-400a-9afc-52e5914720d9/128x128.png#g' dist/*.html
sed -i 's#assets/img/html.png#https://cdn.mcauto-images-production.sendgrid.net/9da0e7b770003246/cfdbd229-2624-40f6-8551-f3d2ed740110/128x128.png#g' dist/*.html
sed -i 's#assets/img/javascript.png#https://cdn.mcauto-images-production.sendgrid.net/9da0e7b770003246/e687a98b-2f43-4bff-9725-57395b1af7da/128x128.png#g' dist/*.html
sed -i 's#assets/img/logo.png#https://cdn.mcauto-images-production.sendgrid.net/9da0e7b770003246/d57a4d9b-5f21-411f-a24f-2ddc593b2fb9/300x106.png#g' dist/*.html
sed -i 's#assets/img/network.png#https://cdn.mcauto-images-production.sendgrid.net/9da0e7b770003246/be838c1b-a38c-46c4-a3ca-c3c2b4c4b665/128x128.png#g' dist/*.html
sed -i 's#assets/img/php.png#https://cdn.mcauto-images-production.sendgrid.net/9da0e7b770003246/e571cc03-dea8-4d30-a5fb-5591e47653fa/128x128.png#g' dist/*.html
sed -i 's#assets/img/security.png#https://cdn.mcauto-images-production.sendgrid.net/9da0e7b770003246/4862d3a7-fcb0-46df-b064-81e7b03896c2/128x128.png#g' dist/*.html

sed -i 's#https://github.com/3slab/tech-newsletter/issues/new#{{{unsubscribe}}}#g' dist/*.html
