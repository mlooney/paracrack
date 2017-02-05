require 'digest/sha1'
require 'base64'
require 'openssl'


hash = ARGV.shift
salt= ARGV.shift

puts "Crackin! #{Base64.decode64(hash).length} #{hash} #{salt}"
hash = Base64.decode64(hash)

0.upto(9999) do |n|
  k = "%04d"%n
  z =  OpenSSL::PKCS5.pbkdf2_hmac_sha1(k, Base64.decode64(salt), 1000, 20)
  if z == hash 
    puts "Found key: #{k}"
    break
  end
end
