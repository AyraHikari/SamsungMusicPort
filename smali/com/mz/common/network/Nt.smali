.class public Lcom/mz/common/network/Nt;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x3
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mz/common/network/Nt$OnProgressbarListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lcom/mz/common/network/request/RequestNTCommon;",
        "Ljava/lang/Integer;",
        "Lcom/mz/common/network/request/RequestNTCommon;",
        ">;"
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;


# instance fields
.field private c:Landroid/content/Context;

.field private d:Z

.field private e:Landroid/os/Handler;

.field private f:Z

.field private g:Z

.field private h:Lcom/mz/common/network/Nt$OnProgressbarListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sput-object v0, Lcom/mz/common/network/Nt;->a:Ljava/lang/String;

    .line 32
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/mz/common/network/Nt;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;ZZ)V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Lcom/mz/common/network/Nt;->d:Z

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/mz/common/network/Nt;->f:Z

    .line 30
    iput-boolean v0, p0, Lcom/mz/common/network/Nt;->g:Z

    .line 35
    invoke-virtual {p0, p1}, Lcom/mz/common/network/Nt;->a(Landroid/content/Context;)V

    .line 36
    invoke-virtual {p0, p2}, Lcom/mz/common/network/Nt;->a(Landroid/os/Handler;)V

    .line 37
    invoke-virtual {p0, p3}, Lcom/mz/common/network/Nt;->b(Z)V

    .line 38
    invoke-virtual {p0, p4}, Lcom/mz/common/network/Nt;->c(Z)V

    return-void
.end method

