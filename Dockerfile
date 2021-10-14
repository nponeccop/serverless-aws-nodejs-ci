FROM public.ecr.aws/lambda/nodejs:12
RUN curl --silent --location https://dl.yarnpkg.com/rpm/yarn.repo | sudo tee /etc/yum.repos.d/yarn.repo
RUN yum install -y yarn
RUN yum install -y git gcc-c++ make
RUN yarn global add serverless
