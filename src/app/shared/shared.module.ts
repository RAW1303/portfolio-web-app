import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { NgbModule } from '@ng-bootstrap/ng-bootstrap';
import { GithubIconComponent } from './icons/github-icon/github-icon.component';
import { LinkedinIconComponent } from './icons/linkedin-icon/linkedin-icon.component';

@NgModule({
  declarations: [
    GithubIconComponent,
    LinkedinIconComponent
  ],
  imports: [
    CommonModule,
    FormsModule,
    NgbModule
  ],
  exports: [
    CommonModule,
    FormsModule,
    GithubIconComponent,
    LinkedinIconComponent,
    NgbModule
  ]
})
export class SharedModule { }