.method private a(Lcom/mz/common/network/request/RequestNTCommon;Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    invoke-virtual {p1}, Lcom/mz/common/network/request/RequestNTCommon;->i()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/mz/common/network/request/RequestNTCommon;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    invoke-virtual {p1}, Lcom/mz/common/network/request/RequestNTCommon;->i()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 149
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    :cond_0
    return-void
.end method

.method private a(Ljava/net/HttpURLConnection;Lcom/mz/common/network/request/RequestNTCommon;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mz/common/network/Nt;->b:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mz/common/network/Nt;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Android OS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " MezzoSDKVer=2.0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 155
    invoke-virtual {p2}, Lcom/mz/common/network/request/RequestNTCommon;->b()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 156
    invoke-virtual {p2}, Lcom/mz/common/network/request/RequestNTCommon;->c()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v1, "GET"

    .line 157
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 159
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v1, 0x0

    .line 160
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const-string v1, "User-Agent"

    .line 161
    invoke-virtual {p1, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Accept-Charset"

    const-string v2, "UTF-8"

    .line 162
    invoke-virtual {p1, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Content-Type"

    const-string v2, "application/json"

    .line 163
    invoke-virtual {p1, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Cache-Control"

    const-string v2, "no-cache"

    .line 164
    invoke-virtual {p1, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605"

    .line 165
    invoke-static {p1}, Lcom/mz/common/MzLog;->a(Ljava/lang/String;)V

    .line 166
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "\u2605 ConnectTimeout : "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/mz/common/network/request/RequestNTCommon;->b()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mz/common/MzLog;->a(Ljava/lang/String;)V

    .line 167
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "\u2605 ReadTimeout : "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/mz/common/network/request/RequestNTCommon;->c()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mz/common/MzLog;->a(Ljava/lang/String;)V

    const-string p1, "\u2605 RequestMethod : GET"

    .line 168
    invoke-static {p1}, Lcom/mz/common/MzLog;->a(Ljava/lang/String;)V

    .line 169
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "\u2605 User-Agent : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mz/common/MzLog;->a(Ljava/lang/String;)V

    const-string p1, "\u2605 Accept-Charset : UTF-8"

    .line 170
    invoke-static {p1}, Lcom/mz/common/MzLog;->a(Ljava/lang/String;)V

    const-string p1, "\u2605 Content-Type : application/json"

    .line 171
    invoke-static {p1}, Lcom/mz/common/MzLog;->a(Ljava/lang/String;)V

    const-string p1, "\u2605 Cache-Control : no-cache"

    .line 172
    invoke-static {p1}, Lcom/mz/common/MzLog;->a(Ljava/lang/String;)V

    const-string p1, "\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605"

    .line 173
    invoke-static {p1}, Lcom/mz/common/MzLog;->a(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/net/HttpURLConnection;Lcom/mz/common/network/request/RequestNTCommon;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mz/common/network/Nt;->b:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mz/common/network/Nt;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Android OS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " MezzoSDKVer=2.0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 178
    invoke-virtual {p2}, Lcom/mz/common/network/request/RequestNTCommon;->b()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 179
    invoke-virtual {p2}, Lcom/mz/common/network/request/RequestNTCommon;->c()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v1, "POST"

    .line 180
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 181
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 182
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v1, 0x0

    .line 183
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const-string v1, "User-Agent"

    .line 184
    invoke-virtual {p1, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Accept-Charset"

    const-string v2, "UTF-8"

    .line 185
    invoke-virtual {p1, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Content-Type"

    const-string v2, "application/json"

    .line 186
    invoke-virtual {p1, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Cache-Control"

    const-string v2, "no-cache"

    .line 187
    invoke-virtual {p1, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605"

    .line 188
    invoke-static {p1}, Lcom/mz/common/MzLog;->a(Ljava/lang/String;)V

    .line 189
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "\u2605 ConnectTimeout : "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/mz/common/network/request/RequestNTCommon;->b()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mz/common/MzLog;->a(Ljava/lang/String;)V

    .line 190
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "\u2605 ReadTimeout : "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/mz/common/network/request/RequestNTCommon;->c()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mz/common/MzLog;->a(Ljava/lang/String;)V

    const-string p1, "\u2605 RequestMethod : POST"

    .line 191
    invoke-static {p1}, Lcom/mz/common/MzLog;->a(Ljava/lang/String;)V

    .line 192
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "\u2605 User-Agent : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mz/common/MzLog;->a(Ljava/lang/String;)V

    const-string p1, "\u2605 Accept-Charset : UTF-8"

    .line 193
    invoke-static {p1}, Lcom/mz/common/MzLog;->a(Ljava/lang/String;)V

    const-string p1, "\u2605 Content-Type : application/json"

    .line 194
    invoke-static {p1}, Lcom/mz/common/MzLog;->a(Ljava/lang/String;)V

    const-string p1, "\u2605 Cache-Control : no-cache"

    .line 195
    invoke-static {p1}, Lcom/mz/common/MzLog;->a(Ljava/lang/String;)V

    const-string p1, "\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605\u2605"

    .line 196
    invoke-static {p1}, Lcom/mz/common/MzLog;->a(Ljava/lang/String;)V

    return-void
.end method

.method private g()V
    .locals 1

    .line 256
    invoke-virtual {p0}, Lcom/mz/common/network/Nt;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {p0}, Lcom/mz/common/network/Nt;->f()Lcom/mz/common/network/Nt$OnProgressbarListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 258
    invoke-virtual {p0}, Lcom/mz/common/network/Nt;->f()Lcom/mz/common/network/Nt$OnProgressbarListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mz/common/network/Nt$OnProgressbarListener;->show()V

    :cond_0
    return-void
.end method

.method private h()V
    .locals 1

    .line 264
    invoke-virtual {p0}, Lcom/mz/common/network/Nt;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    invoke-virtual {p0}, Lcom/mz/common/network/Nt;->f()Lcom/mz/common/network/Nt$OnProgressbarListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 266
    invoke-virtual {p0}, Lcom/mz/common/network/Nt;->f()Lcom/mz/common/network/Nt$OnProgressbarListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mz/common/network/Nt$OnProgressbarListener;->hide()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/mz/common/network/Nt;->c:Landroid/content/Context;

    return-object v0
.end method

.method protected varargs a([Lcom/mz/common/network/request/RequestNTCommon;)Lcom/mz/common/network/request/RequestNTCommon;
    .locals 10

    const/4 v0, 0x0

    .line 43
    aget-object p1, p1, v0

    .line 45
    invoke-virtual {p0}, Lcom/mz/common/network/Nt;->b()Z

    move-result v0

    const/4 v7, 0x1

    if-eqz v0, :cond_8

    .line 46
    invoke-virtual {p0}, Lcom/mz/common/network/Nt;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, 0x0

    .line 49
    :try_start_0
    invoke-virtual {p1}, Lcom/mz/common/network/request/RequestNTCommon;->g()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    invoke-static {}, Lcom/mz/common/network/SslConnect;->a()V

    .line 51
    invoke-virtual {p1}, Lcom/mz/common/network/request/RequestNTCommon;->g()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    .line 52
    sget-object v2, Lcom/mz/common/network/SslConnect;->a:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 54
    invoke-direct {p0, v1, p1}, Lcom/mz/common/network/Nt;->b(Ljava/net/HttpURLConnection;Lcom/mz/common/network/request/RequestNTCommon;)V

    .line 55
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 56
    :try_start_1
    invoke-direct {p0, p1, v2}, Lcom/mz/common/network/Nt;->a(Lcom/mz/common/network/request/RequestNTCommon;Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    move-object v8, v2

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v8, v2

    goto/16 :goto_5

    :catch_0
    move-exception v0

    move-object v8, v2

    goto/16 :goto_3

    :catch_1
    move-exception v0

    move-object v8, v2

    goto/16 :goto_4

    .line 58
    :cond_0
    :try_start_2
    invoke-virtual {p1}, Lcom/mz/common/network/request/RequestNTCommon;->g()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 59
    invoke-direct {p0, v1, p1}, Lcom/mz/common/network/Nt;->a(Ljava/net/HttpURLConnection;Lcom/mz/common/network/request/RequestNTCommon;)V
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v8, v0

    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_3

    .line 62
    :try_start_3
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 63
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "URL : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mz/common/network/request/RequestNTCommon;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mz/common/MzLog;->a(Ljava/lang/String;)V

    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "HTTP statusCode : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mz/common/MzLog;->a(Ljava/lang/String;)V

    const/16 v2, 0xc8

    if-lt v1, v2, :cond_1

    const/16 v2, 0x12e

    if-gt v1, v2, :cond_1

    .line 67
    invoke-virtual {p0}, Lcom/mz/common/network/Nt;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "HTTP_OK"

    .line 68
    invoke-static {v1}, Lcom/mz/common/MzLog;->a(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    .line 70
    invoke-virtual {p0}, Lcom/mz/common/network/Nt;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mz/common/network/Nt;->c()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {p0}, Lcom/mz/common/network/Nt;->e()Z

    move-result v5

    sget-object v6, Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;->NETWORK_SUCCESS:Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;

    move-object v1, p1

    move-object v3, v9

    invoke-virtual/range {v1 .. v6}, Lcom/mz/common/network/request/RequestNTCommon;->a(Landroid/content/Context;Ljava/io/InputStream;Landroid/os/Handler;ZLcom/mz/common/network/request/RequestNTCommon$CONNECTION;)V

    .line 71
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    goto :goto_1

    .line 74
    :cond_1
    invoke-virtual {p0}, Lcom/mz/common/network/Nt;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "HTTP_FAIL"

    .line 75
    invoke-static {v1}, Lcom/mz/common/MzLog;->a(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/mz/common/network/Nt;->a()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/mz/common/network/Nt;->c()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {p0}, Lcom/mz/common/network/Nt;->e()Z

    move-result v5

    sget-object v6, Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;->SERVER_FAIL:Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/mz/common/network/request/RequestNTCommon;->a(Landroid/content/Context;Ljava/io/InputStream;Landroid/os/Handler;ZLcom/mz/common/network/request/RequestNTCommon$CONNECTION;)V

    .line 79
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_4

    .line 81
    :cond_3
    invoke-virtual {p0}, Lcom/mz/common/network/Nt;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "HTTP_FAIL"

    .line 82
    invoke-static {v0}, Lcom/mz/common/MzLog;->a(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lcom/mz/common/network/Nt;->a()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/mz/common/network/Nt;->c()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {p0}, Lcom/mz/common/network/Nt;->e()Z

    move-result v5

    sget-object v6, Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;->SERVER_FAIL:Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/mz/common/network/request/RequestNTCommon;->a(Landroid/content/Context;Ljava/io/InputStream;Landroid/os/Handler;ZLcom/mz/common/network/request/RequestNTCommon$CONNECTION;)V
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_4
    :goto_2
    if-eqz v8, :cond_9

    .line 103
    :try_start_4
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    goto/16 :goto_7

    :catchall_1
    move-exception p1

    move-object v8, v0

    goto :goto_5

    :catch_4
    move-exception v1

    move-object v8, v0

    move-object v0, v1

    :goto_3
    :try_start_5
    const-string v1, "HTTP_FAIL"

    .line 94
    invoke-static {v1}, Lcom/mz/common/MzLog;->a(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lcom/mz/common/network/Nt;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_5

    .line 96
    invoke-virtual {p0, v7}, Lcom/mz/common/network/Nt;->cancel(Z)Z

    .line 97
    invoke-virtual {p0}, Lcom/mz/common/network/Nt;->a()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/mz/common/network/Nt;->c()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {p0}, Lcom/mz/common/network/Nt;->e()Z

    move-result v5

    sget-object v6, Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;->SERVER_FAIL:Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/mz/common/network/request/RequestNTCommon;->a(Landroid/content/Context;Ljava/io/InputStream;Landroid/os/Handler;ZLcom/mz/common/network/request/RequestNTCommon$CONNECTION;)V

    .line 98
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_5
    if-eqz v8, :cond_9

    .line 103
    :try_start_6
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_7

    :catch_5
    move-exception v1

    move-object v8, v0

    move-object v0, v1

    :goto_4
    :try_start_7
    const-string v1, "SOCKETTIMEOUTEXCEPTION"

    .line 87
    invoke-static {v1}, Lcom/mz/common/MzLog;->a(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/mz/common/network/Nt;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_6

    .line 89
    invoke-virtual {p0, v7}, Lcom/mz/common/network/Nt;->cancel(Z)Z

    .line 90
    invoke-virtual {p0}, Lcom/mz/common/network/Nt;->a()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/mz/common/network/Nt;->c()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {p0}, Lcom/mz/common/network/Nt;->e()Z

    move-result v5

    sget-object v6, Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;->TIMEOUT:Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/mz/common/network/request/RequestNTCommon;->a(Landroid/content/Context;Ljava/io/InputStream;Landroid/os/Handler;ZLcom/mz/common/network/request/RequestNTCommon$CONNECTION;)V

    .line 91
    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :cond_6
    if-eqz v8, :cond_9

    .line 103
    :try_start_8
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_7

    :catch_6
    move-exception v0

    .line 105
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    :catchall_2
    move-exception p1

    :goto_5
    if-eqz v8, :cond_7

    .line 103
    :try_start_9
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_6

    :catch_7
    move-exception v0

    .line 105
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 108
    :cond_7
    :goto_6
    throw p1

    .line 111
    :cond_8
    invoke-virtual {p0}, Lcom/mz/common/network/Nt;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_9

    .line 112
    invoke-virtual {p0, v7}, Lcom/mz/common/network/Nt;->cancel(Z)Z

    .line 113
    invoke-virtual {p1}, Lcom/mz/common/network/request/RequestNTCommon;->e()V

    const-string v0, "INTERNET NOT SUPPORT!"

    .line 114
    invoke-static {v0}, Lcom/mz/common/MzLog;->a(Ljava/lang/String;)V

    .line 115
    invoke-direct {p0}, Lcom/mz/common/network/Nt;->h()V

    :cond_9
    :goto_7
    return-object p1
.end method

.method public a(Landroid/content/Context;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/mz/common/network/Nt;->c:Landroid/content/Context;

    return-void
.end method

.method public a(Landroid/os/Handler;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/mz/common/network/Nt;->e:Landroid/os/Handler;

    return-void
.end method

.method public a(Lcom/mz/common/network/Nt$OnProgressbarListener;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/mz/common/network/Nt;->h:Lcom/mz/common/network/Nt$OnProgressbarListener;

    return-void
.end method

.method protected a(Lcom/mz/common/network/request/RequestNTCommon;)V
    .locals 0

    .line 130
    invoke-direct {p0}, Lcom/mz/common/network/Nt;->h()V

    .line 131
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 212
    iput-boolean p1, p0, Lcom/mz/common/network/Nt;->d:Z

    return-void
.end method

.method protected varargs a([Ljava/lang/Integer;)V
    .locals 0

    .line 137
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 228
    iput-boolean p1, p0, Lcom/mz/common/network/Nt;->f:Z

    return-void
.end method

.method public b()Z
    .locals 1

    .line 208
    iget-boolean v0, p0, Lcom/mz/common/network/Nt;->d:Z

    return v0
.end method

.method public c()Landroid/os/Handler;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/mz/common/network/Nt;->e:Landroid/os/Handler;

    return-object v0
.end method

.method public c(Z)V
    .locals 0

    .line 236
    iput-boolean p1, p0, Lcom/mz/common/network/Nt;->g:Z

    return-void
.end method

.method public d()Z
    .locals 1

    .line 224
    iget-boolean v0, p0, Lcom/mz/common/network/Nt;->f:Z

    return v0
.end method

.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Lcom/mz/common/network/request/RequestNTCommon;

    invoke-virtual {p0, p1}, Lcom/mz/common/network/Nt;->a([Lcom/mz/common/network/request/RequestNTCommon;)Lcom/mz/common/network/request/RequestNTCommon;

    move-result-object p1

    return-object p1
.end method

.method public e()Z
    .locals 1

    .line 232
    iget-boolean v0, p0, Lcom/mz/common/network/Nt;->g:Z

    return v0
.end method

.method public f()Lcom/mz/common/network/Nt$OnProgressbarListener;
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/mz/common/network/Nt;->h:Lcom/mz/common/network/Nt$OnProgressbarListener;

    return-object v0
.end method

.method protected onCancelled()V
    .locals 0

    .line 142
    invoke-direct {p0}, Lcom/mz/common/network/Nt;->h()V

    .line 143
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    return-void
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/mz/common/network/request/RequestNTCommon;

    invoke-virtual {p0, p1}, Lcom/mz/common/network/Nt;->a(Lcom/mz/common/network/request/RequestNTCommon;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .line 123
    invoke-virtual {p0}, Lcom/mz/common/network/Nt;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mz/common/MZUtils;->a(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mz/common/network/Nt;->a(Z)V

    .line 124
    invoke-direct {p0}, Lcom/mz/common/network/Nt;->g()V

    .line 125
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method

.method protected varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/mz/common/network/Nt;->a([Ljava/lang/Integer;)V

    return-void
.end method
