import { Component } from '@angular/core';
import { IconSvgService } from './core/services/icon-svg.service';

@Component({
  selector: 'raw-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.scss']
})
export class AppComponent {
  public title = 'raw-portfolio';
  constructor(private iconSvgService: IconSvgService) {}
}
