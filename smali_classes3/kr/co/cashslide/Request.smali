.class Lkr/co/cashslide/Request;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CCCS_SERVER_URL:Ljava/lang/String; = "https://cccs.cashslide.io"

.field private static final CPA_END:I = 0x9

.field private static final LOGIC_SERVER_URL:Ljava/lang/String; = "https://api.cashslide.co.kr"

.field private static final LOG_TAG:Ljava/lang/String; = "CashslideSDK"

.field private static final RECOMMEND_URL:Ljava/lang/String; = "https://api.cashslide.co.kr/api/v2/recommend_cpas/request_reward"

.field private static final RETENTION_URL:Ljava/lang/String; = "https://api.cashslide.co.kr/api/v2/recommend_cpas/active_launch"

.field private static final SUCCESS_MESSAGE:Ljava/lang/String; = "success"

.field private static final UPLOAD_CLICK_URL_WITH_AD_ID_URL:Ljava/lang/String; = "https://cccs.cashslide.io/click_infos_sdk_with_google_ad_id"


# instance fields
.field private mAppId:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mReward:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lkr/co/cashslide/Request;->mContext:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Lkr/co/cashslide/Request;->mAppId:Ljava/lang/String;

    const/4 p1, 0x0

    .line 65
    iput p1, p0, Lkr/co/cashslide/Request;->mReward:I

    .line 66
    invoke-direct {p0}, Lkr/co/cashslide/Request;->disableConnectionReuseIfNecessary()V

    return-void
.end method

