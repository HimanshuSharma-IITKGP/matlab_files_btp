function out = model
%
% temp.m
%
% Model exported on Jul 17 2024, 00:12 by COMSOL 6.0.0.318.

import com.comsol.model.*
import com.comsol.model.util.*

model = ModelUtil.create('Model');

model.modelPath('C:\Users\Himanshu\Documents\COMSOL files\thin film\SM and GFPDE thin film + DIS verification');

model.param.set('r', '0.1');
model.param.descr('r', '');
model.param.set('nu', '0.28');
model.param.descr('nu', '');
model.param.set('Yo', '90.13e9');
model.param.descr('Yo', '');
model.param.set('alp', '0.18');
model.param.descr('alp', '');
model.param.set('Vmb', '1.2052e-5');
model.param.descr('Vmb', '');
model.param.set('Rg', '8.314');
model.param.descr('Rg', '');
model.param.set('T', '300');
model.param.descr('T', '');
model.param.set('eta', '0.2356');
model.param.descr('eta', '');
model.param.set('amax', '4.4');
model.param.descr('amax', '4.4');
model.param.set('Ao', '-0.3063*96472');
model.param.descr('Ao', '');
model.param.set('Bo', '-0.4003*96472');
model.param.descr('Bo', '');
model.param.set('etaE', '-0.1464');
model.param.descr('etaE', '');
model.param.set('Jo', '0.1');
model.param.descr('Jo', '');
model.param.set('Do', '1e-16');
model.param.descr('Do', '');
model.param.set('SCF', '0');
model.param.descr('SCF', '');
model.param.set('Om', '0.014e-27*6.022e23');
model.param.descr('Om', '');
model.param.set('Sf', '0.5e9');
model.param.descr('Sf', '');
model.param.set('Ro', '2e-7');
model.param.descr('Ro', '');
model.param.set('dodot', '0.4');
model.param.descr('dodot', '');
model.param.set('m', '4');
model.param.descr('m', '');
model.param.set('t_ref', '(Ro^2)/Do');
model.param.descr('t_ref', '');
model.param.set('r', '0.1');
model.param.descr('r', '');
model.param.set('nu', '0.28');
model.param.descr('nu', '');
model.param.set('Yo', '90.13e9');
model.param.descr('Yo', '');
model.param.set('alp', '0.18');
model.param.descr('alp', '');
model.param.set('Vmb', '1.2052e-5');
model.param.descr('Vmb', '');
model.param.set('Rg', '8.314');
model.param.descr('Rg', '');
model.param.set('T', '300');
model.param.descr('T', '');
model.param.set('eta', '0.2356');
model.param.descr('eta', '');
model.param.set('amax', '4.4', '4.4');
model.param.set('amax', '4.4');
model.param.descr('amax', '4.4');
model.param.set('Ao', '-0.3063*96472');
model.param.descr('Ao', '');
model.param.set('Bo', '-0.4003*96472');
model.param.descr('Bo', '');
model.param.set('etaE', '-0.1464');
model.param.descr('etaE', '');
model.param.set('Jo', '0.1');
model.param.descr('Jo', '');
model.param.set('Do', '1e-16');
model.param.descr('Do', '');
model.param.set('SCF', '0');
model.param.descr('SCF', '');
model.param.set('Om', '0.014e-27*6.022e23');
model.param.descr('Om', '');
model.param.set('Sf', '0.5e9');
model.param.descr('Sf', '');
model.param.set('Ro', '2e-7');
model.param.descr('Ro', '');
model.param.set('dodot', '0.4');
model.param.descr('dodot', '');
model.param.set('m', '4');
model.param.descr('m', '');
model.param.set('t_ref', '(Ro^2)/Do');
model.param.descr('t_ref', '');
model.param.remove({'Ao' 'Bo'});
model.param.remove('alp');
model.param.remove({'dodot' 'm'});
model.param.remove('Sf');

model.modelNode.create('comp1', true);

model.geom.create('geom1', 2);
model.geom('geom1').model('comp1');

model.mesh.create('mesh1', 'geom1');

model.physics.create('g', 'GeneralFormPDE', 'geom1', {'u'});

model.geom('geom1').run;

model.physics.create('g2', 'GeneralFormPDE', 'geom1', {'u2'});

model.geom('geom1').create('r1', 'Rectangle');
model.geom('geom1').runPre('fin');

model.variable.create('var1');
model.variable('var1').model('comp1');

model.geom('geom1').run;

