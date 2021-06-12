.class public final Lcom/google/android/gms/internal/zzon;
.super Lcom/google/android/gms/internal/zzqn;

# interfaces
.implements Lcom/google/android/gms/internal/zzou;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private final zzbua:Lcom/google/android/gms/internal/zzog;

.field private zzbub:Lcom/google/android/gms/internal/zzll;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private zzbuc:Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private zzbuf:Lcom/google/android/gms/internal/zzos;

.field private final zzbuk:Ljava/lang/String;

.field private final zzbul:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzoi;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbum:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/support/v4/util/SimpleArrayMap;Landroid/support/v4/util/SimpleArrayMap;Lcom/google/android/gms/internal/zzog;Lcom/google/android/gms/internal/zzll;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/support/v4/util/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzoi;",
            ">;",
            "Landroid/support/v4/util/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/internal/zzog;",
            "Lcom/google/android/gms/internal/zzll;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqn;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzon;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzon;->zzbuk:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzon;->zzbul:Landroid/support/v4/util/SimpleArrayMap;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzon;->zzbum:Landroid/support/v4/util/SimpleArrayMap;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzon;->zzbua:Lcom/google/android/gms/internal/zzog;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzon;->zzbub:Lcom/google/android/gms/internal/zzll;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzon;->zzbuc:Landroid/view/View;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzon;)Lcom/google/android/gms/internal/zzos;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzon;->zzbuf:Lcom/google/android/gms/internal/zzos;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzon;Lcom/google/android/gms/internal/zzos;)Lcom/google/android/gms/internal/zzos;
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzon;->zzbuf:Lcom/google/android/gms/internal/zzos;

    return-object p1
.end method


# virtual methods
.method public final destroy()V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzahn;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/zzop;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzop;-><init>(Lcom/google/android/gms/internal/zzon;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzon;->zzbub:Lcom/google/android/gms/internal/zzll;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzon;->zzbuc:Landroid/view/View;

    return-void
.end method

.method public final getAvailableAssetNames()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzon;->zzbul:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzon;->zzbum:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v1}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v1

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/google/android/gms/internal/zzon;->zzbul:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v4}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    iget-object v4, p0, Lcom/google/android/gms/internal/zzon;->zzbul:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v4, v2}, Landroid/support/v4/util/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v0, v3

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/zzon;->zzbum:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v2}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzon;->zzbum:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v2, v1}, Landroid/support/v4/util/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v3

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getCustomTemplateId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzon;->zzbuk:Ljava/lang/String;

    return-object v0
.end method

.method public final getVideoController()Lcom/google/android/gms/internal/zzll;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzon;->zzbub:Lcom/google/android/gms/internal/zzll;

    return-object v0
.end method

.method public final performClick(Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/zzon;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzon;->zzbuf:Lcom/google/android/gms/internal/zzos;

    if-nez v1, :cond_0

    const-string p1, "Attempt to call performClick before ad initialized."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzakb;->c(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzon;->zzbuf:Lcom/google/android/gms/internal/zzos;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p1

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/zzos;->a(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;Landroid/view/View;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final recordImpression()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzon;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzon;->zzbuf:Lcom/google/android/gms/internal/zzos;

    if-nez v1, :cond_0

    const-string v1, "Attempt to perform recordImpression before ad initialized."

    invoke-static {v1}, Lcom/google/android/gms/internal/zzakb;->c(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzon;->zzbuf:Lcom/google/android/gms/internal/zzos;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v2}, Lcom/google/android/gms/internal/zzos;->a(Landroid/view/View;Ljava/util/Map;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzap(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzon;->zzbum:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final zzaq(Ljava/lang/String;)Lcom/google/android/gms/internal/zzpq;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzon;->zzbul:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzpq;

    return-object p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/zzos;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzon;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzon;->zzbuf:Lcom/google/android/gms/internal/zzos;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzf(Lcom/google/android/gms/dynamic/IObjectWrapper;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzon;->zzbuf:Lcom/google/android/gms/internal/zzos;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "Attempt to call renderVideoInMediaView before ad initialized."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzakb;->c(Ljava/lang/String;)V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzon;->zzbuc:Landroid/view/View;

    if-nez v0, :cond_1

    return v1

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/zzoo;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzoo;-><init>(Lcom/google/android/gms/internal/zzon;)V

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zzn;->zzx(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzon;->zzbuf:Lcom/google/android/gms/internal/zzos;

    invoke-interface {v1, p1, v0}, Lcom/google/android/gms/internal/zzos;->a(Landroid/view/View;Lcom/google/android/gms/internal/zzoq;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final zzjt()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzon;->zzbuf:Lcom/google/android/gms/internal/zzos;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zzn;->zzz(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    return-object v0
.end method

.method public final zzju()Ljava/lang/String;
    .locals 1

    const-string v0, "3"

    return-object v0
.end method

.method public final zzjv()Lcom/google/android/gms/internal/zzog;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzon;->zzbua:Lcom/google/android/gms/internal/zzog;

    return-object v0
.end method

.method public final zzjw()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzon;->zzbuc:Landroid/view/View;

    return-object v0
.end method

.method public final zzka()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzon;->zzbuf:Lcom/google/android/gms/internal/zzos;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzos;->i()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zzn;->zzz(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    return-object v0
.end method
