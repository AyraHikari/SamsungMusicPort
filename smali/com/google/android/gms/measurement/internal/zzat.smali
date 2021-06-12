.class public final Lcom/google/android/gms/measurement/internal/zzat;
.super Lcom/google/android/gms/measurement/internal/zzez;


# instance fields
.field private final b:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzfa;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzez;-><init>(Lcom/google/android/gms/measurement/internal/zzfa;)V

    .line 2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-ge p1, v0, :cond_0

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzfl;

    invoke-direct {p1}, Lcom/google/android/gms/measurement/internal/zzfl;-><init>()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzat;->b:Ljavax/net/ssl/SSLSocketFactory;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/measurement/internal/zzat;Ljava/net/HttpURLConnection;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzat;->a(Ljava/net/HttpURLConnection;)[B

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/net/HttpURLConnection;)[B
    .locals 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 14
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 15
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v0, 0x400

    .line 16
    :try_start_1
    new-array v0, v0, [B

    .line 17
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v3, 0x0

    .line 18
    invoke-virtual {v1, v0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_1

    .line 21
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_1
    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object v4, v0

    move-object v0, p0

    move-object p0, v4

    :goto_1
    if-eqz p0, :cond_2

    .line 24
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_2
    throw v0
.end method


# virtual methods
.method protected final a(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    .line 26
    instance-of v0, p1, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_1

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzat;->b:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_0

    instance-of v0, p1, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_0

    .line 29
    move-object v0, p1

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 30
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzat;->b:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 31
    :cond_0
    check-cast p1, Ljava/net/HttpURLConnection;

    const/4 v0, 0x0

    .line 32
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDefaultUseCaches(Z)V

    const v1, 0xea60

    .line 33
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const v1, 0xee48

    .line 34
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 35
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const/4 v0, 0x1

    .line 36
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    return-object p1

    .line 27
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Failed to obtain HTTP connection"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final bridge synthetic a()V
    .locals 0

    .line 41
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzez;->a()V

    return-void
.end method

.method public final bridge synthetic b()V
    .locals 0

    .line 42
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzez;->b()V

    return-void
.end method

.method public final bridge synthetic c()V
    .locals 0

    .line 43
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzez;->c()V

    return-void
.end method

.method public final bridge synthetic d()V
    .locals 0

    .line 44
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzez;->d()V

    return-void
.end method

.method protected final e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final f()Z
    .locals 2

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzez;->k()V

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->n()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 9
    :try_start_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic g()Lcom/google/android/gms/measurement/internal/zzfg;
    .locals 1

    .line 38
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzez;->g()Lcom/google/android/gms/measurement/internal/zzfg;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic h()Lcom/google/android/gms/measurement/internal/zzj;
    .locals 1

    .line 39
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzez;->h()Lcom/google/android/gms/measurement/internal/zzj;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic i()Lcom/google/android/gms/measurement/internal/zzq;
    .locals 1

    .line 40
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzez;->i()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic l()Lcom/google/android/gms/measurement/internal/zzx;
    .locals 1

    .line 45
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzez;->l()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic m()Lcom/google/android/gms/common/util/Clock;
    .locals 1

    .line 46
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzez;->m()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic n()Landroid/content/Context;
    .locals 1

    .line 47
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzez;->n()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic o()Lcom/google/android/gms/measurement/internal/zzan;
    .locals 1

    .line 48
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzez;->o()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic p()Lcom/google/android/gms/measurement/internal/zzfk;
    .locals 1

    .line 49
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzez;->p()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic q()Lcom/google/android/gms/measurement/internal/zzbo;
    .locals 1

    .line 50
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzez;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic r()Lcom/google/android/gms/measurement/internal/zzap;
    .locals 1

    .line 51
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzez;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic s()Lcom/google/android/gms/measurement/internal/zzba;
    .locals 1

    .line 52
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzez;->s()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic t()Lcom/google/android/gms/measurement/internal/zzn;
    .locals 1

    .line 53
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzez;->t()Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic u()Lcom/google/android/gms/measurement/internal/zzk;
    .locals 1

    .line 54
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzez;->u()Lcom/google/android/gms/measurement/internal/zzk;

    move-result-object v0

    return-object v0
.end method
