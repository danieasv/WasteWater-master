within WasteWater.ASM1;
model Mixing_energy_ME "Mixing Energy sensor"

  extends WasteWater.Icons.sensor_O2;

  Modelica.Blocks.Interfaces.RealInput Kla3 annotation (Placement(transformation(
          extent={{-84,30},{-64,50}})));
  Modelica.Blocks.Interfaces.RealInput Kla4 annotation (Placement(transformation(
          extent={{-84,-10},{-64,10}})));
  Modelica.Blocks.Interfaces.RealInput Kla5 annotation (Placement(transformation(
          extent={{-84,-50},{-64,-30}})));
          Modelica.Blocks.Interfaces.RealOutput MEout
    annotation (Placement(transformation(extent={{88,-10},{108,10}})));

  Real ME(start=0);
  Real T(start=1e-3);
  Real Kla[3] = {Kla3,Kla4,Kla5};
  Real Sum = 0;

equation
  der(T) = 1.0;
  for i in 1:3 loop
    if (Kla[i] < 20) then
      Sum =   Sum + 0.005*1333;
    else
      Sum =  Sum + 0;
    end if;
  end for;

  der(ME) = (24/T)*Sum;
  der(MEout) = (24/T)*Sum;

end Mixing_energy_ME;
