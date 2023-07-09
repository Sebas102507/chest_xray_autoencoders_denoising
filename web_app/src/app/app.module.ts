import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { HomeViewComponent } from './home-view/home-view.component';
import { HttpClientModule } from '@angular/common/http';
import { TestGymViewComponent } from './test-gym-view/test-gym-view.component';

@NgModule({
  declarations: [
    AppComponent,
    HomeViewComponent,
    TestGymViewComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    HttpClientModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
