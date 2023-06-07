# 推薦系統後端文件

## 需要安裝的東西

* python 3.9+
* docker

## 執行步驟

### Step.1 建立虛擬環境

可以用 Anaconda 或是 venv（兩者擇一）

[Anaconda](https://www.anaconda.com/download)

```bash
conda create -n app python==3.10.* -y
conda activate app
```

venv

```bash
python -m venv app
```

Windows

```bash
app\Scripts\activate.bat
```

Unix

```bash
source app/bin/activate
```

看到 cmd 前面有個 (app) 就代表成功了

### Step.2 安裝套件

```bash
pip install Flask flask-cors requests numpy
```

### Step.3 啟用 docker

```bash
cd backend
docker run -t --rm -p 8501:8501 -p 8500:8500 -v "$(pwd)/:/models/" tensorflow/serving --model_config_file=/models/models.config
```

### Step.4 啟用 flask app

```bash
flask --app recommender.py --debug run
```

### Step.5 測試輸出

```bash
curl -X POST -H "Content-Type: application/json" -d '{"user_id":"42"}' http://localhost:5000/recommend
```
