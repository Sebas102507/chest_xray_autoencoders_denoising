import { ComponentFixture, TestBed } from '@angular/core/testing';

import { TestGymViewComponent } from './test-gym-view.component';

describe('TestGymViewComponent', () => {
  let component: TestGymViewComponent;
  let fixture: ComponentFixture<TestGymViewComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ TestGymViewComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(TestGymViewComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
