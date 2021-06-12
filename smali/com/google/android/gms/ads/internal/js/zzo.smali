.class final Lcom/google/android/gms/ads/internal/js/zzo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/zzcv;

.field final synthetic b:Lcom/google/android/gms/ads/internal/js/zzae;

.field final synthetic c:Lcom/google/android/gms/ads/internal/js/zzn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/js/zzn;Lcom/google/android/gms/internal/zzcv;Lcom/google/android/gms/ads/internal/js/zzae;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/js/zzo;->c:Lcom/google/android/gms/ads/internal/js/zzn;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/js/zzo;->a:Lcom/google/android/gms/internal/zzcv;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/js/zzo;->b:Lcom/google/android/gms/ads/internal/js/zzae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/js/zzo;->c:Lcom/google/android/gms/ads/internal/js/zzn;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/js/zzn;->a(Lcom/google/android/gms/ads/internal/js/zzn;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/js/zzo;->c:Lcom/google/android/gms/ads/internal/js/zzn;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/js/zzn;->b(Lcom/google/android/gms/ads/internal/js/zzn;)Lcom/google/android/gms/internal/zzakd;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/js/zzo;->a:Lcom/google/android/gms/internal/zzcv;

    new-instance v3, Lcom/google/android/gms/ads/internal/js/zze;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v1, v2, v4}, Lcom/google/android/gms/ads/internal/js/zze;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzakd;Lcom/google/android/gms/internal/zzcv;Lcom/google/android/gms/ads/internal/zzv;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Lcom/google/android/gms/ads/internal/js/zzp;

    invoke-direct {v0, p0, v3}, Lcom/google/android/gms/ads/internal/js/zzp;-><init>(Lcom/google/android/gms/ads/internal/js/zzo;Lcom/google/android/gms/ads/internal/js/zzc;)V

    invoke-interface {v3, v0}, Lcom/google/android/gms/ads/internal/js/zzc;->a(Lcom/google/android/gms/ads/internal/js/zzd;)V

    const-string v0, "/jsLoaded"

    new-instance v1, Lcom/google/android/gms/ads/internal/js/zzs;

    invoke-direct {v1, p0, v3}, Lcom/google/android/gms/ads/internal/js/zzs;-><init>(Lcom/google/android/gms/ads/internal/js/zzo;Lcom/google/android/gms/ads/internal/js/zzc;)V

    invoke-interface {v3, v0, v1}, Lcom/google/android/gms/ads/internal/js/zzc;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V

    new-instance v0, Lcom/google/android/gms/internal/zzajj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzajj;-><init>()V

    new-instance v1, Lcom/google/android/gms/ads/internal/js/zzt;

    invoke-direct {v1, p0, v3, v0}, Lcom/google/android/gms/ads/internal/js/zzt;-><init>(Lcom/google/android/gms/ads/internal/js/zzo;Lcom/google/android/gms/ads/internal/js/zzc;Lcom/google/android/gms/internal/zzajj;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzajj;->a(Ljava/lang/Object;)V

    const-string v0, "/requestReload"

    invoke-interface {v3, v0, v1}, Lcom/google/android/gms/ads/internal/js/zzc;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/js/zzo;->c:Lcom/google/android/gms/ads/internal/js/zzn;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/js/zzn;->f(Lcom/google/android/gms/ads/internal/js/zzn;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".js"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/js/zzo;->c:Lcom/google/android/gms/ads/internal/js/zzn;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/js/zzn;->f(Lcom/google/android/gms/ads/internal/js/zzn;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/google/android/gms/ads/internal/js/zzc;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/js/zzo;->c:Lcom/google/android/gms/ads/internal/js/zzn;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/js/zzn;->f(Lcom/google/android/gms/ads/internal/js/zzn;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<html>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/js/zzo;->c:Lcom/google/android/gms/ads/internal/js/zzn;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/js/zzn;->f(Lcom/google/android/gms/ads/internal/js/zzn;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/google/android/gms/ads/internal/js/zzc;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/js/zzo;->c:Lcom/google/android/gms/ads/internal/js/zzn;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/js/zzn;->f(Lcom/google/android/gms/ads/internal/js/zzn;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/google/android/gms/ads/internal/js/zzc;->b(Ljava/lang/String;)V

    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/zzahn;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/js/zzu;

    invoke-direct {v1, p0, v3}, Lcom/google/android/gms/ads/internal/js/zzu;-><init>(Lcom/google/android/gms/ads/internal/js/zzo;Lcom/google/android/gms/ads/internal/js/zzc;)V

    sget v2, Lcom/google/android/gms/ads/internal/js/zzy;->a:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Error creating webview."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzagf;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->i()Lcom/google/android/gms/internal/zzaft;

    move-result-object v1

    const-string v2, "SdkJavascriptFactory.loadJavascriptEngine"

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/zzaft;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/js/zzo;->b:Lcom/google/android/gms/ads/internal/js/zzae;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzall;->d()V

    return-void
.end method