model.variable('var1').set('soc', 'intop1(c)');
model.variable('var1').descr('soc', 'different');
model.variable('var1').set('Jc', '1+3*eta*amax*c');
model.variable('var1').descr('Jc', '1+3*eta*amax*c');
model.variable('var1').set('mew', 'Yc/(2*(1+nu))');
model.variable('var1').descr('mew', '');
model.variable('var1').set('lm', 'nu*Yc/((1+nu)*(1-2*nu))');
model.variable('var1').descr('lm', '');
model.variable('var1').set('Yc', 'Yo*(1+etaE*amax*c)*(Vmb/(Rg*T))');
model.variable('var1').descr('Yc', 'Yo*(1+etaE*amax*c)*(Vmb/(Rg*T))');
model.variable('var1').set('dJc', '3*eta*amax');
model.variable('var1').descr('dJc', '');
model.variable('var1').set('dYc', 'Yo*(etaE*amax)*(Vmb/(Rg*T))');
model.variable('var1').descr('dYc', '');
model.variable('var1').set('dmew', 'dYc/(2*(1+nu))');
model.variable('var1').descr('dmew', '');
model.variable('var1').set('dlm', 'nu*dYc/((1+nu)*(1-2*nu))');
model.variable('var1').descr('dlm', '');
model.variable('var1').set('soc', 'intop1(c)', 'different');
model.variable('var1').set('soc', 'intop1(c)');
model.variable('var1').descr('soc', 'different');
model.variable('var1').set('Jc', '1+3*eta*amax*c', '1+3*eta*amax*c');
model.variable('var1').set('Jc', '1+3*eta*amax*c');
model.variable('var1').descr('Jc', '1+3*eta*amax*c');
model.variable('var1').set('mew', 'Yc/(2*(1+nu))');
model.variable('var1').descr('mew', '');
model.variable('var1').set('lm', 'nu*Yc/((1+nu)*(1-2*nu))');
model.variable('var1').descr('lm', '');
model.variable('var1').set('Yc', 'Yo*(1+etaE*amax*c)*(Vmb/(Rg*T))', 'Yo*(1+etaE*amax*c)*(Vmb/(Rg*T))');
model.variable('var1').set('Yc', 'Yo*(1+etaE*amax*c)*(Vmb/(Rg*T))');
model.variable('var1').descr('Yc', 'Yo*(1+etaE*amax*c)*(Vmb/(Rg*T))');
model.variable('var1').set('dJc', '3*eta*amax');
model.variable('var1').descr('dJc', '');
model.variable('var1').set('dYc', 'Yo*(etaE*amax)*(Vmb/(Rg*T))');
model.variable('var1').descr('dYc', '');
model.variable('var1').set('dmew', 'dYc/(2*(1+nu))');
model.variable('var1').descr('dmew', '');
model.variable('var1').set('dlm', 'nu*dYc/((1+nu)*(1-2*nu))');
model.variable('var1').descr('dlm', '');

model.physics('g').label('c');
model.physics('g').prop('ShapeProperty').set('frame', 'material');
model.physics('g').field('dimensionless').field('c');
model.physics('g').field('dimensionless').component(1, 'c');
model.physics('g2').label('u, v');
model.physics('g2').prop('Units').setIndex('CustomSourceTermUnit', 1, 0, 0);
model.physics('g').prop('Units').setIndex('CustomSourceTermUnit', 1, 0, 0);
model.physics('g').feature('gfeq1').setIndex('Ga', {'(r^2)*jx' '-uy'}, 0);
model.physics('g').feature('gfeq1').setIndex('Ga', {'(r^2)*jx' 'r*jy'}, 0);
model.physics('g').feature('gfeq1').setIndex('f', 0, 0);
model.physics('g').feature('init1').set('c', 'eps');
model.physics('g').create('flux1', 'FluxBoundary', 1);
model.physics('g').feature('flux1').selection.set([3]);
model.physics('g').feature('flux1').setIndex('g', 'Jo*(1-c)', 0);
model.physics('g2').field('dimensionless').field('u');
model.physics('g2').field('dimensionless').component({'u2' 'u3'});
model.physics('g2').field('dimensionless').component(1, 'u');
model.physics('g2').field('dimensionless').component(2, 'v');
model.physics('g2').prop('ShapeProperty').set('frame', 'material');

model.variable.create('var2');
model.variable('var2').model('comp1');

model.cpl.create('intop1', 'Integration', 'geom1');
model.cpl('intop1').set('axisym', true);
model.cpl('intop1').selection.set([1]);
model.cpl('intop1').set('frame', 'material');

