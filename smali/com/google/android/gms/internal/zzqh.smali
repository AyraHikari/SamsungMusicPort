.class public final Lcom/google/android/gms/internal/zzqh;
.super Lcom/google/android/gms/ads/formats/NativeAppInstallAd;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/zzqe;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/ads/formats/NativeAd$Image;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/internal/zzpt;

.field private final d:Lcom/google/android/gms/ads/VideoController;

.field private final e:Lcom/google/android/gms/ads/formats/NativeAd$AdChoicesInfo;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzqe;)V
    .locals 4

    invoke-direct {p0}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqh;->b:Ljava/util/List;

    new-instance v0, Lcom/google/android/gms/ads/VideoController;

    invoke-direct {v0}, Lcom/google/android/gms/ads/VideoController;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqh;->d:Lcom/google/android/gms/ads/VideoController;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqh;->a:Lcom/google/android/gms/internal/zzqe;

    const/4 p1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh;->a:Lcom/google/android/gms/internal/zzqe;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqe;->getImages()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Landroid/os/IBinder;

    if-eqz v2, :cond_2

    check-cast v1, Landroid/os/IBinder;

    if-eqz v1, :cond_2

    const-string v2, "com.google.android.gms.ads.internal.formats.client.INativeAdImage"

    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/zzpq;

    if-eqz v3, :cond_1

    move-object v1, v2

    check-cast v1, Lcom/google/android/gms/internal/zzpq;

    goto :goto_1

    :cond_1
    new-instance v2, Lcom/google/android/gms/internal/zzps;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/zzps;-><init>(Landroid/os/IBinder;)V

    move-object v1, v2

    goto :goto_1

    :cond_2
    move-object v1, p1

    :goto_1
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqh;->b:Ljava/util/List;

    new-instance v3, Lcom/google/android/gms/internal/zzpt;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/zzpt;-><init>(Lcom/google/android/gms/internal/zzpq;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to get image."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzakb;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh;->a:Lcom/google/android/gms/internal/zzqe;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqe;->zzjs()Lcom/google/android/gms/internal/zzpq;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v1, Lcom/google/android/gms/internal/zzpt;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzpt;-><init>(Lcom/google/android/gms/internal/zzpq;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v1, "Failed to get image."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzakb;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    move-object v1, p1

    :goto_2
    iput-object v1, p0, Lcom/google/android/gms/internal/zzqh;->c:Lcom/google/android/gms/internal/zzpt;

    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh;->a:Lcom/google/android/gms/internal/zzqe;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqe;->zzjy()Lcom/google/android/gms/internal/zzpm;

    move-result-object v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/google/android/gms/internal/zzpp;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqh;->a:Lcom/google/android/gms/internal/zzqe;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzqe;->zzjy()Lcom/google/android/gms/internal/zzpm;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzpp;-><init>(Lcom/google/android/gms/internal/zzpm;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    move-object p1, v0

    goto :goto_3

    :catch_2
    move-exception v0

    const-string v1, "Failed to get attribution info."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzakb;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    iput-object p1, p0, Lcom/google/android/gms/internal/zzqh;->e:Lcom/google/android/gms/ads/formats/NativeAd$AdChoicesInfo;

    return-void
.end method

.method private final k()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh;->a:Lcom/google/android/gms/internal/zzqe;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqe;->zzjt()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Failed to retrieve native ad engine."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzakb;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method protected final synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqh;->k()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/lang/CharSequence;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh;->a:Lcom/google/android/gms/internal/zzqe;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqe;->getHeadline()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Failed to get headline."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzakb;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/ads/formats/NativeAd$Image;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh;->b:Ljava/util/List;

    return-object v0
.end method

.method public final d()Ljava/lang/CharSequence;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh;->a:Lcom/google/android/gms/internal/zzqe;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqe;->getBody()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Failed to get body."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzakb;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final e()Lcom/google/android/gms/ads/formats/NativeAd$Image;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh;->c:Lcom/google/android/gms/internal/zzpt;

    return-object v0
.end method

.method public final f()Ljava/lang/CharSequence;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh;->a:Lcom/google/android/gms/internal/zzqe;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqe;->getCallToAction()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Failed to get call to action."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzakb;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final g()Ljava/lang/Double;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzqh;->a:Lcom/google/android/gms/internal/zzqe;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzqe;->getStarRating()D

    move-result-wide v1

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    cmpl-double v3, v1, v3

    if-nez v3, :cond_0

    return-object v0

    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    const-string v2, "Failed to get star rating."

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/zzakb;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public final h()Ljava/lang/CharSequence;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh;->a:Lcom/google/android/gms/internal/zzqe;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqe;->getStore()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Failed to get store"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzakb;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final i()Ljava/lang/CharSequence;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh;->a:Lcom/google/android/gms/internal/zzqe;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqe;->getPrice()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Failed to get price."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzakb;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final j()Lcom/google/android/gms/ads/VideoController;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh;->a:Lcom/google/android/gms/internal/zzqe;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqe;->getVideoController()Lcom/google/android/gms/internal/zzll;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh;->d:Lcom/google/android/gms/ads/VideoController;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqh;->a:Lcom/google/android/gms/internal/zzqe;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzqe;->getVideoController()Lcom/google/android/gms/internal/zzll;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/VideoController;->a(Lcom/google/android/gms/internal/zzll;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Exception occurred while getting video controller"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzakb;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh;->d:Lcom/google/android/gms/ads/VideoController;

    return-object v0
.end method
