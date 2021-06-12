.class final Lcom/google/android/gms/internal/zzahx;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Landroid/content/Context;

.field private synthetic b:Landroid/webkit/WebSettings;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzahw;Landroid/content/Context;Landroid/webkit/WebSettings;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzahx;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzahx;->b:Landroid/webkit/WebSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzahx;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzahx;->b:Landroid/webkit/WebSettings;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzahx;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzahx;->b:Landroid/webkit/WebSettings;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/webkit/WebSettings;->setAppCacheMaxSize(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzahx;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzahx;->b:Landroid/webkit/WebSettings;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzahx;->a:Landroid/content/Context;

    const-string v3, "com.google.android.gms.ads.db"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzahx;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzahx;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzahx;->b:Landroid/webkit/WebSettings;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzahx;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzahx;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzahx;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
