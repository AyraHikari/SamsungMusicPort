.class public abstract Lcom/google/android/gms/ads/internal/zza;
.super Lcom/google/android/gms/internal/zzkt;

# interfaces
.implements Lcom/google/android/gms/ads/internal/gmsg/zzb;
.implements Lcom/google/android/gms/ads/internal/overlay/zzq;
.implements Lcom/google/android/gms/internal/zzafy;
.implements Lcom/google/android/gms/internal/zzje;
.implements Lcom/google/android/gms/internal/zzyb;
.implements Lcom/google/android/gms/internal/zzzx;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# instance fields
.field protected zzanj:Lcom/google/android/gms/internal/zznu;

.field protected zzank:Lcom/google/android/gms/internal/zzns;

.field private zzanl:Lcom/google/android/gms/internal/zzns;

.field protected zzanm:Z

.field protected final zzann:Lcom/google/android/gms/ads/internal/zzbi;

.field protected final zzano:Lcom/google/android/gms/ads/internal/zzbt;

.field protected transient zzanp:Lcom/google/android/gms/internal/zzjj;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected final zzanq:Lcom/google/android/gms/internal/zzfs;

.field protected final zzanr:Lcom/google/android/gms/ads/internal/zzv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzbt;Lcom/google/android/gms/ads/internal/zzbi;Lcom/google/android/gms/ads/internal/zzv;)V
    .locals 6
    .param p2    # Lcom/google/android/gms/ads/internal/zzbi;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzkt;-><init>()V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/google/android/gms/ads/internal/zza;->zzanm:Z

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    new-instance p1, Lcom/google/android/gms/ads/internal/zzbi;

    invoke-direct {p1, p0}, Lcom/google/android/gms/ads/internal/zzbi;-><init>(Lcom/google/android/gms/ads/internal/zza;)V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zza;->zzann:Lcom/google/android/gms/ads/internal/zzbi;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/zza;->zzanr:Lcom/google/android/gms/ads/internal/zzv;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->e()Lcom/google/android/gms/internal/zzahn;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object p2, p2, Lcom/google/android/gms/ads/internal/zzbt;->c:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzahn;->b(Landroid/content/Context;)Z

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->e()Lcom/google/android/gms/internal/zzahn;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object p2, p2, Lcom/google/android/gms/ads/internal/zzbt;->c:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzahn;->c(Landroid/content/Context;)Z

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/zzbt;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzagd;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->A()Lcom/google/android/gms/ads/internal/js/zzb;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object p2, p2, Lcom/google/android/gms/ads/internal/zzbt;->c:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/internal/js/zzb;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->i()Lcom/google/android/gms/internal/zzaft;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object p2, p2, Lcom/google/android/gms/ads/internal/zzbt;->c:Landroid/content/Context;

    iget-object p3, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object p3, p3, Lcom/google/android/gms/ads/internal/zzbt;->e:Lcom/google/android/gms/internal/zzakd;

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/zzaft;->a(Landroid/content/Context;Lcom/google/android/gms/internal/zzakd;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->j()Lcom/google/android/gms/internal/zzid;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object p2, p2, Lcom/google/android/gms/ads/internal/zzbt;->c:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzid;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->i()Lcom/google/android/gms/internal/zzaft;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaft;->u()Lcom/google/android/gms/internal/zzfs;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zza;->zzanq:Lcom/google/android/gms/internal/zzfs;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->h()Lcom/google/android/gms/internal/zzhg;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object p2, p2, Lcom/google/android/gms/ads/internal/zzbt;->c:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzhg;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->C()Lcom/google/android/gms/internal/zzajn;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object p2, p2, Lcom/google/android/gms/ads/internal/zzbt;->c:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzajn;->a(Landroid/content/Context;)V

    sget-object p1, Lcom/google/android/gms/internal/zznh;->bX:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->f()Lcom/google/android/gms/internal/zznf;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/zznf;->a(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    sget-object p2, Lcom/google/android/gms/internal/zznh;->bZ:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->f()Lcom/google/android/gms/internal/zznf;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/zznf;->a(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v1, Lcom/google/android/gms/ads/internal/zzb;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/gms/ads/internal/zzb;-><init>(Lcom/google/android/gms/ads/internal/zza;Ljava/util/concurrent/CountDownLatch;Ljava/util/Timer;)V

    const-wide/16 v2, 0x0

    sget-object p1, Lcom/google/android/gms/internal/zznh;->bY:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->f()Lcom/google/android/gms/internal/zznf;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/zznf;->a(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_0
    return-void
.end method

.method protected static zza(Lcom/google/android/gms/internal/zzjj;)Z
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/zzjj;->n:Landroid/os/Bundle;

    const-string v0, "com.google.ads.mediation.admob.AdMobAdapter"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v0, "gw"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static zzr(Ljava/lang/String;)J
    .locals 3

    const-string v0, "ufe"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x2c

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    :cond_0
    add-int/lit8 v0, v0, 0x4

    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    const-string p0, "Cannot find valid format of Url fetch time in CSI latency info."

    goto :goto_0

    :catch_1
    const-string p0, "Invalid index for Url fetch time in CSI latency info."

    :goto_0
    invoke-static {p0}, Lcom/google/android/gms/internal/zzagf;->e(Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    return-wide v0
.end method


# virtual methods
.method public destroy()V
    .locals 3

    const-string v0, "destroy must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->zzge(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzann:Lcom/google/android/gms/ads/internal/zzbi;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzbi;->a()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzanq:Lcom/google/android/gms/internal/zzfs;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbt;->j:Lcom/google/android/gms/internal/zzafo;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzfs;->b(Lcom/google/android/gms/internal/zzafo;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/zzbt;->f:Lcom/google/android/gms/ads/internal/zzbu;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/zzbt;->f:Lcom/google/android/gms/ads/internal/zzbu;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/zzbu;->b()V

    :cond_0
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzbt;->n:Lcom/google/android/gms/internal/zzkh;

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzbt;->o:Lcom/google/android/gms/internal/zzkx;

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzbt;->z:Lcom/google/android/gms/internal/zzoa;

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzbt;->p:Lcom/google/android/gms/internal/zzld;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/internal/zzbt;->a(Z)V

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/zzbt;->f:Lcom/google/android/gms/ads/internal/zzbu;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/zzbt;->f:Lcom/google/android/gms/ads/internal/zzbu;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/zzbu;->removeAllViews()V

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzbt;->b()V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzbt;->c()V

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzbt;->j:Lcom/google/android/gms/internal/zzafo;

    return-void
.end method

.method public getAdUnitId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoController()Lcom/google/android/gms/internal/zzll;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final isLoading()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzanm:Z

    return v0
.end method

.method public final isReady()Z
    .locals 1

    const-string v0, "isLoaded must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->zzge(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->g:Lcom/google/android/gms/internal/zzagb;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->h:Lcom/google/android/gms/internal/zzaif;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->j:Lcom/google/android/gms/internal/zzafo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onAdClicked()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->j:Lcom/google/android/gms/internal/zzafo;

    if-nez v0, :cond_0

    const-string v0, "Ad state was null when trying to ping click URLs."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "Pinging click URLs."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->l:Lcom/google/android/gms/internal/zzafq;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->l:Lcom/google/android/gms/internal/zzafq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzafq;->b()V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->j:Lcom/google/android/gms/internal/zzafo;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzafo;->c:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->e()Lcom/google/android/gms/internal/zzahn;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbt;->e:Lcom/google/android/gms/internal/zzakd;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzakd;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbt;->j:Lcom/google/android/gms/internal/zzafo;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzafo;->c:Ljava/util/List;

    invoke-virtual {p0, v2}, Lcom/google/android/gms/ads/internal/zza;->zzc(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzahn;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->m:Lcom/google/android/gms/internal/zzke;

    if-eqz v0, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->m:Lcom/google/android/gms/internal/zzke;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzke;->onAdClicked()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not notify onAdClicked event."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzagf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method

.method public final onAppEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->o:Lcom/google/android/gms/internal/zzkx;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->o:Lcom/google/android/gms/internal/zzkx;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/zzkx;->onAppEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "Could not call the AppEventListener."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzagf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    const-string v0, "pause must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->zzge(Ljava/lang/String;)V

    return-void
.end method

.method public resume()V
    .locals 1

    const-string v0, "resume must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->zzge(Ljava/lang/String;)V

    return-void
.end method

.method public setImmersiveMode(Z)V
    .locals 1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "onImmersiveModeUpdated is not supported for current ad type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setManualImpressionsEnabled(Z)V
    .locals 0

    const-string p1, "Attempt to call setManualImpressionsEnabled for an unsupported ad type."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzagf;->e(Ljava/lang/String;)V

    return-void
.end method

.method public final setUserId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "setUserId must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->zzge(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzbt;->B:Ljava/lang/String;

    return-void
.end method

.method public final stopLoading()V
    .locals 2

    const-string v0, "stopLoading must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->zzge(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzanm:Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/zzbt;->a(Z)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzadp;)V
    .locals 1

    const-string v0, "setRewardedVideoAdListener can only be called from the UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->zzge(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzbt;->A:Lcom/google/android/gms/internal/zzadp;

    return-void
.end method

.method protected final zza(Lcom/google/android/gms/internal/zzaeq;)V
    .locals 3
    .param p1    # Lcom/google/android/gms/internal/zzaeq;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->A:Lcom/google/android/gms/internal/zzadp;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v0, ""

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/internal/zzaeq;->b:Ljava/lang/String;

    iget v1, p1, Lcom/google/android/gms/internal/zzaeq;->c:I

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/zzbt;->A:Lcom/google/android/gms/internal/zzadp;

    new-instance v2, Lcom/google/android/gms/internal/zzadc;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/zzadc;-><init>(Ljava/lang/String;I)V

    invoke-interface {p1, v2}, Lcom/google/android/gms/internal/zzadp;->zza(Lcom/google/android/gms/internal/zzadh;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Could not call RewardedVideoAdListener.onRewarded()."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzagf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzafp;)V
    .locals 5

    iget-object v0, p1, Lcom/google/android/gms/internal/zzafp;->b:Lcom/google/android/gms/internal/zzaax;

    iget-wide v0, v0, Lcom/google/android/gms/internal/zzaax;->n:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/zzafp;->b:Lcom/google/android/gms/internal/zzaax;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaax;->x:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/zzafp;->b:Lcom/google/android/gms/internal/zzaax;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaax;->x:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/zza;->zzr(Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zza;->zzanj:Lcom/google/android/gms/internal/zznu;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzafp;->b:Lcom/google/android/gms/internal/zzaax;

    iget-wide v3, v3, Lcom/google/android/gms/internal/zzaax;->n:J

    add-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/zznu;->a(J)Lcom/google/android/gms/internal/zzns;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zza;->zzanj:Lcom/google/android/gms/internal/zznu;

    const-string v2, "stc"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/zznu;->a(Lcom/google/android/gms/internal/zzns;[Ljava/lang/String;)Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzanj:Lcom/google/android/gms/internal/zznu;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzafp;->b:Lcom/google/android/gms/internal/zzaax;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzaax;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zznu;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzanj:Lcom/google/android/gms/internal/zznu;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zza;->zzank:Lcom/google/android/gms/internal/zzns;

    const-string v2, "arf"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zznu;->a(Lcom/google/android/gms/internal/zzns;[Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzanj:Lcom/google/android/gms/internal/zznu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zznu;->a()Lcom/google/android/gms/internal/zzns;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzanl:Lcom/google/android/gms/internal/zzns;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzanj:Lcom/google/android/gms/internal/zznu;

    const-string v1, "gqi"

    iget-object v2, p1, Lcom/google/android/gms/internal/zzafp;->b:Lcom/google/android/gms/internal/zzaax;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzaax;->y:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zznu;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzbt;->g:Lcom/google/android/gms/internal/zzagb;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzbt;->k:Lcom/google/android/gms/internal/zzafp;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzafp;->i:Lcom/google/android/gms/internal/zzis;

    new-instance v1, Lcom/google/android/gms/ads/internal/zzc;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/ads/internal/zzc;-><init>(Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/zzafp;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzis;->a(Lcom/google/android/gms/internal/zzit;)V

    iget-object v0, p1, Lcom/google/android/gms/internal/zzafp;->i:Lcom/google/android/gms/internal/zzis;

    sget-object v1, Lcom/google/android/gms/internal/zziu$zza$zzb;->zzbbn:Lcom/google/android/gms/internal/zziu$zza$zzb;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzis;->a(Lcom/google/android/gms/internal/zziu$zza$zzb;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzanj:Lcom/google/android/gms/internal/zznu;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/ads/internal/zza;->zza(Lcom/google/android/gms/internal/zzafp;Lcom/google/android/gms/internal/zznu;)V

    return-void
.end method

.method protected abstract zza(Lcom/google/android/gms/internal/zzafp;Lcom/google/android/gms/internal/zznu;)V
.end method

.method public final zza(Lcom/google/android/gms/internal/zzjn;)V
    .locals 2

    const-string v0, "setAdSize must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->zzge(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzbt;->i:Lcom/google/android/gms/internal/zzjn;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->j:Lcom/google/android/gms/internal/zzafo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->j:Lcom/google/android/gms/internal/zzafo;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzafo;->b:Lcom/google/android/gms/internal/zzanh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->F:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->j:Lcom/google/android/gms/internal/zzafo;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzafo;->b:Lcom/google/android/gms/internal/zzanh;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzapa;->a(Lcom/google/android/gms/internal/zzjn;)Lcom/google/android/gms/internal/zzapa;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzanh;->a(Lcom/google/android/gms/internal/zzapa;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->f:Lcom/google/android/gms/ads/internal/zzbu;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->f:Lcom/google/android/gms/ads/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzbu;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->f:Lcom/google/android/gms/ads/internal/zzbu;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbt;->f:Lcom/google/android/gms/ads/internal/zzbu;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/zzbu;->getNextView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/zzbu;->removeView(Landroid/view/View;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->f:Lcom/google/android/gms/ads/internal/zzbu;

    iget v1, p1, Lcom/google/android/gms/internal/zzjn;->g:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/zzbu;->setMinimumWidth(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->f:Lcom/google/android/gms/ads/internal/zzbu;

    iget p1, p1, Lcom/google/android/gms/internal/zzjn;->d:I

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/zzbu;->setMinimumHeight(I)V

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/zzbt;->f:Lcom/google/android/gms/ads/internal/zzbu;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/zzbu;->requestLayout()V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzke;)V
    .locals 1

    const-string v0, "setAdListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->zzge(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzbt;->m:Lcom/google/android/gms/internal/zzke;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzkh;)V
    .locals 1

    const-string v0, "setAdListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->zzge(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzbt;->n:Lcom/google/android/gms/internal/zzkh;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzkx;)V
    .locals 1

    const-string v0, "setAppEventListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->zzge(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzbt;->o:Lcom/google/android/gms/internal/zzkx;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzld;)V
    .locals 1

    const-string v0, "setCorrelationIdProvider must be called on the main UI thread"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->zzge(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzbt;->p:Lcom/google/android/gms/internal/zzld;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzlr;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/internal/zzlr;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "setIconAdOptions must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->zzge(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzbt;->w:Lcom/google/android/gms/internal/zzlr;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzmr;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/internal/zzmr;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "setVideoOptions must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->zzge(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzbt;->v:Lcom/google/android/gms/internal/zzmr;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzns;)V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/zznu;

    sget-object v1, Lcom/google/android/gms/internal/zznh;->H:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->f()Lcom/google/android/gms/internal/zznf;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/zznf;->a(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v2, "load_ad"

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzbt;->i:Lcom/google/android/gms/internal/zzjn;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzjn;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zznu;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzanj:Lcom/google/android/gms/internal/zznu;

    new-instance v0, Lcom/google/android/gms/internal/zzns;

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/google/android/gms/internal/zzns;-><init>(JLjava/lang/String;Lcom/google/android/gms/internal/zzns;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzanl:Lcom/google/android/gms/internal/zzns;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/zzns;

    invoke-direct {p1, v1, v2, v3, v3}, Lcom/google/android/gms/internal/zzns;-><init>(JLjava/lang/String;Lcom/google/android/gms/internal/zzns;)V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zza;->zzank:Lcom/google/android/gms/internal/zzns;

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzns;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzns;->a()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzns;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzns;->c()Lcom/google/android/gms/internal/zzns;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/zzns;-><init>(JLjava/lang/String;Lcom/google/android/gms/internal/zzns;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzank:Lcom/google/android/gms/internal/zzns;

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzoa;)V
    .locals 1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "setOnCustomRenderedAdLoadedListener is not supported for current ad type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public zza(Lcom/google/android/gms/internal/zzxl;)V
    .locals 0

    const-string p1, "setInAppPurchaseListener is deprecated and should not be called."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzagf;->e(Ljava/lang/String;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzxr;Ljava/lang/String;)V
    .locals 0

    const-string p1, "setPlayStorePurchaseParams is deprecated and should not be called."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzagf;->e(Ljava/lang/String;)V

    return-void
.end method

.method public final zza(Ljava/util/HashSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lcom/google/android/gms/internal/zzafq;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/zzbt;->a(Ljava/util/HashSet;)V

    return-void
.end method

.method zza(Lcom/google/android/gms/internal/zzafo;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected abstract zza(Lcom/google/android/gms/internal/zzafo;Lcom/google/android/gms/internal/zzafo;)Z
    .param p1    # Lcom/google/android/gms/internal/zzafo;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method protected abstract zza(Lcom/google/android/gms/internal/zzjj;Lcom/google/android/gms/internal/zznu;)Z
.end method

.method public zzb(Lcom/google/android/gms/internal/zzafo;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzanj:Lcom/google/android/gms/internal/zznu;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zza;->zzanl:Lcom/google/android/gms/internal/zzns;

    const-string v2, "awr"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zznu;->a(Lcom/google/android/gms/internal/zzns;[Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzbt;->h:Lcom/google/android/gms/internal/zzaif;

    iget v0, p1, Lcom/google/android/gms/internal/zzafo;->d:I

    const/4 v1, 0x3

    const/4 v2, -0x2

    if-eq v0, v2, :cond_0

    iget v0, p1, Lcom/google/android/gms/internal/zzafo;->d:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzbt;->a()Ljava/util/HashSet;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->i()Lcom/google/android/gms/internal/zzaft;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    invoke-virtual {v3}, Lcom/google/android/gms/ads/internal/zzbt;->a()Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/zzaft;->a(Ljava/util/HashSet;)V

    :cond_0
    iget v0, p1, Lcom/google/android/gms/internal/zzafo;->d:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/zza;->zzanm:Z

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/zza;->zza(Lcom/google/android/gms/internal/zzafo;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Ad refresh scheduled."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->b(Ljava/lang/String;)V

    :cond_2
    iget v0, p1, Lcom/google/android/gms/internal/zzafo;->d:I

    if-eq v0, v2, :cond_4

    iget v0, p1, Lcom/google/android/gms/internal/zzafo;->d:I

    if-ne v0, v1, :cond_3

    iget-object v0, p1, Lcom/google/android/gms/internal/zzafo;->H:Lcom/google/android/gms/internal/zzis;

    sget-object v1, Lcom/google/android/gms/internal/zziu$zza$zzb;->zzbbp:Lcom/google/android/gms/internal/zziu$zza$zzb;

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzis;->a(Lcom/google/android/gms/internal/zziu$zza$zzb;)V

    goto :goto_1

    :cond_3
    iget-object v0, p1, Lcom/google/android/gms/internal/zzafo;->H:Lcom/google/android/gms/internal/zzis;

    sget-object v1, Lcom/google/android/gms/internal/zziu$zza$zzb;->zzbbo:Lcom/google/android/gms/internal/zziu$zza$zzb;

    goto :goto_0

    :goto_1
    iget p1, p1, Lcom/google/android/gms/internal/zzafo;->d:I

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/zza;->zzi(I)V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->D:Lcom/google/android/gms/internal/zzafz;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    new-instance v1, Lcom/google/android/gms/internal/zzafz;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbt;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzafz;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzbt;->D:Lcom/google/android/gms/internal/zzafz;

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->f:Lcom/google/android/gms/ads/internal/zzbu;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->f:Lcom/google/android/gms/ads/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzbu;->a()Lcom/google/android/gms/internal/zzaig;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzafo;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaig;->d(Ljava/lang/String;)V

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzanq:Lcom/google/android/gms/internal/zzfs;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbt;->j:Lcom/google/android/gms/internal/zzafo;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzfs;->a(Lcom/google/android/gms/internal/zzafo;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->j:Lcom/google/android/gms/internal/zzafo;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/ads/internal/zza;->zza(Lcom/google/android/gms/internal/zzafo;Lcom/google/android/gms/internal/zzafo;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzbt;->j:Lcom/google/android/gms/internal/zzafo;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/zzbt;->l:Lcom/google/android/gms/internal/zzafq;

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/zzbt;->j:Lcom/google/android/gms/internal/zzafo;

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/zzbt;->l:Lcom/google/android/gms/internal/zzafq;

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/zzbt;->j:Lcom/google/android/gms/internal/zzafo;

    iget-wide v2, v2, Lcom/google/android/gms/internal/zzafo;->x:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzafq;->a(J)V

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/zzbt;->l:Lcom/google/android/gms/internal/zzafq;

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/zzbt;->j:Lcom/google/android/gms/internal/zzafo;

    iget-wide v2, v2, Lcom/google/android/gms/internal/zzafo;->y:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzafq;->b(J)V

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/zzbt;->l:Lcom/google/android/gms/internal/zzafq;

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/zzbt;->j:Lcom/google/android/gms/internal/zzafo;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/zzafo;->m:Z

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzafq;->b(Z)V

    :cond_7
    iget-object v1, v0, Lcom/google/android/gms/ads/internal/zzbt;->l:Lcom/google/android/gms/internal/zzafq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->i:Lcom/google/android/gms/internal/zzjn;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzjn;->e:Z

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzafq;->a(Z)V

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzanj:Lcom/google/android/gms/internal/zznu;

    const-string v1, "is_mraid"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbt;->j:Lcom/google/android/gms/internal/zzafo;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzafo;->a()Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "1"

    goto :goto_2

    :cond_9
    const-string v2, "0"

    :goto_2
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zznu;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzanj:Lcom/google/android/gms/internal/zznu;

    const-string v1, "is_mediation"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbt;->j:Lcom/google/android/gms/internal/zzafo;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/zzafo;->m:Z

    if-eqz v2, :cond_a

    const-string v2, "1"

    goto :goto_3

    :cond_a
    const-string v2, "0"

    :goto_3
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zznu;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->j:Lcom/google/android/gms/internal/zzafo;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzafo;->b:Lcom/google/android/gms/internal/zzanh;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->j:Lcom/google/android/gms/internal/zzafo;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzafo;->b:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzanh;->u()Lcom/google/android/gms/internal/zzani;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzanj:Lcom/google/android/gms/internal/zznu;

    const-string v1, "is_delay_pl"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbt;->j:Lcom/google/android/gms/internal/zzafo;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzafo;->b:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzanh;->u()Lcom/google/android/gms/internal/zzani;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzani;->f()Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "1"

    goto :goto_4

    :cond_b
    const-string v2, "0"

    :goto_4
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zznu;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzanj:Lcom/google/android/gms/internal/zznu;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zza;->zzank:Lcom/google/android/gms/internal/zzns;

    const-string v2, "ttc"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zznu;->a(Lcom/google/android/gms/internal/zzns;[Ljava/lang/String;)Z

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->i()Lcom/google/android/gms/internal/zzaft;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaft;->e()Lcom/google/android/gms/internal/zznk;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->i()Lcom/google/android/gms/internal/zzaft;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaft;->e()Lcom/google/android/gms/internal/zznk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zza;->zzanj:Lcom/google/android/gms/internal/zznu;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zznk;->a(Lcom/google/android/gms/internal/zznu;)Z

    :cond_d
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zza;->zzcc()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzbt;->d()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zza;->zzby()V

    :cond_e
    iget-object v0, p1, Lcom/google/android/gms/internal/zzafo;->G:Ljava/util/List;

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->e()Lcom/google/android/gms/internal/zzahn;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbt;->c:Landroid/content/Context;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzafo;->G:Ljava/util/List;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zzahn;->a(Landroid/content/Context;Ljava/util/List;)V

    :cond_f
    return-void
.end method

.method public zzb(Lcom/google/android/gms/internal/zzjj;)Z
    .locals 3

    const-string v0, "loadAd must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->zzge(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->j()Lcom/google/android/gms/internal/zzid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzid;->a()V

    sget-object v0, Lcom/google/android/gms/internal/zznh;->aB:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->f()Lcom/google/android/gms/internal/zznf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zznf;->a(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/internal/zzjj;->a(Lcom/google/android/gms/internal/zzjj;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/util/zzi;->zzcu(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/internal/zzjj;->l:Landroid/location/Location;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zzjk;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzjk;-><init>(Lcom/google/android/gms/internal/zzjj;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzjk;->a(Landroid/location/Location;)Lcom/google/android/gms/internal/zzjk;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzjk;->a()Lcom/google/android/gms/internal/zzjj;

    move-result-object p1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->g:Lcom/google/android/gms/internal/zzagb;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->h:Lcom/google/android/gms/internal/zzaif;

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const-string v0, "Starting ad request."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->d(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/ads/internal/zza;->zza(Lcom/google/android/gms/internal/zzns;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzanj:Lcom/google/android/gms/internal/zznu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zznu;->a()Lcom/google/android/gms/internal/zzns;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzank:Lcom/google/android/gms/internal/zzns;

    iget-boolean v0, p1, Lcom/google/android/gms/internal/zzjj;->g:Z

    if-eqz v0, :cond_3

    const-string v0, "This request is sent from a test device."

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->d(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->a()Lcom/google/android/gms/internal/zzajr;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzajr;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Use AdRequest.Builder.addTestDevice(\""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\") to get test ads on this device."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzann:Lcom/google/android/gms/ads/internal/zzbi;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/zzbi;->a(Lcom/google/android/gms/internal/zzjj;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzanj:Lcom/google/android/gms/internal/zznu;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/ads/internal/zza;->zza(Lcom/google/android/gms/internal/zzjj;Lcom/google/android/gms/internal/zznu;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/zza;->zzanm:Z

    iget-boolean p1, p0, Lcom/google/android/gms/ads/internal/zza;->zzanm:Z

    return p1

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzanp:Lcom/google/android/gms/internal/zzjj;

    if-eqz v0, :cond_5

    const-string v0, "Aborting last ad request since another ad request is already in progress. The current request object will still be cached for future refreshes."

    :goto_3
    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->e(Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    const-string v0, "Loading already in progress, saving this object for future refreshes."

    goto :goto_3

    :goto_4
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zza;->zzanp:Lcom/google/android/gms/internal/zzjj;

    const/4 p1, 0x0

    return p1
.end method

.method public final zzbq()Lcom/google/android/gms/ads/internal/zzv;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzanr:Lcom/google/android/gms/ads/internal/zzv;

    return-object v0
.end method

.method public final zzbr()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 1

    const-string v0, "getAdFrame must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->zzge(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->f:Lcom/google/android/gms/ads/internal/zzbu;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zzn;->zzz(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    return-object v0
.end method

.method public final zzbs()Lcom/google/android/gms/internal/zzjn;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const-string v0, "getAdSize must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->zzge(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->i:Lcom/google/android/gms/internal/zzjn;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzmp;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbt;->i:Lcom/google/android/gms/internal/zzjn;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzmp;-><init>(Lcom/google/android/gms/internal/zzjn;)V

    return-object v0
.end method

.method public final zzbt()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zza;->zzbw()V

    return-void
.end method

.method public final zzbu()V
    .locals 3

    const-string v0, "recordManualImpression must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->zzge(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->j:Lcom/google/android/gms/internal/zzafo;

    if-nez v0, :cond_0

    const-string v0, "Ad state was null when trying to ping manual tracking URLs."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "Pinging manual tracking URLs."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->j:Lcom/google/android/gms/internal/zzafo;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzafo;->E:Z

    if-nez v0, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbt;->j:Lcom/google/android/gms/internal/zzafo;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzafo;->f:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbt;->j:Lcom/google/android/gms/internal/zzafo;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzafo;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbt;->j:Lcom/google/android/gms/internal/zzafo;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzafo;->n:Lcom/google/android/gms/internal/zzuh;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbt;->j:Lcom/google/android/gms/internal/zzafo;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzafo;->n:Lcom/google/android/gms/internal/zzuh;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzuh;->h:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbt;->j:Lcom/google/android/gms/internal/zzafo;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzafo;->n:Lcom/google/android/gms/internal/zzuh;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzuh;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    :cond_3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->e()Lcom/google/android/gms/internal/zzahn;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbt;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbt;->e:Lcom/google/android/gms/internal/zzakd;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzakd;->b:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/zzahn;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->j:Lcom/google/android/gms/internal/zzafo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/zzafo;->E:Z

    :cond_4
    return-void
.end method

.method protected zzbv()V
    .locals 2

    const-string v0, "Ad closing."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->n:Lcom/google/android/gms/internal/zzkh;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->n:Lcom/google/android/gms/internal/zzkh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzkh;->onAdClosed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not call AdListener.onAdClosed()."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzagf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->A:Lcom/google/android/gms/internal/zzadp;

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->A:Lcom/google/android/gms/internal/zzadp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzadp;->onRewardedVideoAdClosed()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    const-string v1, "Could not call RewardedVideoAdListener.onRewardedVideoAdClosed()."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzagf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method protected final zzbw()V
    .locals 2

    const-string v0, "Ad leaving application."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->n:Lcom/google/android/gms/internal/zzkh;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->n:Lcom/google/android/gms/internal/zzkh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzkh;->onAdLeftApplication()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not call AdListener.onAdLeftApplication()."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzagf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->A:Lcom/google/android/gms/internal/zzadp;

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->A:Lcom/google/android/gms/internal/zzadp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzadp;->onRewardedVideoAdLeftApplication()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    const-string v1, "Could not call  RewardedVideoAdListener.onRewardedVideoAdLeftApplication()."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzagf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method protected final zzbx()V
    .locals 2

    const-string v0, "Ad opening."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->n:Lcom/google/android/gms/internal/zzkh;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->n:Lcom/google/android/gms/internal/zzkh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzkh;->onAdOpened()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not call AdListener.onAdOpened()."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzagf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->A:Lcom/google/android/gms/internal/zzadp;

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->A:Lcom/google/android/gms/internal/zzadp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzadp;->onRewardedVideoAdOpened()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    const-string v1, "Could not call RewardedVideoAdListener.onRewardedVideoAdOpened()."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzagf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method protected zzby()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/zza;->zzc(Z)V

    return-void
.end method

.method public final zzbz()V
    .locals 2

    const-string v0, "Ad impression."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->n:Lcom/google/android/gms/internal/zzkh;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->n:Lcom/google/android/gms/internal/zzkh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzkh;->onAdImpression()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not call AdListener.onAdImpression()."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzagf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method protected final zzc(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbt;->c:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzafi;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected zzc(IZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Failed to load ad: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->e(Ljava/lang/String;)V

    iput-boolean p2, p0, Lcom/google/android/gms/ads/internal/zza;->zzanm:Z

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object p2, p2, Lcom/google/android/gms/ads/internal/zzbt;->n:Lcom/google/android/gms/internal/zzkh;

    if-eqz p2, :cond_0

    :try_start_0
    iget-object p2, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object p2, p2, Lcom/google/android/gms/ads/internal/zzbt;->n:Lcom/google/android/gms/internal/zzkh;

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/zzkh;->onAdFailedToLoad(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string v0, "Could not call AdListener.onAdFailedToLoad()."

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/zzagf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    iget-object p2, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object p2, p2, Lcom/google/android/gms/ads/internal/zzbt;->A:Lcom/google/android/gms/internal/zzadp;

    if-eqz p2, :cond_1

    :try_start_1
    iget-object p2, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object p2, p2, Lcom/google/android/gms/ads/internal/zzbt;->A:Lcom/google/android/gms/internal/zzadp;

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/zzadp;->onRewardedVideoAdFailedToLoad(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    const-string p2, "Could not call RewardedVideoAdListener.onRewardedVideoAdFailedToLoad()."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzagf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method protected zzc(Z)V
    .locals 1

    const-string v0, "Ad finished loading."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->d(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/zza;->zzanm:Z

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/zzbt;->n:Lcom/google/android/gms/internal/zzkh;

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/zzbt;->n:Lcom/google/android/gms/internal/zzkh;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzkh;->onAdLoaded()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Could not call AdListener.onAdLoaded()."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzagf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/zzbt;->A:Lcom/google/android/gms/internal/zzadp;

    if-eqz p1, :cond_1

    :try_start_1
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/zzbt;->A:Lcom/google/android/gms/internal/zzadp;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzadp;->onRewardedVideoAdLoaded()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    const-string v0, "Could not call RewardedVideoAdListener.onRewardedVideoAdLoaded()."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzagf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method protected zzc(Lcom/google/android/gms/internal/zzjj;)Z
    .locals 2

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/zzbt;->f:Lcom/google/android/gms/ads/internal/zzbu;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/zzbt;->f:Lcom/google/android/gms/ads/internal/zzbu;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/zzbu;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of v1, p1, Landroid/view/View;

    if-nez v1, :cond_1

    return v0

    :cond_1
    check-cast p1, Landroid/view/View;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->e()Lcom/google/android/gms/internal/zzahn;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zzahn;->a(Landroid/view/View;Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public final zzca()V
    .locals 2

    const-string v0, "Ad clicked."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->n:Lcom/google/android/gms/internal/zzkh;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->n:Lcom/google/android/gms/internal/zzkh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzkh;->onAdClicked()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not call AdListener.onAdClicked()."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzagf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method protected final zzcb()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->A:Lcom/google/android/gms/internal/zzadp;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->A:Lcom/google/android/gms/internal/zzadp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzadp;->onRewardedVideoStarted()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not call RewardedVideoAdListener.onVideoStarted()."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzagf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzcc()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->j:Lcom/google/android/gms/internal/zzafo;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/google/android/gms/internal/zzafo;->A:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, v0, Lcom/google/android/gms/internal/zzafo;->F:Z

    if-nez v1, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->n()Lcom/google/android/gms/internal/zzaim;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzaim;->b()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "Sending troubleshooting signals to the server."

    invoke-static {v1}, Lcom/google/android/gms/internal/zzagf;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->n()Lcom/google/android/gms/internal/zzaim;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbt;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzbt;->e:Lcom/google/android/gms/internal/zzakd;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzakd;->b:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/internal/zzafo;->A:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/zzbt;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/zzaim;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/zzafo;->F:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final zzcd()Lcom/google/android/gms/internal/zzkx;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->o:Lcom/google/android/gms/internal/zzkx;

    return-object v0
.end method

.method public final zzce()Lcom/google/android/gms/internal/zzkh;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->n:Lcom/google/android/gms/internal/zzkh;

    return-object v0
.end method

.method protected final zzg(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->f:Lcom/google/android/gms/ads/internal/zzbu;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->g()Lcom/google/android/gms/internal/zzaht;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzaht;->d()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/ads/internal/zzbu;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method protected zzi(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/ads/internal/zza;->zzc(IZ)V

    return-void
.end method
