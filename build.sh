##
# Copyright Smith Micro Software, Inc. 2016
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
##

# build the base image for both libdispatch and swift3-base
docker build --tag swift3-base --file Dockerfile-base .
# build the libdispatch image based on swift3-base
docker build --tag swift3-libdispatch --file Dockerfile-libdispatch .
# run and copy the tar.gz file from the root to the host
docker run --name libdispatch swift3-libdispatch
docker cp libdispatch:/libdispatch.tar.gz .
# build the final swift3-slim image
docker build --tag swift3-slim .
# cleanup
rm libdispatch.tar.gz
docker stop libdispatch
docker rm libdispatch
