import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';

@Component({
  selector: 'app-home-view',
  templateUrl: './home-view.component.html',
  styleUrls: ['./home-view.component.css']
})
export class HomeViewComponent implements OnInit {

  constructor(private router: Router) { }

  ngOnInit(): void {
  }

  lauchPaperUrl(){
    const url = "https://www.overleaf.com/read/nmrbwgkjyvrx";
    window.open(url, "_blank");
  }

  launchGym(){
    this.router.navigate(['Gym']);
  }

}
