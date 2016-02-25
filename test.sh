
mkdir -p result
pushd result
: > laravel_app.md
: > laravel_deault_app.md
: > rails_deault_app.md
: > laravel_artisan_deault_app.md





# wrk -c 110 -t 110 -d 5 http://laravel.horita-works.com/
cnt=10


for i in `seq $cnt`
do
    # laravel_app
    # wrk -c 110 -t 110 -d 5 http://dev.horita-works.com/ >> laravel_app.md
    # echo "\n" >> laravel_app.md

    # # laravel default
    # wrk -c 110 -t 110 -d 5 http://laravel.horita-works.com/ >> laravel_deault_app.md
    # echo "\n" >> laravel_deault_app.md

    # # rails default
    # wrk -c 110 -t 110 -d 5 http://rails.horita-works.com:3000/ >> rails_deault_app.md
    # echo "\n" >> rails_deault_app.md

        # rails default
    wrk -c 110 -t 110 -d 5 http://laravel.horita-works.com:8000/ >> laravel_artisan_deault_app.md
    echo "\n" >> rails_deault_app.md


done

