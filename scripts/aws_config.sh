# Copyright (c) 2014, Stanford University
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:
# 1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
# 2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
# 3. Neither the name of the copyright holder nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.


COLOR="\033[1;35m"
COLOR_RST="\033[0m"

# Create main user
echo -e "${COLOR}---Moving AWS config files...---${COLOR_RST}"

  # Move files
  mkdir /home/dataman/.ssh
  mv /home/vagrant/sync/.boto /home/dataman/
  mv /home/vagrant/sync/.s3cfg /home/dataman/
  echo "root" > /home/dataman/.ssh/mysql_root

  # Set permissions
  chown dataman:dataman /home/dataman/.boto
  chown dataman:dataman /home/dataman/.s3cfg
  chmod 700 /home/dataman/.boto
  chmod 700 /home/dataman/.s3cfg
  chown -R dataman:dataman /home/dataman/.ssh/
  chmod -R 700 /home/dataman/.ssh

  # Clean up sync directory
  sudo rm -rf /home/vagrant/sync
