.class final Lcom/google/android/gms/ads/internal/zzbq;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/google/android/gms/ads/internal/zzbm;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/ads/internal/zzbm;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzbq;->a:Lcom/google/android/gms/ads/internal/zzbm;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/ads/internal/zzbm;Lcom/google/android/gms/ads/internal/zzbn;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/internal/zzbq;-><init>(Lcom/google/android/gms/ads/internal/zzbm;)V

    return-void
.end method

.method private final varargs a([Ljava/lang/Void;)Ljava/lang/String;
    .locals 4

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzbq;->a:Lcom/google/android/gms/ads/internal/zzbm;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbq;->a:Lcom/google/android/gms/ads/internal/zzbm;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/zzbm;->zze(Lcom/google/android/gms/ads/internal/zzbm;)Ljava/util/concurrent/Future;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zznh;->cj:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->f()Lcom/google/android/gms/internal/zznf;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/zznf;->a(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzcv;

    invoke-static {p1, v0}, Lcom/google/android/gms/ads/internal/zzbm;->zza(Lcom/google/android/gms/ads/internal/zzbm;Lcom/google/android/gms/internal/zzcv;)Lcom/google/android/gms/internal/zzcv;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "Timed out waiting for ad data"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzagf;->e(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p1

    const-string v0, "Failed to load ad data"

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzagf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzbq;->a:Lcom/google/android/gms/ads/internal/zzbm;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/zzbm;->zzdy()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/internal/zzbq;->a([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbq;->a:Lcom/google/android/gms/ads/internal/zzbm;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/zzbm;->zzf(Lcom/google/android/gms/ads/internal/zzbm;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbq;->a:Lcom/google/android/gms/ads/internal/zzbm;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/zzbm;->zzf(Lcom/google/android/gms/ads/internal/zzbm;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
