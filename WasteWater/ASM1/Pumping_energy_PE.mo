within WasteWater.ASM1;
model Pumping_energy_PE "PE"

  extends WasteWater.Icons.sensor_O2;

  Modelica.Blocks.Interfaces.RealInput Qa annotation (Placement(transformation(
          extent={{-84,30},{-64,50}})));
  Modelica.Blocks.Interfaces.RealInput Qr annotation (Placement(transformation(
          extent={{-84,-10},{-64,10}})));
  Modelica.Blocks.Interfaces.RealInput Qw annotation (Placement(transformation(
          extent={{-84,-50},{-64,-30}})));
          Modelica.Blocks.Interfaces.RealOutput Q[3]
    annotation (Placement(transformation(extent={{88,-10},{108,10}})));

  Real PE(start=0);
  Real T(start=1e-3);

equation
  der(T) = 1.0;
  der(PE) = (1/T)*(0.004*Qa+0.008*Qr+0.05*Qw);

end Pumping_energy_PE;
