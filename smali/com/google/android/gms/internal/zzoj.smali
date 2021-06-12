.class public final Lcom/google/android/gms/internal/zzoj;
.super Lcom/google/android/gms/internal/zzqf;

# interfaces
.implements Lcom/google/android/gms/internal/zzov;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# instance fields
.field private mExtras:Landroid/os/Bundle;

.field private mLock:Ljava/lang/Object;

.field private zzbts:Ljava/lang/String;

.field private zzbtt:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzoi;",
            ">;"
        }
    .end annotation
.end field

.field private zzbtu:Ljava/lang/String;

.field private zzbtv:Lcom/google/android/gms/internal/zzpq;

.field private zzbtw:Ljava/lang/String;

.field private zzbtx:D

.field private zzbty:Ljava/lang/String;

.field private zzbtz:Ljava/lang/String;

.field private zzbua:Lcom/google/android/gms/internal/zzog;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private zzbub:Lcom/google/android/gms/internal/zzll;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private zzbuc:Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private zzbud:Lcom/google/android/gms/dynamic/IObjectWrapper;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private zzbue:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private zzbuf:Lcom/google/android/gms/internal/zzos;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/zzpq;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzog;Landroid/os/Bundle;Lcom/google/android/gms/internal/zzll;Landroid/view/View;Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;)V
    .locals 3
    .param p10    # Lcom/google/android/gms/internal/zzog;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzoi;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzpq;",
            "Ljava/lang/String;",
            "D",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzog;",
            "Landroid/os/Bundle;",
            "Lcom/google/android/gms/internal/zzll;",
            "Landroid/view/View;",
            "Lcom/google/android/gms/dynamic/IObjectWrapper;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqf;-><init>()V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/zzoj;->mLock:Ljava/lang/Object;

    move-object v1, p1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzoj;->zzbts:Ljava/lang/String;

    move-object v1, p2

    iput-object v1, v0, Lcom/google/android/gms/internal/zzoj;->zzbtt:Ljava/util/List;

    move-object v1, p3

    iput-object v1, v0, Lcom/google/android/gms/internal/zzoj;->zzbtu:Ljava/lang/String;

    move-object v1, p4

    iput-object v1, v0, Lcom/google/android/gms/internal/zzoj;->zzbtv:Lcom/google/android/gms/internal/zzpq;

    move-object v1, p5

    iput-object v1, v0, Lcom/google/android/gms/internal/zzoj;->zzbtw:Ljava/lang/String;

    move-wide v1, p6

    iput-wide v1, v0, Lcom/google/android/gms/internal/zzoj;->zzbtx:D

    move-object v1, p8

    iput-object v1, v0, Lcom/google/android/gms/internal/zzoj;->zzbty:Ljava/lang/String;

    move-object v1, p9

    iput-object v1, v0, Lcom/google/android/gms/internal/zzoj;->zzbtz:Ljava/lang/String;

    move-object v1, p10

    iput-object v1, v0, Lcom/google/android/gms/internal/zzoj;->zzbua:Lcom/google/android/gms/internal/zzog;

    move-object v1, p11

    iput-object v1, v0, Lcom/google/android/gms/internal/zzoj;->mExtras:Landroid/os/Bundle;

    move-object v1, p12

    iput-object v1, v0, Lcom/google/android/gms/internal/zzoj;->zzbub:Lcom/google/android/gms/internal/zzll;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/google/android/gms/internal/zzoj;->zzbuc:Landroid/view/View;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/google/android/gms/internal/zzoj;->zzbud:Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/google/android/gms/internal/zzoj;->zzbue:Ljava/lang/String;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzoj;Lcom/google/android/gms/internal/zzos;)Lcom/google/android/gms/internal/zzos;
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzoj;->zzbuf:Lcom/google/android/gms/internal/zzos;

    return-object p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzoj;)Lcom/google/android/gms/internal/zzos;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzoj;->zzbuf:Lcom/google/android/gms/internal/zzos;

    return-object p0
.end method


