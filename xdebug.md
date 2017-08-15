## :beetle: Install and Configure xDebug on Ubuntu/Mac and PhpStorm :elephant:

* Assuming that you have already installed php and apache
* **Install [xDebug](https://xdebug.org/docs/install) php extension**
```
# Ubuntu 16.04, php 7.0
sudo apt-get install php-xdebug

# Ubuntu 14.04, php 5.6 
sudo apt-get install php5-xdebug

# Mac OS with Homebrew
# brew install php<version>-xdebug
# Example for php v5.6
brew install php56-xdebug
```

* Now edit your ```php.ini``` (for me it was ```/etc/php/7.0/apache2/php.ini```) and add these lines at last
* You can run ``locate php.ini`` to find `php.ini` file location
```
[Xdebug]
zend_extension="/usr/lib/php/20151012/xdebug.so"
xdebug.remote_enable = 1
xdebug.remote_port = 9000
xdebug.idekey = PHPSTORM
xdebug.max_nesting_level = 512
xdebug.file_link_format = phpstorm://open?%f:%l
```
* Above config is bare minimum, read all options [here](https://xdebug.org/docs/all_settings)
* Make sure **xdebug.so** path is correct in above configuration
* To find the **xdebug.so** file path; run this command
```
locate xdebug.so
```
* Above command will return the correct path to `xdebug.so` file

* Now check php version
```
php --version
```
* Above command should return like this
```
PHP 7.0.15-0ubuntu0.16.04.4 (cli) ( NTS )
Copyright (c) 1997-2017 The PHP Group
Zend Engine v3.0.0, Copyright (c) 1998-2017 Zend Technologies
    with Zend OPcache v7.0.15-0ubuntu0.16.04.4, Copyright (c) 1999-2017, by Zend Technologies
    with Xdebug v2.4.0, Copyright (c) 2002-2016, by Derick Rethans
```
* Notice the Xdebug version in last line
* Restart apache server to reflect changes
```
# Ubuntu
sudo service apache2 restart

# Mac OS
sudo apachectl restart
```
* **Configure phpStorm**
* Go through - Settings >> Languages & Frameworks >> PHP
* Lets set php Interpreter, to do so; click on three dots [...] button
* On the new window; click on plus [+] button and select ```/usr/bin/php``` from suggestion popup
* Save and close this window
* Now, on the Settings window; select the Interpreter you just created then save and close


* **Start debuging**
* In PhpStorm create some [breakpoints](https://www.jetbrains.com/help/phpstorm/breakpoints-2.html) in your project 
* Start listener by clicking on the telephone :telephone_receiver: button on top toolbar
* If you can't find telephone button; then go through menus - Run >> Start listening for PHP Debug connections
* In your browser access your project like this, OR use [bookmarks](https://www.jetbrains.com/phpstorm/marklets/) OR use [this](https://chrome.google.com/webstore/detail/xdebug-helper/eadndfjplgieldjbigjakmdgkmoaaaoc?hl=en) chrome extension
```
http://localdomain.dev/?XDEBUG_SESSION_START=1
```
* You should see a popup window in PhpStorm , click **Accept** connection 
* Done, enjoy debugging !!!

-----

### Disable xdebug (Ubuntu)
```
sudo phpdismod xdebug
```
### Enable xdebug back (Ubuntu)
```
sudo phpenmod xdebug
```

#### Sublime Text 3 user ?
* Try this [package](https://packagecontrol.io/packages/Xdebug%20Client)

### Resources
* [Laravel News](https://laravel-news.com/xdebug-phpstorm-valet)
* [jetBrains](https://www.jetbrains.com/help/phpstorm/configuring-xdebug.html)
* [Laracasts](https://laracasts.com/series/how-to-be-awesome-in-phpstorm/episodes/20)

## Credit 
https://gist.github.com/ankurk91/22e4a07be552790a9d6a063ee1bace05