model.variable('var1').remove({'dJc' 'dYc' 'dmew' 'dlm'});
model.variable('var2').set('Fxx', '1+r*ux');
model.variable('var2').descr('Fxx', '');
model.variable('var2').set('Fxy', 'uy');
model.variable('var2').descr('Fxy', '');
model.variable('var2').set('Fyx', 'r*vx');
model.variable('var2').descr('Fyx', '');
model.variable('var2').set('Fyy', '1+vy');
model.variable('var2').descr('Fyy', '');
model.variable('var2').set('J', 'Fxx*Fyy-Fxy*Fyx');
model.variable('var2').descr('J', 'det(F)');
model.variable('var2').set('Fexx', 'Jc^(-1/3)*(Fxx*(Lmyy) - Fxy*(Lmyx))*(Lmzz)');
model.variable('var2').descr('Fexx', '');
model.variable('var2').set('Fexy', 'Jc^(-1/3)*(Fxy*(Lmxx) - Fxx*(Lmxy))*(Lmzz)');
model.variable('var2').descr('Fexy', '');
model.variable('var2').set('Feyx', 'Jc^(-1/3)*(Fyx*(Lmyy) - Fyy*(Lmyx))*(Lmzz)');
model.variable('var2').descr('Feyx', '');
model.variable('var2').set('Feyy', 'Jc^(-1/3)*(Fyy*(Lmxx)- Fyx*(Lmxy))*(Lmzz)');
model.variable('var2').descr('Feyy', '');
model.variable('var2').set('Fezz', 'Jc^(-1/3)*(Lmzz)^-1');
model.variable('var2').descr('Fezz', '');
model.variable('var2').set('Lmzz', '1/((Lmxx*Lmyy - Lmxy*Lmyx))');
model.variable('var2').descr('Lmzz', '');
model.variable('var2').set('Exx', '(Fexx^2 + Feyx^2 - 1)/2');
model.variable('var2').descr('Exx', '');
model.variable('var2').set('Exy', '(Fexx*Fexy + Feyx*Feyy)/2');
model.variable('var2').descr('Exy', '');
model.variable('var2').set('Eyy', '(Fexy^2 + Feyy^2 - 1)/2');
model.variable('var2').descr('Eyy', '');
model.variable('var2').set('Ezz', '(Fezz^2 - 1)/2');
model.variable('var2').descr('Ezz', '');
model.variable('var2').set('Sxx', '(Seyy*Lmxy^2 - 2*Sexy*Lmxy*Lmyy + Sexx*Lmyy^2)/(Jc^(2/3)*(Lmxx*Lmyy - Lmxy*Lmyx)^2)');
model.variable('var2').descr('Sxx', 'different');
model.variable('var2').set('Syy', '(Seyy*Lmxx^2 - 2*Sexy*Lmxx*Lmyx + Sexx*Lmyx^2)/(Jc^(2/3)*(Lmxx*Lmyy - Lmxy*Lmyx)^2)');
model.variable('var2').descr('Syy', 'different');
model.variable('var2').set('Szz', 'Sezz/(Jc^(2/3)*Lmzz^2)');
model.variable('var2').descr('Szz', '');
model.variable('var2').set('Sxy', '(Lmxx*Lmyy*Sexy + Lmxy*Lmyx*Sexy - Lmyx*Lmyy*Sexx - Lmxx*Lmxy*Seyy)/(Jc^(2/3)*(Lmxx*Lmyy - Lmxy*Lmyx)^2)');
model.variable('var2').descr('Sxy', 'different');
model.variable('var2').set('Sh', '((Sxx+Syy+Szz)/3)');
model.variable('var2').descr('Sh', '');
model.variable('var2').set('Sexx', 'Jc*(2*mew*Exx+lm*(Exx+Eyy+Ezz))');
model.variable('var2').descr('Sexx', '');
model.variable('var2').set('Seyy', 'Jc*(2*mew*Eyy+lm*(Exx+Eyy+Ezz))');
model.variable('var2').descr('Seyy', '');
model.variable('var2').set('Sezz', 'Jc*(2*mew*Ezz+lm*(Exx+Eyy+Ezz))');
model.variable('var2').descr('Sezz', '');
model.variable('var2').set('Sexy', 'Jc*(2*mew*Exy)');
model.variable('var2').descr('Sexy', '');
model.variable('var2').set('Pxx', 'Fxx*Sxx+Fxy*Sxy');
model.variable('var2').descr('Pxx', '');
model.variable('var2').set('Pxy', 'Fxx*Sxy+Fxy*Syy');
model.variable('var2').descr('Pxy', '');
model.variable('var2').set('Pyx', 'Fyx*Sxx+Fyy*Sxy');
model.variable('var2').descr('Pyx', '');
model.variable('var2').set('Pyy', 'Fyx*Sxy+Fyy*Syy');
model.variable('var2').descr('Pyy', '');
model.variable('var2').set('Pzz', 'Szz');
model.variable('var2').descr('Pzz', '');
model.variable('var2').set('Cxx', '(1/J)*(Fxx*Pxx+Fxy*Pxy)');
model.variable('var2').descr('Cxx', '');
model.variable('var2').set('Cxy', '(1/J)*(Fyx*Pxx+Fyy*Pxy)');
model.variable('var2').descr('Cxy', '');
model.variable('var2').set('Cyx', '(1/J)*(Fxx*Pyx+Fxy*Pyy)');
model.variable('var2').descr('Cyx', '');
model.variable('var2').set('Cyy', '(1/J)*(Fyx*Pyx+Fyy*Pyy)');
model.variable('var2').descr('Cyy', '');
model.variable('var2').set('Czz', '(1/J)*(Pzz)');
model.variable('var2').descr('Czz', '');
model.variable('var2').set('Dxx', 'Cxx-Sh');
model.variable('var2').descr('Dxx', '');
model.variable('var2').set('Dxy', 'Cxy');
model.variable('var2').descr('Dxy', '');
model.variable('var2').set('Dyx', 'Cyx');
model.variable('var2').descr('Dyx', '');
model.variable('var2').set('Dyy', 'Cyy-Sh');
model.variable('var2').descr('Dyy', '');
model.variable('var2').set('Dzz', 'Czz-Sh');
model.variable('var2').descr('Dzz', '');
model.variable('var2').set('Von', 'sqrt(3/2)*sqrt(Dxx^2+Dyy^2+Dzz^2+Dxy^2+Dyx^2)');
model.variable('var2').descr('Von', '');
model.variable('var2').set('Fxx', '1+r*ux');
model.variable('var2').descr('Fxx', '');
model.variable('var2').set('Fxy', 'uy');
model.variable('var2').descr('Fxy', '');
model.variable('var2').set('Fyx', 'r*vx');
model.variable('var2').descr('Fyx', '');
model.variable('var2').set('Fyy', '1+vy');
model.variable('var2').descr('Fyy', '');
model.variable('var2').set('J', 'Fxx*Fyy-Fxy*Fyx', 'det(F)');
model.variable('var2').set('J', 'Fxx*Fyy-Fxy*Fyx');
model.variable('var2').descr('J', 'det(F)');
model.variable('var2').set('Fexx', 'Jc^(-1/3)*(Fxx*(Lmyy) - Fxy*(Lmyx))*(Lmzz)');
model.variable('var2').descr('Fexx', '');
model.variable('var2').set('Fexy', 'Jc^(-1/3)*(Fxy*(Lmxx) - Fxx*(Lmxy))*(Lmzz)');
model.variable('var2').descr('Fexy', '');
model.variable('var2').set('Feyx', 'Jc^(-1/3)*(Fyx*(Lmyy) - Fyy*(Lmyx))*(Lmzz)');
model.variable('var2').descr('Feyx', '');
model.variable('var2').set('Feyy', 'Jc^(-1/3)*(Fyy*(Lmxx)- Fyx*(Lmxy))*(Lmzz)');
model.variable('var2').descr('Feyy', '');
model.variable('var2').set('Fezz', 'Jc^(-1/3)*(Lmzz)^-1');
model.variable('var2').descr('Fezz', '');
model.variable('var2').set('Lmzz', '1/((Lmxx*Lmyy - Lmxy*Lmyx))');
model.variable('var2').descr('Lmzz', '');
model.variable('var2').set('Exx', '(Fexx^2 + Feyx^2 - 1)/2');
model.variable('var2').descr('Exx', '');
model.variable('var2').set('Exy', '(Fexx*Fexy + Feyx*Feyy)/2');
model.variable('var2').descr('Exy', '');
model.variable('var2').set('Eyy', '(Fexy^2 + Feyy^2 - 1)/2');
model.variable('var2').descr('Eyy', '');
model.variable('var2').set('Ezz', '(Fezz^2 - 1)/2');
model.variable('var2').descr('Ezz', '');
model.variable('var2').set('Sxx', '(Seyy*Lmxy^2 - 2*Sexy*Lmxy*Lmyy + Sexx*Lmyy^2)/(Jc^(2/3)*(Lmxx*Lmyy - Lmxy*Lmyx)^2)', 'different');
model.variable('var2').set('Sxx', '(Seyy*Lmxy^2 - 2*Sexy*Lmxy*Lmyy + Sexx*Lmyy^2)/(Jc^(2/3)*(Lmxx*Lmyy - Lmxy*Lmyx)^2)');
model.variable('var2').descr('Sxx', 'different');
model.variable('var2').set('Syy', '(Seyy*Lmxx^2 - 2*Sexy*Lmxx*Lmyx + Sexx*Lmyx^2)/(Jc^(2/3)*(Lmxx*Lmyy - Lmxy*Lmyx)^2)', 'different');
model.variable('var2').set('Syy', '(Seyy*Lmxx^2 - 2*Sexy*Lmxx*Lmyx + Sexx*Lmyx^2)/(Jc^(2/3)*(Lmxx*Lmyy - Lmxy*Lmyx)^2)');
model.variable('var2').descr('Syy', 'different');
model.variable('var2').set('Szz', 'Sezz/(Jc^(2/3)*Lmzz^2)');
model.variable('var2').descr('Szz', '');
model.variable('var2').set('Sxy', '(Lmxx*Lmyy*Sexy + Lmxy*Lmyx*Sexy - Lmyx*Lmyy*Sexx - Lmxx*Lmxy*Seyy)/(Jc^(2/3)*(Lmxx*Lmyy - Lmxy*Lmyx)^2)', 'different');
model.variable('var2').set('Sxy', '(Lmxx*Lmyy*Sexy + Lmxy*Lmyx*Sexy - Lmyx*Lmyy*Sexx - Lmxx*Lmxy*Seyy)/(Jc^(2/3)*(Lmxx*Lmyy - Lmxy*Lmyx)^2)');
model.variable('var2').descr('Sxy', 'different');
model.variable('var2').set('Sh', '((Sxx+Syy+Szz)/3)');
model.variable('var2').descr('Sh', '');
model.variable('var2').set('Sexx', 'Jc*(2*mew*Exx+lm*(Exx+Eyy+Ezz))');
model.variable('var2').descr('Sexx', '');
model.variable('var2').set('Seyy', 'Jc*(2*mew*Eyy+lm*(Exx+Eyy+Ezz))');
model.variable('var2').descr('Seyy', '');
model.variable('var2').set('Sezz', 'Jc*(2*mew*Ezz+lm*(Exx+Eyy+Ezz))');
model.variable('var2').descr('Sezz', '');
model.variable('var2').set('Sexy', 'Jc*(2*mew*Exy)');
model.variable('var2').descr('Sexy', '');
model.variable('var2').set('Pxx', 'Fxx*Sxx+Fxy*Sxy');
model.variable('var2').descr('Pxx', '');
model.variable('var2').set('Pxy', 'Fxx*Sxy+Fxy*Syy');
model.variable('var2').descr('Pxy', '');
model.variable('var2').set('Pyx', 'Fyx*Sxx+Fyy*Sxy');
model.variable('var2').descr('Pyx', '');
model.variable('var2').set('Pyy', 'Fyx*Sxy+Fyy*Syy');
model.variable('var2').descr('Pyy', '');
model.variable('var2').set('Pzz', 'Szz');
model.variable('var2').descr('Pzz', '');
model.variable('var2').set('Cxx', '(1/J)*(Fxx*Pxx+Fxy*Pxy)');
model.variable('var2').descr('Cxx', '');
model.variable('var2').set('Cxy', '(1/J)*(Fyx*Pxx+Fyy*Pxy)');
model.variable('var2').descr('Cxy', '');
model.variable('var2').set('Cyx', '(1/J)*(Fxx*Pyx+Fxy*Pyy)');
model.variable('var2').descr('Cyx', '');
model.variable('var2').set('Cyy', '(1/J)*(Fyx*Pyx+Fyy*Pyy)');
model.variable('var2').descr('Cyy', '');
model.variable('var2').set('Czz', '(1/J)*(Pzz)');
model.variable('var2').descr('Czz', '');
model.variable('var2').set('Dxx', 'Cxx-Sh');
model.variable('var2').descr('Dxx', '');
model.variable('var2').set('Dxy', 'Cxy');
model.variable('var2').descr('Dxy', '');
model.variable('var2').set('Dyx', 'Cyx');
model.variable('var2').descr('Dyx', '');
model.variable('var2').set('Dyy', 'Cyy-Sh');
model.variable('var2').descr('Dyy', '');
model.variable('var2').set('Dzz', 'Czz-Sh');
model.variable('var2').descr('Dzz', '');
model.variable('var2').set('Von', 'sqrt(3/2)*sqrt(Dxx^2+Dyy^2+Dzz^2+Dxy^2+Dyx^2)');
model.variable('var2').descr('Von', '');
model.variable('var2').set('Fxx', '1+r*uX');
model.variable('var2').set('Fxy', 'uY');
model.variable('var2').set('Fyx', 'r*vX');
model.variable('var2').set('Fyy', '1+vY');

