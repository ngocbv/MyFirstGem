# How to build a gem is signed and verified

### 1. Create self-signed gem cert
```
cd ~/.ssh
# replace your email
gem cert --build neversmile12b1@gmail.com
chmod 600 gem-p*
```
### 2. Configure gemspec with cert
- Add cert public key to your repository
```
cd /path/to/your/gem
mkdir certs
cp ~/.ssh/gem-public_cert.pem certs/public_cert.pem
git add certs/public_cert.pem
```
-Add cert paths to your gemspec
```
s.cert_chain  = ['certs/public_cert.pem']
s.signing_key = File.expand_path("~/.ssh/gem-private_key.pem") if $0 =~ /gem\z/
```
### 3. Add your own cert to your approved list, just like anyone else
```
gem cert --add certs/public_cert.pem
```
### 4. Build gem and test that you can install it
```
gem build gemname.gemspec
gem install gemname-version.gem -P HighSecurity
# or -P MediumSecurity if your gem depends on unsigned gems
```

### For more information
If SSL Certificate error, we can fix http://guides.rubygems.org/ssl-certificate-update/
