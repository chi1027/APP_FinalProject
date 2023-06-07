from flask import Flask
from flask_cors import CORS
from flask import jsonify, make_response, request
import json, requests
import random
import numpy as np

RETRIEVAL_URL = "http://localhost:8501/v1/models/retrieval:predict"
RANKING_URL = "http://localhost:8501/v1/models/ranking:predict"
NUM_OF_CANDIDATES = 3

app = Flask(__name__)
CORS(app)


@app.route("/recommend", methods=["POST"])
def get_recommendations():
    user_id = str(random.randint(0, 999))
    retrieval_request = json.dumps({"instances": [user_id]})
    retrieval_response = requests.post(RETRIEVAL_URL, data=retrieval_request)
    store_candidates = retrieval_response.json()["predictions"][0]["output_2"]

    ranking_queries = [{
        "user_id": u,
        "store": m[:10]
    } for (u, m) in zip([user_id] * NUM_OF_CANDIDATES, store_candidates)]
    ranking_request = json.dumps({"instances": ranking_queries})
    ranking_response = requests.post(RANKING_URL, data=ranking_request)
    stores_scores = list(np.squeeze(ranking_response.json()["predictions"]))
    ranked_stores = [
        m[1] for m in sorted(list(zip(stores_scores, store_candidates)),
                             reverse=True)
    ]

    return make_response(jsonify({"stores": ranked_stores}), 200)


if __name__ == "__main__":
    app.run(debug=True)
