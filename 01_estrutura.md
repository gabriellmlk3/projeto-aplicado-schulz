# Organização dos dados
O banco de dados vai ser dividido em Técnico/Solicitante, Equipamento e Medição.
Essa organização nos ajuda a ver quem participou do serviço, qual equipamento foi calibrado e quais resultados foram encontrados

# Técnico/Solicitante
É o metrologista/profissional que faz a calibração e registra os resultados.
O solicitante é quem pede o serviço, como um setor da empresa.
Exemplo: o metrologista José pode fazer uma calibração solicitada pela Usinagem. Um metrologista pode fazer várias medições, com um único cadastro, um solicitante também pode pedir vários serviços sem precisar ser cadastrado novamente.

# Equipamento
É o instrumento ou dispositivo que vai ser calibrado.
Seu cadastro armazena informações como código, descrição e fabricante.
Cada equipamento precisa ter uma identificação que diferencie ele dos outros.
A MMC é a máquina que é usada para fazer a medição, não o dispositivo que está sendo calibrado. Um equipamento pode ter várias calibrações ao longo do tempo, os resultados antigos devem continuar registrados para ter um histórico.

# Medição
A entidade Medição vai guardar as características medidas e os resultados.
Nesse modelo simplificado, cada registro representa uma característica medida em uma calibração.
Cada característica terá duas leituras, que são usadas nos cálculos, as duas leituras devem ser mantidas, mesmo quando mostram valores iguais. O registro também pode guardar o valor nominal, as tolerâncias e os resultados calculados.
Cada medição precisa estar ligada ao equipamento e ao técnico responsável, com a identificação do solicitante. Também é necessário saber a qual calibração ela pertence, para não misturar resultados de momentos diferentes.

# Por que evitar dados duplicados?
Evitar duplicidade significa não cadastrar a mesma pessoa ou o mesmo equipamento várias vezes sem necessidade.
Se o metrologista José fez dez medições, todas podem estar ligadas ao mesmo cadastro dele, isso ajuda o seu nome não ser escrito de formas diferentes em vários cadastros.
O mesmo vale para o equipamento, que continua com seu cadastro quando passa por novas calibrações. As duas leituras de uma característica não são duplicações indevidas, pois fazem parte do processo.
Quando é feita uma nova calibração, ela deve gerar novos registros de medição e preservar os antigos, essa separação ajuda a manter os dados organizados e facilita a consulta ao histórico.