model.baseSystem('none');

model.variable.create('var3');
model.variable('var3').model('comp1');
model.variable('var3').set('jx', '-cX');
model.variable('var3').set('jy', '-cY/r');

model.physics('g2').feature('gfeq1').setIndex('Ga', {'Pxx' '-u2y'}, 0);
model.physics('g2').feature('gfeq1').setIndex('Ga', {'Pxx' 'r*Pxy'}, 0);
model.physics('g2').feature('gfeq1').setIndex('Ga', {'Pxx*r' 'r*Pxy'}, 0);
model.physics('g2').feature('gfeq1').setIndex('Ga', {'Pxx*r' 'Pxy'}, 0);
model.physics('g2').feature('gfeq1').setIndex('Ga', {'R*Pyx' '-u3y'}, 1);
model.physics('g2').feature('gfeq1').setIndex('Ga', {'R*Pyx' 'Pyy'}, 1);
model.physics('g2').feature('gfeq1').setIndex('Ga', {'r*Pyx' 'Pyy'}, 1);
model.physics('g2').feature('gfeq1').setIndex('f', 0, 0);
model.physics('g2').feature('gfeq1').setIndex('f', 0, 1);
model.physics('g2').feature('gfeq1').setIndex('da', 0, 0);
model.physics('g2').feature('gfeq1').setIndex('da', 0, 3);
model.physics('g2').create('dir1', 'DirichletBoundary', 1);
model.physics('g2').feature('dir1').selection.set([2]);
model.physics('g').feature('init1').set('c', 0);

