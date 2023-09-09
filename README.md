# data-platform-invoice-document-sql 
data-platform-invoice-document-sql は、データ連携基盤において、請求伝票データを維持管理するSQLテーブルを作成するためのレポジトリです。

## 前提条件  
data-platform-invoice-document-sql は、データ連携にあたり、API を利用し、本レポジトリ の sql 設定ファイルの内容は、下記 URL の API 仕様を前提としています。  
https://api.xxx.com/api/API_XXXXX_XXX/overview    

## sqlの設定ファイル
data-platform-invoice-document-sql には、sqlの設定ファイルとして、以下のファイルが含まれています。  

* data-platform-invoice-document-sql-header-data.sql（データ連携基盤 請求伝票 - ヘッダデータ）
* data-platform-invoice-document-sql-header-doc-data.sql（データ連携基盤 請求伝票 - ヘッダ文書データ）
* data-platform-invoice-document-sql-item-data.sql（データ連携基盤 請求伝票 - 明細データ）
* data-platform-invoice-document-sql-item-doc-data.sql（データ連携基盤 請求伝票 - 明細文書データ）
* data-platform-invoice-document-sql-item-pricing-element-data.sql（データ連携基盤 請求伝票 - 明細価格決定要素データ）
* data-platform-invoice-document-sql-partner-data.sql（データ連携基盤 請求伝票 - 取引先データ）
* data-platform-invoice-document-sql-address-data.sql（データ連携基盤 請求伝票 - 住所データ）

## MySQLのセットアップ / Kubernetesの設定 / SQLテーブルの作成方法
MySQLのセットアップ / Kubernetesの設定 / 具体的なSQLテーブルの作成方法、については、[mysql-kube](https://github.com/latonaio/mysql-kube)を参照ください。
