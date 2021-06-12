.class public final Lcom/google/android/gms/internal/zzaid;
.super Lcom/google/android/gms/internal/zzaic;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaic;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/zzanh;Z)Lcom/google/android/gms/internal/zzani;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzaot;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/zzaot;-><init>(Lcom/google/android/gms/internal/zzanh;Z)V

    return-object v0
.end method

.method public final c(Landroid/content/Context;)Landroid/webkit/CookieManager;
    .locals 3

    invoke-static {}, Lcom/google/android/gms/internal/zzaid;->e()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v1, "Failed to obtain CookieManager."

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/zzagf;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->i()Lcom/google/android/gms/internal/zzaft;

    move-result-object v1

    const-string v2, "ApiLevelUtil.getCookieManager"

    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/internal/zzaft;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-object v0
.end method

.method public final f()I
    .locals 1

    const v0, 0x1030226

    return v0
.end method
