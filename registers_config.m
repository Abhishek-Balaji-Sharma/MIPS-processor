
function registerfile_config(this_block)

  % Revision History:
  %
  %   24-Oct-2018  (13:31 hours):
  %     Original code was machine generated by Xilinx's System Generator after parsing
  %     C:\Users\abs105\Documents\MATLAB\registers.v
  %
  %

  this_block.setTopLevelLanguage('Verilog');

  this_block.setEntityName('registerfile');

  % System Generator has to assume that your entity  has a combinational feed through; 
  %   if it  doesn't, then comment out the following line:
  %this_block.tagAsCombinational;

  this_block.addSimulinkInport('read1');
  this_block.addSimulinkInport('read2');
  this_block.addSimulinkInport('writereg');
  this_block.addSimulinkInport('writedata');
  this_block.addSimulinkInport('regwrite');
  this_block.addSimulinkInport('clock');

  this_block.addSimulinkOutport('data1');
  this_block.addSimulinkOutport('data2');

  data1_port = this_block.port('data1');
  data1_port.setType('UFix_32_0');
  data2_port = this_block.port('data2');
  data2_port.setType('UFix_32_0');

  % -----------------------------
  if (this_block.inputTypesKnown)
    % do input type checking, dynamic output type and generic setup in this code block.

    if (this_block.port('read1').width ~= 5);
      this_block.setError('Input data type for port "read1" must have width=5.');
    end

    if (this_block.port('read2').width ~= 5);
      this_block.setError('Input data type for port "read2" must have width=5.');
    end

    if (this_block.port('writereg').width ~= 5);
      this_block.setError('Input data type for port "writereg" must have width=5.');
    end

    if (this_block.port('writedata').width ~= 32);
      this_block.setError('Input data type for port "writedata" must have width=32.');
    end

    if (this_block.port('regwrite').width ~= 1);
      this_block.setError('Input data type for port "regwrite" must have width=1.');
    end

    this_block.port('regwrite').useHDLVector(false);

    if (this_block.port('clock').width ~= 1);
      this_block.setError('Input data type for port "clock" must have width=1.');
    end

    this_block.port('clock').useHDLVector(false);

  end  % if(inputTypesKnown)
  % -----------------------------

  % System Generator found no apparent clock signals in the HDL, assuming combinational logic.
  % -----------------------------
   if (this_block.inputRatesKnown)
     inputRates = this_block.inputRates; 
     uniqueInputRates = unique(inputRates); 
     outputRate = uniqueInputRates(1);
     for i = 2:length(uniqueInputRates)
       if (uniqueInputRates(i) ~= Inf)
         outputRate = gcd(outputRate,uniqueInputRates(i));
       end
     end  % for(i)
     for i = 1:this_block.numSimulinkOutports 
       this_block.outport(i).setRate(outputRate); 
     end  % for(i)
   end  % if(inputRatesKnown)
  % -----------------------------

    % (!) Set the inout port rate to be the same as the first input 
    %     rate. Change the following code if this is untrue.
    uniqueInputRates = unique(this_block.getInputRates);


  % Add addtional source files as needed.
  %  |-------------
  %  | Add files in the order in which they should be compiled.
  %  | If two files "a.vhd" and "b.vhd" contain the entities
  %  | entity_a and entity_b, and entity_a contains a
  %  | component of type entity_b, the correct sequence of
  %  | addFile() calls would be:
  %  |    this_block.addFile('b.vhd');
  %  |    this_block.addFile('a.vhd');
  %  |-------------

  %    this_block.addFile('');
  %    this_block.addFile('');
  this_block.addFile('registers.v');

return;

