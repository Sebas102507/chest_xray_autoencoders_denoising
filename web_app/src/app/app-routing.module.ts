import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { HomeViewComponent } from './home-view/home-view.component';
import { TestGymViewComponent } from './test-gym-view/test-gym-view.component';

const routes: Routes = [
  { path: 'Gym', component: TestGymViewComponent},
  { path: '', component: HomeViewComponent},
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
