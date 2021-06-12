.class public Lcom/google/android/gms/ads/AdLoader;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/AdLoader$Builder;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/zzjm;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/android/gms/internal/zzkk;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzkk;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzjm;->a:Lcom/google/android/gms/internal/zzjm;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/ads/AdLoader;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzkk;Lcom/google/android/gms/internal/zzjm;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzkk;Lcom/google/android/gms/internal/zzjm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/AdLoader;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/ads/AdLoader;->c:Lcom/google/android/gms/internal/zzkk;

    iput-object p3, p0, Lcom/google/android/gms/ads/AdLoader;->a:Lcom/google/android/gms/internal/zzjm;

    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/zzlt;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdLoader;->c:Lcom/google/android/gms/internal/zzkk;

    iget-object v1, p0, Lcom/google/android/gms/ads/AdLoader;->b:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/zzjm;->a(Landroid/content/Context;Lcom/google/android/gms/internal/zzlt;)Lcom/google/android/gms/internal/zzjj;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzkk;->zzd(Lcom/google/android/gms/internal/zzjj;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Failed to load ad."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzakb;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/ads/AdRequest;)V
    .locals 0
    .annotation build Landroid/support/annotation/RequiresPermission;
        value = "android.permission.INTERNET"
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdRequest;->a()Lcom/google/android/gms/internal/zzlt;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/AdLoader;->a(Lcom/google/android/gms/internal/zzlt;)V

    return-void
.end method