model.study.create('std1');
model.study('std1').create('time', 'Transient');
model.study('std1').feature('time').setSolveFor('/physics/g', true);
model.study('std1').feature('time').setSolveFor('/physics/g2', true);

model.mesh('mesh1').automatic(false);
model.mesh('mesh1').feature('size').set('hauto', 2);
model.mesh('mesh1').run;

model.sol.create('sol1');
model.sol('sol1').study('std1');

model.study('std1').feature('time').set('notlistsolnum', 1);
model.study('std1').feature('time').set('notsolnum', 'auto');
model.study('std1').feature('time').set('listsolnum', 1);
model.study('std1').feature('time').set('solnum', 'auto');

model.sol('sol1').create('st1', 'StudyStep');
model.sol('sol1').feature('st1').set('study', 'std1');
model.sol('sol1').feature('st1').set('studystep', 'time');
model.sol('sol1').create('v1', 'Variables');
model.sol('sol1').feature('v1').set('control', 'time');
model.sol('sol1').create('t1', 'Time');
model.sol('sol1').feature('t1').set('tlist', 'range(0,0.1,1)');
model.sol('sol1').feature('t1').set('plot', 'off');
model.sol('sol1').feature('t1').set('plotgroup', 'Default');
model.sol('sol1').feature('t1').set('plotfreq', 'tout');
model.sol('sol1').feature('t1').set('probesel', 'all');
model.sol('sol1').feature('t1').set('probes', {});
model.sol('sol1').feature('t1').set('probefreq', 'tsteps');
model.sol('sol1').feature('t1').set('atolglobalvaluemethod', 'factor');
model.sol('sol1').feature('t1').set('endtimeinterpolation', true);
model.sol('sol1').feature('t1').set('control', 'time');
model.sol('sol1').feature('t1').create('seDef', 'Segregated');
model.sol('sol1').feature('t1').create('fc1', 'FullyCoupled');
model.sol('sol1').feature('t1').feature('fc1').set('linsolver', 'dDef');
model.sol('sol1').feature('t1').feature.remove('fcDef');
model.sol('sol1').feature('t1').feature.remove('seDef');
model.sol('sol1').attach('std1');

