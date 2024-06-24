# GLPK 実行環境

この実行環境に含まれるglpkファイルは、以下のリンクを参考にしています。

https://qiita.com/anqooqie/items/dc6498909efd7b2d9ee4

## 使い方

### 1. `.mod`ファイルと`dat`ファイルの作成

`mod`ファイルには最適化問題の数式、`dat`ファイルには最適化問題のデータを記述します。

### 2. `.env`ファイルの編集

以下のように、`mod`ファイルと`dat`ファイルの名前（拡張子を除く）を記述してください。また、出力用の`out`ファイルの名前も、拡張子を除いた形で記述しましょう。

```env
MODNAME=efficient_fusion
DATNAME=efficient_fusion
OUTNAME=output
```
### 3. `docker compose`の実行

以下を実行しましょう。`out`ファイルが生成されるはずです！

```bash
docker compose up
```
