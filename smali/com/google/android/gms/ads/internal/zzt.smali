.class final Lcom/google/android/gms/ads/internal/zzt;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/zzol;

.field private synthetic b:Lcom/google/android/gms/ads/internal/zzq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzq;Lcom/google/android/gms/internal/zzol;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzt;->b:Lcom/google/android/gms/ads/internal/zzq;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzt;->a:Lcom/google/android/gms/internal/zzol;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt;->b:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->r:Lcom/google/android/gms/internal/zzqt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt;->b:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->r:Lcom/google/android/gms/internal/zzqt;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzt;->a:Lcom/google/android/gms/internal/zzol;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzqt;->zza(Lcom/google/android/gms/internal/zzqi;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not call OnContentAdLoadedListener.onContentAdLoaded()."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzagf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
