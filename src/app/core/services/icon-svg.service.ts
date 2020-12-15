import { Injectable } from '@angular/core';
import {DomSanitizer} from '@angular/platform-browser';
import {MatIconRegistry} from '@angular/material/icon';

@Injectable({
  providedIn: 'root'
})
export class IconSvgService {
  private svgFolder = 'assets/svg';
  private svgFiles: Map<string, string> = new Map<string, string>([
    ['github', 'github-icon.svg'],
    ['linkedin', 'linkedin-icon.svg']
  ]);

  constructor(iconRegistry: MatIconRegistry, sanitizer: DomSanitizer) {
    for (const [key, fileName] of this.svgFiles) {
      iconRegistry.addSvgIcon(
        key,
        sanitizer.bypassSecurityTrustResourceUrl(`${this.svgFolder}/${fileName}`));
    }
  }
}