.method private disableConnectionReuseIfNecessary()V
    .locals 2

    .line 71
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    const-string v0, "http.keepAlive"

    const-string v1, "false"

    .line 72
    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private getParams()Ljava/lang/String;
    .locals 5

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    const-string v1, "click_info[count]=1"

    .line 200
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&click_info[ad_type]="

    .line 201
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&app_id="

    .line 202
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkr/co/cashslide/Request;->mAppId:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&ref="

    .line 203
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkr/co/cashslide/Request;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lkr/co/cashslide/ReferrerReceiver;->getReferrer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&c_ad_id="

    .line 204
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lkr/co/cashslide/AdvertisingIdHelper;->getAdId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkr/co/cashslide/EncryptManager;->encryptMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "CashslideSDK"

    .line 206
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private sendPost(Ljava/net/URI;Ljava/lang/String;)Z
    .locals 2

    .line 77
    invoke-direct {p0, p1, p2}, Lkr/co/cashslide/Request;->sendPostHttpUrlConnection(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    :try_start_0
    const-string p2, "success"

    .line 87
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "\n"

    const-string v0, ""

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lkr/co/cashslide/Request;->mReward:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "CashslideSDK"

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :goto_0
    iget p1, p0, Lkr/co/cashslide/Request;->mReward:I

    const/4 p1, 0x1

    return p1
.end method

.method private sendPostHttpUrlConnection(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 107
    :try_start_0
    new-array v2, v0, [Ljavax/net/ssl/TrustManager;

    new-instance v3, Lkr/co/cashslide/Request$1;

    invoke-direct {v3, p0}, Lkr/co/cashslide/Request$1;-><init>(Lkr/co/cashslide/Request;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 123
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v3

    .line 124
    invoke-static {v3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    .line 125
    invoke-virtual {v3, v1, v1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    const-string v3, "TLS"

    .line 127
    invoke-static {v3}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v3

    .line 128
    new-instance v5, Ljava/security/SecureRandom;

    invoke-direct {v5}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v3, v1, v2, v5}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 130
    invoke-virtual {p1}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_20
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1c
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1a
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_18
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_16
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 131
    :try_start_1
    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    .line 132
    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 133
    invoke-virtual {p1, v4}, Ljavax/net/ssl/HttpsURLConnection;->setInstanceFollowRedirects(Z)V

    .line 134
    invoke-virtual {v3}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    const-string v0, "POST"

    .line 136
    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 138
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_13
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_12
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_11
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/security/KeyManagementException; {:try_start_1 .. :try_end_1} :catch_e
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 139
    :try_start_2
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write([B)V

    .line 140
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 141
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 143
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result p2

    div-int/lit8 p2, p2, 0x64

    const/4 v2, 0x2

    if-ne p2, v2, :cond_0

    .line 144
    new-instance p2, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p2, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    goto :goto_0

    .line 146
    :cond_0
    new-instance p2, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p2, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/security/KeyManagementException; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 149
    :goto_0
    :try_start_3
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v3, "line.separator"

    .line 151
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 152
    :goto_1
    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 153
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 156
    :cond_1
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V

    .line 158
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/security/KeyStoreException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/security/KeyManagementException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 174
    :try_start_4
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :catch_0
    move-object v2, v1

    .line 182
    :goto_2
    :try_start_5
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    move-object v1, v2

    goto/16 :goto_12

    :catch_1
    nop

    goto/16 :goto_12

    :catchall_0
    move-exception p1

    move-object v1, p2

    goto :goto_3

    :catch_2
    nop

    goto/16 :goto_6

    :catch_3
    nop

    goto/16 :goto_9

    :catch_4
    nop

    goto/16 :goto_b

    :catch_5
    nop

    goto/16 :goto_d

    :catch_6
    nop

    goto/16 :goto_f

    :catch_7
    nop

    goto/16 :goto_11

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_8
    move-object p2, v1

    goto :goto_6

    :catch_9
    move-object p2, v1

    goto :goto_9

    :catch_a
    move-object p2, v1

    goto/16 :goto_b

    :catch_b
    move-object p2, v1

    goto/16 :goto_d

    :catch_c
    move-object p2, v1

    goto/16 :goto_f

    :catch_d
    move-object p2, v1

    goto/16 :goto_11

    :catch_e
    move-object p2, v1

    goto :goto_5

    :catch_f
    move-object p2, v1

    goto :goto_8

    :catch_10
    move-object p2, v1

    goto :goto_a

    :catch_11
    move-object p2, v1

    goto :goto_c

    :catch_12
    move-object p2, v1

    goto :goto_e

    :catch_13
    move-object p2, v1

    goto/16 :goto_10

    :catchall_2
    move-exception p1

    move-object v0, v1

    :goto_3
    if-eqz v0, :cond_2

    .line 174
    :try_start_6
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_14

    goto :goto_4

    :catch_14
    nop

    :cond_2
    :goto_4
    if-eqz v1, :cond_3

    .line 182
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_15

    .line 185
    :catch_15
    :cond_3
    throw p1

    :catch_16
    move-object p1, v1

    move-object p2, p1

    :goto_5
    move-object v0, p2

    :goto_6
    if-eqz v0, :cond_4

    .line 174
    :try_start_8
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_17

    :catch_17
    :cond_4
    if-eqz p2, :cond_a

    .line 182
    :goto_7
    :try_start_9
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_12

    :catch_18
    move-object p1, v1

    move-object p2, p1

    :goto_8
    move-object v0, p2

    :goto_9
    if-eqz v0, :cond_5

    .line 174
    :try_start_a
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_19

    :catch_19
    :cond_5
    if-eqz p2, :cond_a

    goto :goto_7

    :catch_1a
    move-object p1, v1

    move-object p2, p1

    :goto_a
    move-object v0, p2

    :goto_b
    if-eqz v0, :cond_6

    :try_start_b
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1b

    :catch_1b
    :cond_6
    if-eqz p2, :cond_a

    goto :goto_7

    :catch_1c
    move-object p1, v1

    move-object p2, p1

    :goto_c
    move-object v0, p2

    :goto_d
    if-eqz v0, :cond_7

    :try_start_c
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1d

    :catch_1d
    :cond_7
    if-eqz p2, :cond_a

    goto :goto_7

    :catch_1e
    move-object p1, v1

    move-object p2, p1

    :goto_e
    move-object v0, p2

    :goto_f
    if-eqz v0, :cond_8

    :try_start_d
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1f

    :catch_1f
    :cond_8
    if-eqz p2, :cond_a

    goto :goto_7

    :catch_20
    move-object p1, v1

    move-object p2, p1

    :goto_10
    move-object v0, p2

    :goto_11
    if-eqz v0, :cond_9

    :try_start_e
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_21

    :catch_21
    :cond_9
    if-eqz p2, :cond_a

    goto :goto_7

    :cond_a
    :goto_12
    if-eqz p1, :cond_b

    .line 190
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_b
    return-object v1
.end method


# virtual methods
.method public getReward()I
    .locals 1

    .line 229
    iget v0, p0, Lkr/co/cashslide/Request;->mReward:I

    return v0
.end method

.method public sendAppFirstLaunched()Z
    .locals 5

    const/4 v0, 0x0

    .line 216
    :try_start_0
    invoke-static {}, Lkr/co/cashslide/AdvertisingIdHelper;->hasAdvertisingId()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CashslideSDK"

    const-string v2, "Google Advertising ID is not found!"

    .line 217
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 219
    :cond_0
    new-instance v1, Ljava/net/URI;

    const-string v2, "https://cccs.cashslide.io/click_infos_sdk_with_google_ad_id"

    invoke-direct {v1, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lkr/co/cashslide/Request;->getParams()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lkr/co/cashslide/Request;->sendPost(Ljava/net/URI;Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "CashslideSDK"

    .line 222
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method

.method public sendMissionCompleted()Z
    .locals 5

    const/4 v0, 0x0

    .line 236
    :try_start_0
    invoke-static {}, Lkr/co/cashslide/AdvertisingIdHelper;->hasAdvertisingId()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CashslideSDK"

    const-string v2, "Google Advertising ID is not found!"

    .line 237
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 239
    :cond_0
    new-instance v1, Ljava/net/URI;

    const-string v2, "https://cccs.cashslide.io/click_infos_sdk_with_google_ad_id"

    invoke-direct {v1, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lkr/co/cashslide/Request;->getParams()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lkr/co/cashslide/Request;->sendPost(Ljava/net/URI;Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "CashslideSDK"

    .line 242
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method

.method public sendRecommend(Z)Z
    .locals 12

    const/4 v0, 0x0

    .line 258
    :try_start_0
    invoke-static {}, Lkr/co/cashslide/AdvertisingIdHelper;->hasAdvertisingId()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const-string p1, "CashslideSDK"

    const-string v1, "Google Advertising ID is not found!"

    .line 259
    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 261
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 263
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 264
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v6, "%d,%s,%s,%s"

    const/4 v7, 0x4

    new-array v8, v7, [Ljava/lang/Object;

    .line 265
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v0

    .line 266
    invoke-static {}, Lkr/co/cashslide/AdvertisingIdHelper;->getAdId()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v2

    iget-object v9, p0, Lkr/co/cashslide/Request;->mContext:Landroid/content/Context;

    .line 267
    invoke-static {v9}, Lkr/co/cashslide/DeviceManager;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    aput-object v9, v8, v10

    .line 268
    invoke-static {}, Lkr/co/cashslide/DeviceManager;->getSerial()Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x3

    aput-object v9, v8, v11

    .line 264
    invoke-static {v5, v6, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 269
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v8, "%d,%s,%s,%s"

    new-array v7, v7, [Ljava/lang/Object;

    .line 270
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v7, v0

    iget-object v3, p0, Lkr/co/cashslide/Request;->mContext:Landroid/content/Context;

    .line 271
    invoke-static {v3}, Lkr/co/cashslide/ReferrerReceiver;->getRecommendNickname(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v2

    iget-object v3, p0, Lkr/co/cashslide/Request;->mContext:Landroid/content/Context;

    .line 272
    invoke-static {v3}, Lkr/co/cashslide/ReferrerReceiver;->getRecommendPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v10

    iget-object v3, p0, Lkr/co/cashslide/Request;->mAppId:Ljava/lang/String;

    aput-object v3, v7, v11

    .line 269
    invoke-static {v6, v8, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "recommendee="

    .line 275
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lkr/co/cashslide/EncryptManager;->encryptMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&recommender="

    .line 276
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lkr/co/cashslide/EncryptManager;->encryptMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&active="

    .line 277
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    const-string p1, "1"

    goto :goto_0

    :cond_1
    const-string p1, "0"

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&referrer="

    .line 278
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lkr/co/cashslide/Request;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lkr/co/cashslide/ReferrerReceiver;->getReferrer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "utf-8"

    invoke-static {p1, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    new-instance p1, Ljava/net/URI;

    const-string v3, "https://api.cashslide.co.kr/api/v2/recommend_cpas/request_reward"

    invoke-direct {p1, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lkr/co/cashslide/Request;->sendPostHttpUrlConnection(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 282
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "errors"

    .line 284
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "CashslideSDK"

    const-string v1, "recommendation success"

    .line 285
    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const-string p1, "errors"

    .line 288
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v1, 0x0

    .line 289
    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 290
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "CashslideSDK"

    const-string v5, "rc ERROR[%d] %s"

    .line 291
    new-array v6, v10, [Ljava/lang/Object;

    const-string v7, "code"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v0

    const-string v7, "message"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v1, "CashslideSDK"

    .line 297
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rc error="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    return v0
.end method

.method public sendRetention(J)Z
    .locals 12

    const/4 v0, 0x0

    .line 313
    :try_start_0
    invoke-static {}, Lkr/co/cashslide/AdvertisingIdHelper;->hasAdvertisingId()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const-string p1, "CashslideSDK"

    const-string p2, "Google Advertising ID is not found!"

    .line 314
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 316
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 318
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 319
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v6, "%d,%s,%s,%s"

    const/4 v7, 0x4

    new-array v8, v7, [Ljava/lang/Object;

    .line 320
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v0

    .line 321
    invoke-static {}, Lkr/co/cashslide/AdvertisingIdHelper;->getAdId()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v2

    iget-object v9, p0, Lkr/co/cashslide/Request;->mContext:Landroid/content/Context;

    .line 322
    invoke-static {v9}, Lkr/co/cashslide/DeviceManager;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    aput-object v9, v8, v10

    .line 323
    invoke-static {}, Lkr/co/cashslide/DeviceManager;->getSerial()Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x3

    aput-object v9, v8, v11

    .line 319
    invoke-static {v5, v6, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 324
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v8, "%d,%s,%s,%s"

    new-array v7, v7, [Ljava/lang/Object;

    .line 325
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v7, v0

    iget-object v3, p0, Lkr/co/cashslide/Request;->mContext:Landroid/content/Context;

    .line 326
    invoke-static {v3}, Lkr/co/cashslide/ReferrerReceiver;->getRecommendNickname(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v2

    iget-object v3, p0, Lkr/co/cashslide/Request;->mContext:Landroid/content/Context;

    .line 327
    invoke-static {v3}, Lkr/co/cashslide/ReferrerReceiver;->getRecommendPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v10

    iget-object v3, p0, Lkr/co/cashslide/Request;->mAppId:Ljava/lang/String;

    aput-object v3, v7, v11

    .line 324
    invoke-static {v6, v8, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "recommendee="

    .line 330
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lkr/co/cashslide/EncryptManager;->encryptMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&recommender="

    .line 331
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lkr/co/cashslide/EncryptManager;->encryptMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&count="

    .line 332
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&referrer="

    .line 333
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lkr/co/cashslide/Request;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lkr/co/cashslide/ReferrerReceiver;->getReferrer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "utf-8"

    invoke-static {p1, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    new-instance p1, Ljava/net/URI;

    const-string p2, "https://api.cashslide.co.kr/api/v2/recommend_cpas/active_launch"

    invoke-direct {p1, p2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lkr/co/cashslide/Request;->sendPostHttpUrlConnection(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 337
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "errors"

    .line 339
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "CashslideSDK"

    const-string p2, "retention success"

    .line 340
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const-string p1, "errors"

    .line 343
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 344
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge p2, v1, :cond_2

    .line 345
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "CashslideSDK"

    const-string v4, "rt ERROR[%d] %s"

    .line 346
    new-array v5, v10, [Ljava/lang/Object;

    const-string v6, "code"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    const-string v6, "message"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "CashslideSDK"

    .line 352
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rt error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return v0
.end method