model.result.create('pg1', 'PlotGroup2D');
model.result('pg1').set('data', 'dset1');
model.result('pg1').create('surf1', 'Surface');
model.result('pg1').feature('surf1').set('expr', 'c');
model.result.create('pg2', 'PlotGroup2D');
model.result('pg2').set('data', 'dset1');
model.result('pg2').create('surf1', 'Surface');
model.result('pg2').feature('surf1').set('expr', 'u');
model.result.remove('pg2');
model.result.remove('pg1');

model.variable('var2').set('Lmyy', '1');
model.variable('var2').set('Lmxx', '1');
model.variable('var2').set('Lmxy', '0');
model.variable('var2').set('Lmyx', '0');
model.variable('var2').remove('Lmzz');
model.variable('var2').set('Lmzz', '1');

model.sol('sol1').study('std1');

model.study('std1').feature('time').set('notlistsolnum', 1);
model.study('std1').feature('time').set('notsolnum', 'auto');
model.study('std1').feature('time').set('listsolnum', 1);
model.study('std1').feature('time').set('solnum', 'auto');

model.sol('sol1').feature.remove('t1');
model.sol('sol1').feature.remove('v1');
model.sol('sol1').feature.remove('st1');
model.sol('sol1').create('st1', 'StudyStep');
model.sol('sol1').feature('st1').set('study', 'std1');
model.sol('sol1').feature('st1').set('studystep', 'time');
model.sol('sol1').create('v1', 'Variables');
model.sol('sol1').feature('v1').set('control', 'time');
model.sol('sol1').create('t1', 'Time');
model.sol('sol1').feature('t1').set('tlist', 'range(0,0.1,1)');
model.sol('sol1').feature('t1').set('plot', 'off');
model.sol('sol1').feature('t1').set('plotgroup', 'Default');
model.sol('sol1').feature('t1').set('plotfreq', 'tout');
model.sol('sol1').feature('t1').set('probesel', 'all');
model.sol('sol1').feature('t1').set('probes', {});
model.sol('sol1').feature('t1').set('probefreq', 'tsteps');
model.sol('sol1').feature('t1').set('atolglobalvaluemethod', 'factor');
model.sol('sol1').feature('t1').set('endtimeinterpolation', true);
model.sol('sol1').feature('t1').set('control', 'time');
model.sol('sol1').feature('t1').create('seDef', 'Segregated');
model.sol('sol1').feature('t1').create('fc1', 'FullyCoupled');
model.sol('sol1').feature('t1').feature('fc1').set('linsolver', 'dDef');
model.sol('sol1').feature('t1').feature.remove('fcDef');
model.sol('sol1').feature('t1').feature.remove('seDef');
model.sol('sol1').attach('std1');

model.result.create('pg1', 'PlotGroup2D');
model.result('pg1').set('data', 'dset1');
model.result('pg1').create('surf1', 'Surface');
model.result('pg1').feature('surf1').set('expr', 'c');
model.result.create('pg2', 'PlotGroup2D');
model.result('pg2').set('data', 'dset1');
model.result('pg2').create('surf1', 'Surface');
model.result('pg2').feature('surf1').set('expr', 'u');
model.result.remove('pg2');
model.result.remove('pg1');
model.result.create('pg1', 'PlotGroup2D');
model.result('pg1').run;
model.result('pg1').label('c');
model.result('pg1').create('surf1', 'Surface');
model.result('pg1').feature('surf1').create('def1', 'Deform');
model.result('pg1').run;
model.result('pg1').feature('surf1').feature('def1').set('expr', {'u' 'v'});
model.result('pg1').feature('surf1').feature('def1').set('scaleactive', true);
model.result('pg1').feature('surf1').feature('def1').set('scale', 1);
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', 9, 0);
model.result('pg1').run;

model.sol('sol1').feature('t1').set('tstepsbdf', 'strict');
model.sol('sol1').feature('t1').set('initialstepbdfactive', true);
model.sol('sol1').feature('t1').set('initialstepbdf', '0.00001');
model.sol('sol1').feature('t1').set('eventtol', '0.000001');
model.sol('sol1').feature('t1').set('stabcntrl', true);

model.study('std1').feature('time').set('tlist', 'range(0,0.001,0.5)');
model.study('std1').feature('time').set('plot', true);

model.sol('sol1').runAll;

model.result('pg1').run;
model.result.create('pg2', 'PlotGroup1D');
model.result('pg2').run;
model.result('pg2').create('lngr1', 'LineGraph');
model.result('pg2').run;
model.result('pg2').label('soc');
model.result('pg2').run;
model.result('pg2').feature('lngr1').selection.set([1]);
model.result('pg2').feature('lngr1').set('expr', 'soc');
model.result('pg2').feature('lngr1').set('xdata', 'expr');
model.result('pg2').feature('lngr1').set('xdataexpr', 't');
model.result('pg2').run;

model.sol('sol1').feature('t1').set('atolglobalvaluemethod', 'manual');
model.sol('sol1').feature('t1').set('atolglobal', '0.000000001');
model.sol('sol1').runAll;

