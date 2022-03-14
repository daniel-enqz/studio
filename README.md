# AIRBNB CLONE USING RUBY ON RAILS
### CHECK DEPLOYED <img src="https://img.shields.io/badge/Heroku-430098?style=for-the-badge&logo=heroku&logoColor=white"> APP [HERE](https://studiofy-now.herokuapp.com/)

<img src="https://user-images.githubusercontent.com/72522628/158201654-5393ee70-9e3c-4bca-b81e-a5815ec490f7.png" alt="homepage" style="box-shadow: 10px 10px 5px #ccc"/>
<img src="https://user-images.githubusercontent.com/72522628/158202967-3f0ce9b9-e2fd-49d0-8a44-2e311f0e23da.png" alt="studios" style="box-shadow: 10px 10px 5px #ccc"/>
<img src="https://user-images.githubusercontent.com/72522628/158202974-d2d8c39f-290f-4258-9ef8-6bc4539cdeeb.png" alt="booking" style="box-shadow: 10px 10px 5px #ccc"/>

## Main Features
- A user can create/edit/delete a studio
- Users can book/rent a Studio
- Users can access their own dashboard to admin everything
![dashboard](https://user-images.githubusercontent.com/72522628/158240393-7ff6290d-08bd-4a27-a965-4d7226758c81.png)

- Users can see booking status of their created studios
- Heroku Deployment
- Cloudinary (Host user studios images)
- Authetication with Devise
- Policies for authorization with pundit
 ```ruby
 class StudioPolicy < ApplicationPolicy
  def create?
    true
  end

  def show?
    true
  end

  def update?
    record.owner == user
  end
  [...]
```
- Geocoder / Mapbox API
- Search
- Validations

## Things you may want to cover to initialize this project:
> <img src="https://img.shields.io/badge/Ruby-CC342D?style=for-the-badge&logo=ruby&logoColor=white"> <strong> 3.0.3p157 (2021-11-24 revision 3fb7d2cadc) [x86_64-linux]</strong><br>
> <img src="https://img.shields.io/badge/Ruby_on_Rails-CC0000?style=for-the-badge&logo=ruby-on-rails&logoColor=white"> <strong> 6.1.4.6 </strong>
## Setup

```shell
 git clone git@github.com:daniel-enqz/studio.git
 cd studio
 rails db:create db:migrate db:seed:replant
 bundle install
 yarn install
 rails server
```
Open you browser and visit `localhost:3000`
