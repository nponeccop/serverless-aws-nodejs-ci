FROM public.ecr.aws/lambda/nodejs:12
RUN yum install -y git gcc-c++ make tar
ENV PATH=/root/.yarn/bin:/root/.config/yarn/global/node_modules/.bin:/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
RUN (curl -o- -L https://yarnpkg.com/install.sh | bash) && yarn cache clean
RUN yarn global add serverless serverless-{offline,prune-plugin} && yarn cache clean
