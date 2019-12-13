# ImagePlacerPackage

![](https://img.shields.io/github/size/vishnu-J/ImagePlacer/Image_Loading_Library/Image_Loading_Library.xcodeproj/project.pbxproj) ![](https://img.shields.io/badge/ImagePlacer-will%20download%20image%20from%20Url%20and%20render%20it%20over%20the%20given%20the%20imageView-orange) ![](https://img.shields.io/badge/ImagePlacer-will%20supporting%20caching-brightgreen)

 ImagePlacerPackage is an swift package manager which is useful to download the image from the URL and render the downloaded image over the given UIImageView or return the image  according to the api and also it supports different levels of caching.
 
 
 ## Requirements
  - iOS 11+
  - XCode 11+
  - Swift 5.1+
  
  
  ## How to download and render over the give ImageView
  
  Below api will download the image from the give URL and place it over the given imageView.
  
 ```
 ImagePlacer.sharedInstance().render(for: <URL>, mountOver: <UIImageView>)
 ```
  * URL - image URL and pass it as a String
  * UIImageView - pass the respective imageView and will render the downloaded image over on it.
  
   ## How to download and get the Image 
 
 Below api will download and return the image.
  ```
  ImagePlacer.sharedInstance().render(for: "<URL>") { (image, error) in
    if error == nil{
        // Render the image 
    }else{
        // Render the default image
    }
  }
   ```
 
 
## Cache
Libary will cache the image in memory and local storage.You can mentioon the cache level like as following.

* Memory Cache:

  By default the library will cache in memory.If you want cache it memory, dont set the cachelevel.

  ```
  ImagePlacer.sharedInstance().cacheLevel = .Memory
  ```

* Disk Cache (Local storage):
  ```
  ImagePlacer.sharedInstance().cacheLevel = .Disk
  ```
  
* If you dont want to cache the image, make cache level as NoCache like below
  
  ```        
  ImagePlacer.sharedInstance().cacheLevel = .NoCache
  ```


