## 需要安裝的東西

* python 3.9+
* docker

## 執行步驟

### Step.1 建立虛擬環境

可以用 Anaconda 或是 venv

### Step.2 安裝套件

```bash
pip install Flask flask-cors requests numpy
```

### Step.3 啟用 docker

```bash
docker run -t --rm -p 8501:8501 -p 8500:8500 -v "$(pwd)/:/models/" tensorflow/serving --model_config_file=/models/models.config
```

### Step.4 啟用 flask app

```bash
cd backend
flask --app recommender.py --debug run
```

不過目前資料分布太爛了，所以推薦系統只會推薦同一個
