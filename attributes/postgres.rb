# Encoding: UTF-8

# Copyright:: 2019 Brian Dwyer - Intelligent Digital Services
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# => PostgreSQL Driver
default['wildfly']['postgresql'].tap do |postgresql|
  postgresql['enabled'] = true
  postgresql['url'] = 'https://jdbc.postgresql.org/download/postgresql-42.2.5.jar'
  postgresql['checksum'] = '7ffa46f8c619377cdebcd17721b6b21ecf6659850179f96fec3d1035cf5a0cdc'

  # => PostgreSQL driver JDBC Module Name
  postgresql['mod_name'] = 'org.postgresql'
  # => PostgreSQL driver Module Dependencies
  postgresql['mod_deps'] = ['javax.api', 'javax.transaction.api']
  postgresql['mod_deps_optional'] = ['javax.servlet.api']
end
