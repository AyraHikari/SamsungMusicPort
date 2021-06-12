.class final Lcom/google/android/gms/ads/internal/zzbe;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/zzoj;

.field private synthetic b:Lcom/google/android/gms/ads/internal/zzba;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzba;Lcom/google/android/gms/internal/zzoj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzbe;->b:Lcom/google/android/gms/ads/internal/zzba;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzbe;->a:Lcom/google/android/gms/internal/zzoj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbe;->b:Lcom/google/android/gms/ads/internal/zzba;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzba;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->q:Lcom/google/android/gms/internal/zzqq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbe;->b:Lcom/google/android/gms/ads/internal/zzba;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzba;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->q:Lcom/google/android/gms/internal/zzqq;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzbe;->a:Lcom/google/android/gms/internal/zzoj;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzqq;->zza(Lcom/google/android/gms/internal/zzqe;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not call OnAppInstallAdLoadedListener.onAppInstallAdLoaded()."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzagf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