# virtual methods
.method public final destroy()V
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/zzahn;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/zzok;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzok;-><init>(Lcom/google/android/gms/internal/zzoj;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzoj;->zzbts:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzoj;->zzbtt:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzoj;->zzbtu:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzoj;->zzbtv:Lcom/google/android/gms/internal/zzpq;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzoj;->zzbtw:Ljava/lang/String;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/android/gms/internal/zzoj;->zzbtx:D

    iput-object v0, p0, Lcom/google/android/gms/internal/zzoj;->zzbty:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzoj;->zzbtz:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzoj;->zzbua:Lcom/google/android/gms/internal/zzog;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzoj;->mExtras:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzoj;->mLock:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzoj;->zzbub:Lcom/google/android/gms/internal/zzll;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzoj;->zzbuc:Landroid/view/View;

    return-void
.end method

.method public final getBody()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj;->zzbtu:Ljava/lang/String;

    return-object v0
.end method

.method public final getCallToAction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj;->zzbtw:Ljava/lang/String;

    return-object v0
.end method

.method public final getCustomTemplateId()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public final getExtras()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getHeadline()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj;->zzbts:Ljava/lang/String;

    return-object v0
.end method

.method public final getImages()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj;->zzbtt:Ljava/util/List;

    return-object v0
.end method

.method public final getMediationAdapterClassName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj;->zzbue:Ljava/lang/String;

    return-object v0
.end method

.method public final getPrice()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj;->zzbtz:Ljava/lang/String;

    return-object v0
.end method

.method public final getStarRating()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzoj;->zzbtx:D

    return-wide v0
.end method

.method public final getStore()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj;->zzbty:Ljava/lang/String;

    return-object v0
.end method

.method public final getVideoController()Lcom/google/android/gms/internal/zzll;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj;->zzbub:Lcom/google/android/gms/internal/zzll;

    return-object v0
.end method

.method public final performClick(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzoj;->zzbuf:Lcom/google/android/gms/internal/zzos;

    if-nez v1, :cond_0

    const-string p1, "Attempt to perform click before app install ad initialized."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzagf;->c(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzoj;->zzbuf:Lcom/google/android/gms/internal/zzos;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/zzos;->b(Landroid/os/Bundle;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final recordImpression(Landroid/os/Bundle;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzoj;->zzbuf:Lcom/google/android/gms/internal/zzos;

    if-nez v1, :cond_0

    const-string p1, "Attempt to record impression before app install ad initialized."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzagf;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    monitor-exit v0

    return p1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzoj;->zzbuf:Lcom/google/android/gms/internal/zzos;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/zzos;->a(Landroid/os/Bundle;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final reportTouchEvent(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzoj;->zzbuf:Lcom/google/android/gms/internal/zzos;

    if-nez v1, :cond_0

    const-string p1, "Attempt to perform click before app install ad initialized."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzagf;->c(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzoj;->zzbuf:Lcom/google/android/gms/internal/zzos;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/zzos;->c(Landroid/os/Bundle;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/zzos;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzoj;->zzbuf:Lcom/google/android/gms/internal/zzos;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzjs()Lcom/google/android/gms/internal/zzpq;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj;->zzbtv:Lcom/google/android/gms/internal/zzpq;

    return-object v0
.end method

.method public final zzjt()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj;->zzbuf:Lcom/google/android/gms/internal/zzos;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zzn;->zzz(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    return-object v0
.end method

.method public final zzju()Ljava/lang/String;
    .locals 1

    const-string v0, "2"

    return-object v0
.end method

.method public final zzjv()Lcom/google/android/gms/internal/zzog;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj;->zzbua:Lcom/google/android/gms/internal/zzog;

    return-object v0
.end method

.method public final zzjw()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj;->zzbuc:Landroid/view/View;

    return-object v0
.end method

.method public final zzjx()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj;->zzbud:Lcom/google/android/gms/dynamic/IObjectWrapper;

    return-object v0
.end method

.method public final zzjy()Lcom/google/android/gms/internal/zzpm;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoj;->zzbua:Lcom/google/android/gms/internal/zzog;

    return-object v0
.end method
