import { NgModule } from '@angular/core';
import {MatToolbarModule} from '@angular/material/toolbar';
import {MatButtonModule} from '@angular/material/button';
import {MatSidenavModule} from '@angular/material/sidenav';

const myModules = [MatToolbarModule, MatButtonModule, MatSidenavModule];

@NgModule({
    imports: [... myModules],
    exports: [...myModules]
})

export class MaterialModule {}