within WasteWater.ASM1;
model Aeration_energy "Fucking not even close to ideal sensor for Kl_fucking_a"

  extends WasteWater.Icons.sensor_O2;

  Modelica.Blocks.Interfaces.RealInput Kla3 annotation (Placement(transformation(
          extent={{-84,30},{-64,50}})));
  Modelica.Blocks.Interfaces.RealInput Kla4 annotation (Placement(transformation(
          extent={{-84,-10},{-64,10}})));
  Modelica.Blocks.Interfaces.RealInput Kla5 annotation (Placement(transformation(
          extent={{-84,-50},{-64,-30}})));

  Real AE(start=0);
  Real T(start=1e-3);

equation
  der(T) = 1.0;
  der(AE*T) = 2/1.8/1000*1333*(Kla3 + Kla4 + Kla5);

end Aeration_energy;
