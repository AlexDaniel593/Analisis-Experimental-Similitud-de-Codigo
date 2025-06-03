
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

# Cargar el dataset
df = pd.read_csv('dataset.csv')

# Mostrar las primeras columnas para referencia
print(df.columns)

# Renombrar columnas largas para facilidad de manejo si es necesario
df.rename(columns={
    'Nivel de similitud SolucionEXAChatgpt.txt': 'Sim_ChatGPT',
    'Nivel de similitud SolucionEXAClaude.txt': 'Sim_Claude',
    'Nivel de similitud SolucionEXADeepSeek.txt': 'Sim_DeepSeek',
    'Nivel de similitud SolucionEXAGemini.txt': 'Sim_Gemini',
    'Nivel de similitud SolucionEXACopilot.txt': 'Sim_Copilot',
}, inplace=True)

# Correlación entre total estructuras y similitudes
correlation_matrix = df[[
    'Sim_ChatGPT', 'Sim_Claude', 'Sim_DeepSeek',
    'Sim_Gemini', 'Sim_Copilot', 'Total estructuras de control'
]].corr()

# Mostrar matriz de correlación
sns.heatmap(correlation_matrix, annot=True, cmap='coolwarm')
plt.title('Correlación entre similitud y estructuras de control')
plt.tight_layout()
plt.savefig('correlacion_similitud_estructuras.png')
plt.show()

# Comparar líneas de código vs similitud con ChatGPT
plt.figure(figsize=(8, 5))
sns.scatterplot(data=df, x='No. lineas de codigo', y='Sim_ChatGPT')
plt.title('Líneas de código vs. Similitud con ChatGPT')
plt.xlabel('Líneas de código')
plt.ylabel('Similitud')
plt.grid(True)
plt.tight_layout()
plt.savefig('lineas_vs_sim_chatgpt.png')
plt.show()

# Gráfico de barras: estructuras de control totales
plt.figure(figsize=(10, 6))
df_sorted = df.sort_values(by='Total estructuras de control', ascending=False)
sns.barplot(x='Nombre', y='Total estructuras de control', data=df_sorted)
plt.title('Total de estructuras de control por archivo')
plt.xticks(rotation=90)
plt.tight_layout()
plt.savefig('estructuras_por_archivo.png')
plt.show()
