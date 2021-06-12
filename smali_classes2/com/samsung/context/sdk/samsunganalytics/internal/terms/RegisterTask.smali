.class public Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskClient;


# instance fields
.field private final a:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;

.field private b:Ljavax/net/ssl/HttpsURLConnection;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:J

.field private f:Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskCallback;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskCallback;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;->DATA_DELETE:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;->a:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;->b:Ljavax/net/ssl/HttpsURLConnection;

    const-string v0, ""

    .line 36
    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;->c:Ljava/lang/String;

    const-string v0, ""

    .line 37
    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;->d:Ljava/lang/String;

    .line 48
    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;->c:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;->d:Ljava/lang/String;

    .line 50
    iput-wide p3, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;->e:J

    .line 51
    iput-object p5, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;->f:Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskCallback;

    return-void
.end method

.method private a(ILjava/lang/String;)V
    .locals 3

    .line 133
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;->f:Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskCallback;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_1

    const-string v0, "1000"

    .line 137
    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    iget-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;->f:Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskCallback;

    const/4 p2, 0x0

    const-string v0, ""

    const-string v1, ""

    const-string v2, ""

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskCallback;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;->f:Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskCallback;

    const-string v1, ""

    const-string v2, ""

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskCallback;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private a(Ljava/io/BufferedReader;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 147
    :try_start_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V

    .line 149
    :cond_0
    iget-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;->b:Ljavax/net/ssl/HttpsURLConnection;

    if-eqz p1, :cond_1

    .line 150
    iget-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method private c()Ljava/lang/String;
    .locals 4

    .line 55
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "tid"

    .line 57
    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "lid"

    .line 58
    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ts"

    .line 59
    iget-wide v2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;->e:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :catch_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;->a:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const/4 v1, 0x2

    .line 70
    invoke-static {v1}, Ljava/text/SimpleDateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 71
    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ts"

    .line 72
    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "hc"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/Validation;->a:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 74
    invoke-static {v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/Validation;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 75
    new-instance v1, Ljava/net/URL;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;->b:Ljavax/net/ssl/HttpsURLConnection;

    .line 77
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/internal/security/CertificateManager;->a()Lcom/samsung/context/sdk/samsunganalytics/internal/security/CertificateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/security/CertificateManager;->b()Ljavax/net/ssl/SSLContext;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 78
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;->b:Ljavax/net/ssl/HttpsURLConnection;

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;->a:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;

    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;->b:Ljavax/net/ssl/HttpsURLConnection;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 80
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;->b:Ljavax/net/ssl/HttpsURLConnection;

    const-string v1, "Content-Type"

    const-string v2, "application/json"

    invoke-virtual {v0, v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;->c()Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;->b:Ljavax/net/ssl/HttpsURLConnection;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 87
    new-instance v1, Ljava/io/BufferedOutputStream;

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 88
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 89
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 90
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public b()I
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 103
    :try_start_0
    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0x190

    if-lt v2, v3, :cond_0

    .line 105
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    iget-object v5, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v5}, Ljavax/net/ssl/HttpsURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    move-object v1, v3

    goto :goto_1

    .line 108
    :cond_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    iget-object v5, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v5}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    goto :goto_0

    .line 111
    :goto_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "rc"

    .line 112
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xc8

    if-ne v2, v4, :cond_1

    const-string v4, "1000"

    .line 114
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 115
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Success : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 117
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fail : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->a(Ljava/lang/String;)V

    .line 120
    :goto_2
    invoke-direct {p0, v2, v3}, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;->a(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    :try_start_1
    const-string v2, ""

    .line 123
    invoke-direct {p0, v0, v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;->a(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    :goto_3
    invoke-direct {p0, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;->a(Ljava/io/BufferedReader;)V

    return v0

    :goto_4
    invoke-direct {p0, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;->a(Ljava/io/BufferedReader;)V

    throw v0
.end method