model.result('pg1').run;
model.result('pg2').run;

model.label('GFPDE - thinfilm+planeStrain + DIS - ND.mph');

model.result('pg2').run;
model.result('pg2').run;
model.result('pg1').run;
model.result.dataset.create('cln1', 'CutLine2D');
model.result.dataset('cln1').label('mid along y');
model.result.dataset('cln1').setIndex('genpoints', 0, 1, 0);
model.result.dataset('cln1').setIndex('genpoints', 1, 1, 1);
model.result.dataset('cln1').setIndex('genpoints', 0.5, 0, 0);
model.result.dataset('cln1').setIndex('genpoints', 0.5, 1, 0);
model.result.create('pg3', 'PlotGroup1D');
model.result('pg3').run;
model.result('pg3').label('v along mid y');
model.result('pg3').set('data', 'cln1');
model.result('pg3').setIndex('looplevelinput', 'last', 0);
model.result('pg3').create('lngr1', 'LineGraph');
model.result('pg3').feature('lngr1').set('expr', 'v');
model.result('pg3').feature('lngr1').set('xdata', 'expr');
model.result('pg3').feature('lngr1').set('xdataexpr', 'y');
model.result('pg3').run;
model.result('pg3').run;
model.result.duplicate('pg4', 'pg3');
model.result('pg4').run;
model.result('pg4').label('u along mid x');
model.result.dataset.duplicate('cln2', 'cln1');
model.result.dataset('cln2').label('mid along x');
model.result.dataset('cln2').setIndex('genpoints', 0, 0, 0);
model.result.dataset('cln2').setIndex('genpoints', 0.5, 0, 1);
model.result.dataset('cln2').setIndex('genpoints', 1, 1, 0);
model.result.dataset('cln2').setIndex('genpoints', 0.5, 1, 1);
model.result('pg4').run;
model.result('pg4').set('data', 'cln2');
model.result('pg4').run;
model.result('pg4').run;
model.result('pg4').feature('lngr1').set('expr', 'u');
model.result('pg4').feature('lngr1').set('xdataexpr', 'x');
model.result('pg4').run;
model.result('pg3').run;
model.result('pg4').run;

model.physics('g2').prop('ShapeProperty').set('order', 3);

model.label('GFPDE - thinfilm+planeStrain + DIS - ND.mph');

model.geom('geom1').feature('r1').set('size', {'1/r' '1'});
model.geom('geom1').runPre('fin');
model.geom('geom1').run;

model.variable('var1').set('soc', 'intop1(c)*r');
model.variable('var2').set('Fxx', '1+uX');
model.variable('var2').set('Fyx', 'vX');
model.variable('var3').set('jy', '-cY');

model.physics('g').feature('gfeq1').setIndex('Ga', {'jx' 'r*jy'}, 0);
model.physics('g').feature('gfeq1').setIndex('Ga', {'jx' 'jy'}, 0);
model.physics('g2').feature('gfeq1').setIndex('Ga', {'Pxx' 'Pxy'}, 0);
model.physics('g2').feature('gfeq1').setIndex('Ga', {'Pyx' 'Pyy'}, 1);

model.mesh('mesh1').run;
model.mesh('mesh1').run;
model.mesh('mesh1').feature('size').set('hauto', 1);
model.mesh('mesh1').run;

model.sol('sol1').runAll;

model.result('pg1').run;
model.result('pg3').run;
model.result.dataset('cln1').setIndex('genpoints', '1/(2*r)', 0, 0);
model.result.dataset('cln1').setIndex('genpoints', '1/(2*r)', 1, 0);
model.result.dataset('cln2').setIndex('genpoints', '1/(r)', 1, 0);
model.result('pg3').run;
model.result.duplicate('pg5', 'pg3');
model.result('pg5').run;
model.result('pg5').label('c along mid y');
model.result('pg4').run;
model.result('pg5').run;
model.result('pg5').run;
model.result('pg5').feature('lngr1').set('expr', 'c');
model.result('pg5').run;
model.result('pg2').run;
model.result.move('pg2', 2);
model.result.move('pg2', 3);
model.result.move('pg2', 4);
model.result('pg3').run;
model.result('pg4').run;
model.result('pg5').run;
model.result('pg5').run;
model.result('pg2').run;

model.variable('var2').set('Fxx', '1+ux');
model.variable('var2').set('Fxy', 'uy');
model.variable('var2').set('Fyx', 'vx');
model.variable('var2').set('Fyy', '1+vy');

model.physics('g').prop('ShapeProperty').set('frame', 'spatial');
model.physics('g2').prop('ShapeProperty').set('frame', 'spatial');

model.variable('var3').set('jx', '-cx');
model.variable('var3').set('jy', '-cy');

model.sol('sol1').runAll;

model.result('pg1').run;
model.result('pg3').run;
model.result('pg4').run;

model.physics('g').feature('flux1').setIndex('g', 'Jo*(1-c)*sqrt((Fyy*nx-Fyx*ny)^2+(-Fxy*nx+Fxx*ny)^2)', 0);

model.sol('sol1').runAll;

model.result('pg1').run;
model.result('pg3').run;
model.result('pg4').run;
model.result('pg5').run;
model.result('pg2').run;
model.result('pg4').run;

