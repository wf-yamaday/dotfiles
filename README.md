# dotfiles

Gitの設定を最初にしておく．

```
# mailの設定
git config --global user.email "<your mail>"
# 設定の確認
git config --global user.email
```

シェルスクリプトに実行権限を与えておく．

```
chmod 755 ./brew_install.sh
chmod 755 ./settings/install.sh
```

## homebrew

`brew_install.sh`を使ってセットアップする．

```
./brew_install.sh
```

時間がかかるのでその間に`doc`配下のアプリケーションのダウンロードおよびインストールとセットアップを行っておく．

## zshなどの設定

```
cd settings
./install.sh
```