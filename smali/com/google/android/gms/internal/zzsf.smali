.class final Lcom/google/android/gms/internal/zzsf;
.super Lcom/google/android/gms/internal/zzki;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/zzse;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzse;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzsf;->a:Lcom/google/android/gms/internal/zzse;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzki;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClicked()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsf;->a:Lcom/google/android/gms/internal/zzse;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzse;->a(Lcom/google/android/gms/internal/zzse;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzsm;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzsm;-><init>(Lcom/google/android/gms/internal/zzsf;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onAdClosed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsf;->a:Lcom/google/android/gms/internal/zzse;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzse;->a(Lcom/google/android/gms/internal/zzse;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzsg;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzsg;-><init>(Lcom/google/android/gms/internal/zzsf;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onAdFailedToLoad(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsf;->a:Lcom/google/android/gms/internal/zzse;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzse;->a(Lcom/google/android/gms/internal/zzse;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzsh;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzsh;-><init>(Lcom/google/android/gms/internal/zzsf;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "Pooled interstitial failed to load."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzagf;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final onAdImpression()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsf;->a:Lcom/google/android/gms/internal/zzse;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzse;->a(Lcom/google/android/gms/internal/zzse;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzsl;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzsl;-><init>(Lcom/google/android/gms/internal/zzsf;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onAdLeftApplication()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsf;->a:Lcom/google/android/gms/internal/zzse;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzse;->a(Lcom/google/android/gms/internal/zzse;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzsi;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzsi;-><init>(Lcom/google/android/gms/internal/zzsf;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onAdLoaded()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsf;->a:Lcom/google/android/gms/internal/zzse;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzse;->a(Lcom/google/android/gms/internal/zzse;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzsj;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzsj;-><init>(Lcom/google/android/gms/internal/zzsf;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "Pooled interstitial loaded."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final onAdOpened()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsf;->a:Lcom/google/android/gms/internal/zzse;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzse;->a(Lcom/google/android/gms/internal/zzse;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzsk;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzsk;-><init>(Lcom/google/android/gms/internal/zzsf;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