model.label('GFPDE - thinfilm+planeStrain + DIS - ND.mph');

model.result('pg4').run;
model.result('pg1').run;
model.result('pg5').run;
model.result('pg1').run;

model.sol.create('sol2');
model.sol('sol2').study('std1');
model.sol('sol2').label('Solution with ux');

model.variable('var2').set('Fxx', '1+uX');
model.variable('var2').set('Fxy', 'uY');
model.variable('var2').set('Fyx', 'vX');
model.variable('var2').set('Fyy', '1+vY');
model.variable('var3').set('jx', '-cX');
model.variable('var3').set('jy', '-cY');

model.physics('g').prop('ShapeProperty').set('frame', 'material');
model.physics('g2').prop('ShapeProperty').set('frame', 'material');

model.sol('sol1').runAll;

model.result('pg1').run;

model.physics('g').feature.duplicate('flux2', 'flux1');
model.physics('g').feature('flux2').setIndex('g', 'Jo*(1-c)', 0);
model.physics('g').feature('flux1').active(false);

model.sol('sol2').label('Solution with ux and BC=');
model.sol('sol2').label('Solution with ux and changed BC');
model.sol('sol1').runAll;

model.result('pg1').run;

model.sol.create('sol3');
model.sol('sol3').study('std1');
model.sol('sol3').label('Solution with uX');

model.physics('g2').feature('gfeq1').setIndex('Ga', {'Pxx' 'Pyx'}, 0);
model.physics('g2').feature('gfeq1').setIndex('Ga', {'Pxy' 'Pyy'}, 1);

model.sol('sol1').runAll;

model.result('pg1').run;
model.result('pg3').run;

model.sol('sol1').copySolution('sol4');
model.sol.remove('sol4');
model.sol.create('sol4');
model.sol('sol4').study('std1');
model.sol('sol4').label('Solution with uX and flipped P');

model.result.dataset.create('join1', 'Join');
model.result.dataset('join1').set('data', 'dset3');
model.result.dataset('join1').set('data2', 'dset4');
model.result('pg5').run;
model.result('pg4').run;
model.result.duplicate('pg6', 'pg4');
model.result('pg6').run;
model.result.remove('pg6');
model.result('pg1').run;
model.result.duplicate('pg6', 'pg1');
model.result('pg6').run;
model.result('pg6').label('u diff P and P.T');
model.result('pg6').run;
model.result('pg6').run;
model.result('pg6').set('data', 'join1');
model.result('pg6').run;
model.result('pg6').feature('surf1').set('expr', 'u');
model.result('pg6').run;
model.result('pg6').run;
model.result('pg2').run;
model.result('pg6').run;
model.result.dataset('join1').set('method', 'general');
model.result('pg6').run;
model.result('pg6').run;
model.result('pg6').run;
model.result('pg6').run;
model.result('pg6').run;
model.result('pg6').set('data', 'dset3');
model.result('pg6').run;
model.result('pg6').run;
model.result('pg6').run;
model.result('pg6').run;
model.result.remove('pg6');
model.result('pg1').run;
model.result.duplicate('pg6', 'pg1');
model.result('pg6').run;
model.result('pg2').run;
model.result('pg6').run;
model.result('pg6').run;
model.result('pg6').feature('surf1').set('expr', 'u');
model.result('pg6').run;
model.result('pg6').run;
model.result('pg6').set('data', 'dset2');
model.result('pg6').run;
model.result('pg6').run;
model.result('pg6').run;
model.result('pg6').run;
model.result('pg6').run;
model.result.remove('pg6');
model.result('pg2').run;
model.result('pg4').run;
model.result('pg1').run;
model.result('pg3').run;
model.result('pg4').run;
model.result('pg5').run;
model.result('pg1').run;
model.result('pg1').set('showlegendsmaxmin', true);
model.result.duplicate('pg6', 'pg1');
model.result('pg6').run;
model.result('pg6').label('u');
model.result.move('pg6', 4);
model.result.move('pg6', 3);
model.result.move('pg6', 2);
model.result.move('pg6', 1);
model.result('pg6').run;
model.result('pg6').feature('surf1').set('expr', 'u');
model.result('pg6').run;

model.sol.remove('sol2');
model.sol.remove('sol3');
model.sol.remove('sol4');

model.physics('g2').feature('gfeq1').setIndex('Ga', {'Pxx' 'Pxy'}, 0);
model.physics('g2').feature('gfeq1').setIndex('Ga', {'Pyx' 'Pyy'}, 1);

model.sol('sol1').runAll;

model.result('pg1').run;
model.result('pg6').run;
model.result.duplicate('pg7', 'pg6');
model.result('pg7').run;
model.result.move('pg7', 5);
model.result.move('pg7', 4);
model.result.move('pg7', 3);
model.result.move('pg7', 2);
model.result('pg7').label('v');
model.result('pg3').run;
model.result('pg7').run;
model.result('pg7').run;
model.result('pg7').feature('surf1').set('expr', 'v');
model.result('pg7').run;

model.label('GFPDE - thinfilm+planeStrain + DIS - ND.mph');

model.result('pg7').run;

model.sol('sol1').clearSolutionData;

model.label('GFPDE - thinfilm+planeStrain + DIS - ND without solution - Copy for livelink testing.mph');

model.modelNode.label('Components');

out = model;
