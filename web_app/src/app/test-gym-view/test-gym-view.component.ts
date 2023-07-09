import { Component, OnInit } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { DomSanitizer, SafeResourceUrl } from '@angular/platform-browser';


@Component({
  selector: 'app-test-gym-view',
  templateUrl: './test-gym-view.component.html',
  styleUrls: ['./test-gym-view.component.css']
})


export class TestGymViewComponent implements OnInit {

  images: string[] = [];
  selectedImage:string | undefined;
  decodedImageUrlSmallLatentSpace: SafeResourceUrl | undefined;
  decodedImageUrlMediumLatentSpace: SafeResourceUrl | undefined;
  decodedImageUrlLargeLatentSpace: SafeResourceUrl | undefined;

  constructor(private http: HttpClient,private sanitizer: DomSanitizer) {}



  ngOnInit(): void {
    this.readImages();
  }

  readImages(){
    const imagesPath = './assets/images';
    for (let i = 105; i <= 119; i++) {
      const imagePath = `${imagesPath}/image_${i.toString()}.jpg`;
      console.log(imagePath)
      this.images.push(imagePath);
    }
  }



  selectImage(imagePath:string){
    this.selectedImage=imagePath;
  }


  decodeImage(imageEncoded:any){
    const decodedImageUrl = this.sanitizer.bypassSecurityTrustResourceUrl('data:image/jpeg;base64,' + imageEncoded);
    return decodedImageUrl
  }

  async sendImageToServer() {
    if(this.selectedImage != undefined){
      try {
        const imageBlob = await fetch(this.selectedImage).then((response) => response.blob());

        const formData = new FormData();
        formData.append('image', imageBlob, 'image_105.jpg');

        this.http.post<any>('http://localhost:9002/model/denoising/', formData).subscribe(response => {
          this.decodedImageUrlSmallLatentSpace= this.decodeImage(response.small_latent_space_image);
          this.decodedImageUrlMediumLatentSpace= this.decodeImage(response.medium_latent_space_image);
          this.decodedImageUrlLargeLatentSpace= this.decodeImage(response.large_latent_space_image);
      })

      } catch (error) {
        console.error('Error occurred while sending the image:', error);
      }
    }
  }




}

