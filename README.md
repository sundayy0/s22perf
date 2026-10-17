# 🚀 Samsung Galaxy S22 Debloat & Performance Optimizer
**Created by [sundayyy](https://github.com/sundayyy)**

Conjunto de scripts automatizados via ADB focados em **desempenho máximo, fim do throttling térmico artificial (GOS) e economia de bateria** para o **Samsung Galaxy S22 (SM-S901E / Snapdragon 8 Gen 1)** e aparelhos compatíveis da linha Galaxy One UI.

---

## ⚡ Principais Otimizações

1. **Remoção de Barreiras de Desempenho (Throttling)**:
   - Elimina o **GOS (Game Optimizing Service)**, que limita artificialmente os clocks da CPU e GPU.
   - Remove o **Smart FPS Adjuster** (responsável por quedas de framerate e micro-stutters).
2. **Eliminação de Telemetria e Daemons Pesados**:
   - Desativa o **Samsung Rubin (Customization Service)** e **Bem-Estar Digital (Digital Wellbeing)**, liberando ciclos preciosos de CPU e RAM.
   - Remove daemons de diagnóstico contínuo: `DiagMon`, `DQAgent`, `SCPM`, `Knox Analytics`.
3. **Fim da Escuta Contínua de Microfone e Bluetooth**:
   - Desativa os serviços de escuta passiva do **Bixby Wakeup**, **Google Hotword** e **Beacon Manager**.
4. **Limpeza de Bloatwares de Terceiros**:
   - Remove daemons de segundo plano do Facebook, Microsoft e serviços de anúncios.
5. **Automação de Suspensão Profunda (Deep Sleep)**:
   - Script para forçar qualquer app instalado para o bucket `RESTRICTED` + `RUN_IN_BACKGROUND ignore` via AppOps, garantindo **0% de uso de CPU em standby**.
6. **Rollback com 1 Clique**:
   - Script de reversão completa incluso, restaurando 100% dos pacotes originais sem risco.

---

## 📁 Estrutura do Repositório

```text
├── debloat_s22_performance.bat   # Script principal de debloat focado em performance
├── restaurar_s22.bat             # Restaura todos os pacotes removidos (Rollback)
├── suspensao_profunda.bat        # Automatiza a suspensão profunda de apps instalados
├── apps_para_suspender.txt       # Lista configurável de apps para suspensão profunda
├── LICENSE                       # Licença MIT
└── README.md                     # Documentação e instruções de uso
```

---

## 🛠️ Requisitos e Pré-requisitos

1. **Computador com Windows** com o [Android SDK Platform-Tools (ADB)](https://developer.android.com/tools/releases/platform-tools) instalado.
2. **Depuração USB ativada** no smartphone:
   - Vá em *Configurações → Sobre o telefone → Informações do software*.
   - Toque 7 vezes em *Número de compilação* para ativar as *Opções do desenvolvedor*.
   - Em *Opções do desenvolvedor*, ative a **Depuração USB**.
3. Conecte o aparelho ao PC via cabo USB e aceite a caixa de diálogo **"Permitir depuração USB?"** no celular.

---

## 💻 Como Usar

### 1. Executando o Debloat
1. Coloque os arquivos desta pasta dentro da pasta onde está seu `adb.exe` (ex: `D:\platform-tools`).
2. Conecte o smartphone via cabo USB.
3. Dê um duplo-clique em:
   ```cmd
   debloat_s22_performance.bat
   ```
4. Aguarde a conclusão e **reinicie o smartphone**.

---

### 2. Otimizações Complementares no Aparelho (Recomendado)

Após reiniciar o aparelho, aplique estes ajustes no próprio sistema:
* **Desativar RAM Plus**: *Configurações → Assistência do aparelho → Memória → RAM Plus → Desativar*.  
  *(A memória swap no armazenamento flash UFS causa micro-travamentos no S22. Desligar deixa a navegação instantânea).*
* **Desativar Busca de Aparelho Próximo**: *Configurações → Conexões → Mais configurações de conexão → Desativar*.
* **Ajustar Animações (via ADB)**:
  ```powershell
  adb shell settings put global window_animation_scale 0.5
  adb shell settings put global transition_animation_scale 0.5
  adb shell settings put global animator_duration_scale 0.5
  ```
* **Congelar Apps em Cache**:
  ```powershell
  adb shell settings put global cached_apps_freezer enabled
  ```

---

### 3. Automatizando a Suspensão Profunda (Deep Sleep)

Após instalar seus aplicativos de terceiros (Shopee, Mercado Livre, Uber, etc.):
1. Abra o arquivo `apps_para_suspender.txt` e adicione os nomes de pacote dos apps desejados (um por linha).
2. Execute:
   ```cmd
   suspensao_profunda.bat
   ```
   *(Ou passe o pacote individualmente: `suspensao_profunda.bat com.shopee.br`).*

---

### 4. Como Reverter (Restaurar)
Caso precise desfazer qualquer remoção ou preparar o celular para vender/atualizar:
1. Conecte o celular com a Depuração USB ativa.
2. Execute:
   ```cmd
   restaurar_s22.bat
   ```

---

## 🔒 Segurança & Não-Root
* Todos os comandos são executados no espaço de usuário (`user 0`).
* **Não requer root** e **não altera as partições do sistema `/system`**.
* O Knox, Samsung Pay, biometria, câmera nativa e telefonia/VoLTE são preservados 100% intactos.

---

## 👤 Autor
Desenvolvido e mantido por **sundayyy**.  
Contribuições, issues e sugestões são bem-vindas!

## 📄 Licença
Distribuído sob a licença MIT. Veja `LICENSE` para mais detalhes.
