#!/bin/bash

# 仮想環境を作成
python3 -m venv .venv

# 仮想環境を有効化
source .venv/bin/activate

# pip をアップグレード（推奨）
pip install --upgrade pip

# requirements.txt があればインストール
if [ -f requirements.txt ]; then
    pip install -r requirements.txt
fi

# ipykernel をインストールし、カーネル登録
pip install ipykernel
python -m ipykernel install --user --name=tutorial_2025 --display-name "tutorial_2025"

# Jupyter Notebook をインストールして起動（必要ならインストール）
pip install notebook
.venv/bin/jupyter notebook --no-browser --NotebookApp.token='2025'