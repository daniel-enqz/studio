# AIRBNB CLONE USING RUBY ON RAILS
### CHECK DEPLOYED <img src="https://img.shields.io/badge/Heroku-430098?style=for-the-badge&logo=heroku&logoColor=white"> APP [HERE](https://studiofy-now.herokuapp.com/)

<img src="https://user-images.githubusercontent.com/72522628/158201654-5393ee70-9e3c-4bca-b81e-a5815ec490f7.png" alt="homepage" style="box-shadow: 10px 10px 5px #ccc"/>
<img src="https://user-images.githubusercontent.com/72522628/158202967-3f0ce9b9-e2fd-49d0-8a44-2e311f0e23da.png" alt="studios" style="box-shadow: 10px 10px 5px #ccc"/>

## Main APP Features
- A user can create/edit/delete a studio
- Users can book/rent a Studio
![dashboard](https://user-images.githubusercontent.com/72522628/158202974-d2d8c39f-290f-4258-9ef8-6bc4539cdeeb.png)

- Users can access their own dashboard to admin everything
![dashboard](https://user-images.githubusercontent.com/72522628/158240393-7ff6290d-08bd-4a27-a965-4d7226758c81.png)

- Users can see booking status of their created studios

![Screenshot 2022-03-14 at 12-52-02 Studiofy](https://user-images.githubusercontent.com/72522628/158241582-f698b397-f42a-4482-a06a-7dd360a9cdd9.png)
![Screenshot 2022-03-14 at 12-53-30 Studiofy](https://user-images.githubusercontent.com/72522628/158241595-609bd802-8811-454a-99e0-06c6577afc54.png)
![Screenshot 2022-03-14 at 12-54-02 Studiofy](https://user-images.githubusercontent.com/72522628/158241740-b893e66c-6400-4d87-9c1d-01a6c2409a08.png)

- Users can accept/reject booking

![Screenshot 2022-03-14 at 12-53-50 Studiofy](https://user-images.githubusercontent.com/72522628/158241719-28e8a7b5-3e1f-4ce9-a31f-5e4360d87cb6.png)

- <img src="https://img.shields.io/badge/PostgreSQL-316192?style=for-the-badge&logo=postgresql&logoColor=white">
- Authetication with Devise for users login/signup/password reset etc..
 ```ruby
 devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
 ```
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

## Things you may want to cover to initialize this project:
### Versions
> <img src="https://img.shields.io/badge/Ruby-CC342D?style=for-the-badge&logo=ruby&logoColor=white"> <strong> 3.0.3p157 (2021-11-24 revision 3fb7d2cadc) [x86_64-linux]</strong><br>
> <img src="https://img.shields.io/badge/Ruby_on_Rails-CC0000?style=for-the-badge&logo=ruby-on-rails&logoColor=white"> <strong> 6.1.4.6 </strong>
### Tools Used
> Active Record Example: `rails g model Booking customer:references studio:references start_on:date end_on:date`<br>
> Heroku Deployment
`heroku/7.59.2 linux-x64 node-v12.21.0 `<br>
> Cloudinary (Host user studios images) `config.active_storage.service = :cloudinary` <br>
> Geocoder (Mapbox API) `mapbox-gl`<br>
> Search (transform address into coordinates to be used by mapbox) `@mapbox/mapbox-gl-geocoder`<br>
> Flatpickr ( For Selecting Date feature from calendar ) <br>
> <img src="https://img.shields.io/badge/Bootstrap-563D7C?style=for-the-badge&logo=bootstrap&logoColor=white"> <br>
> Stimulus <br>

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
