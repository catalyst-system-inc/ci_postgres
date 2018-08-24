# 公式のpostgresイメージ
FROM postgres:10

# 作成者情報
MAINTAINER toshi <toshi@toshi.click>

# ロケールの設定
RUN localedef -i ja_JP -c -f UTF-8 -A /usr/share/locale/locale.alias ja_JP.UTF-8
ENV LANG ja_JP.UTF-8

# タイムゾーンの設定
RUN cp /usr/share/zoneinfo/Japan /etc/localtime 
