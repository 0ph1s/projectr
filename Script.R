# Instalar pacotes se necessário
install.packages("readr")
install.packages("dplyr")
install.packages("xtable")

library(readr)
library(dplyr)
library(xtable)

health <- read_csv("Health_Risk_Dataset.csv")

# Criar o dicionário de dados
dicionario <- data.frame(
  Nome = c(
    "Patient_ID", "Respiratory_Rate", "Oxygen_Saturation", "O2_Scale",
    "Systolic_BP", "Heart_Rate", "Temperature", "Consciousness",
    "On_Oxygen", "Risk_Level"
  ),
  Tipo = c(
    "Categórica (texto)",
    "Numérica (inteiro)",
    "Numérica (inteiro)",
    "Numérica (inteiro)",
    "Numérica (inteiro)",
    "Numérica (inteiro)",
    "Numérica (decimal)",
    "Categórica (texto)",
    "Numérica (binária)",
    "Categórica (texto)"
  ),
  Unidade = c(
    "Não se aplica",
    "Respirações/min",
    "%",
    "Escala (1–3)",
    "mmHg",
    "bpm",
    "°C",
    "Não se aplica",
    "0 = Não, 1 = Sim",
    "Não se aplica"
  ),
  Descricao = c(
    "Identificação única de cada paciente.",
    "Taxa respiratória do paciente.",
    "Saturação de oxigênio no sangue.",
    "Escala de suporte de oxigênio utilizado.",
    "Pressão arterial sistólica.",
    "Frequência cardíaca.",
    "Temperatura corporal.",
    "Estado de consciência do paciente.",
    "Indica se o paciente está em uso de oxigênio suplementar.",
    "Classificação de risco do paciente."
  ),
  Observacao = c(
    "Serve como chave, não deve ser usada em análises estatísticas.",
    "Valores muito altos ou baixos indicam risco.",
    "Normal ≥ 95%, valores baixos sugerem hipóxia.",
    "Classifica necessidade de oxigênio suplementar.",
    "Valores baixos indicam choque; altos, hipertensão.",
    "Valores altos podem indicar estresse fisiológico.",
    "Febre > 38 °C ou hipotermia < 36 °C são críticos.",
    "Escala simplificada de Glasgow (A/V/P/U).",
    "Binária, pode ser tratada como fator no R.",
    "Variável-alvo para estudos de classificação."
  ),
  stringsAsFactors = FALSE
)

print(dicionario)
