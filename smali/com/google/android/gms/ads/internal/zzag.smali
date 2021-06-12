.class public final Lcom/google/android/gms/ads/internal/zzag;
.super Lcom/google/android/gms/internal/zzkl;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private final zzanr:Lcom/google/android/gms/ads/internal/zzv;

.field private final zzanw:Lcom/google/android/gms/internal/zzux;

.field private final zzape:Lcom/google/android/gms/internal/zzkh;

.field private final zzapf:Lcom/google/android/gms/internal/zzqq;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final zzapg:Lcom/google/android/gms/internal/zzrc;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final zzaph:Lcom/google/android/gms/internal/zzqt;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final zzapi:Lcom/google/android/gms/internal/zzrf;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final zzapj:Lcom/google/android/gms/internal/zzjn;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final zzapk:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final zzapl:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzqz;",
            ">;"
        }
    .end annotation
.end field

.field private final zzapm:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzqw;",
            ">;"
        }
    .end annotation
.end field

.field private final zzapn:Lcom/google/android/gms/internal/zzpe;

.field private final zzapo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzapp:Lcom/google/android/gms/internal/zzld;

.field private final zzapq:Ljava/lang/String;

.field private final zzapr:Lcom/google/android/gms/internal/zzakd;

.field private zzaps:Ljava/lang/ref/WeakReference;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/gms/ads/internal/zzd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzux;Lcom/google/android/gms/internal/zzakd;Lcom/google/android/gms/internal/zzkh;Lcom/google/android/gms/internal/zzqq;Lcom/google/android/gms/internal/zzrc;Lcom/google/android/gms/internal/zzqt;Landroid/support/v4/util/SimpleArrayMap;Landroid/support/v4/util/SimpleArrayMap;Lcom/google/android/gms/internal/zzpe;Lcom/google/android/gms/internal/zzld;Lcom/google/android/gms/ads/internal/zzv;Lcom/google/android/gms/internal/zzrf;Lcom/google/android/gms/internal/zzjn;Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzux;",
            "Lcom/google/android/gms/internal/zzakd;",
            "Lcom/google/android/gms/internal/zzkh;",
            "Lcom/google/android/gms/internal/zzqq;",
            "Lcom/google/android/gms/internal/zzrc;",
            "Lcom/google/android/gms/internal/zzqt;",
            "Landroid/support/v4/util/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzqz;",
            ">;",
            "Landroid/support/v4/util/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzqw;",
            ">;",
            "Lcom/google/android/gms/internal/zzpe;",
            "Lcom/google/android/gms/internal/zzld;",
            "Lcom/google/android/gms/ads/internal/zzv;",
            "Lcom/google/android/gms/internal/zzrf;",
            "Lcom/google/android/gms/internal/zzjn;",
            "Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzkl;-><init>()V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzag;->mLock:Ljava/lang/Object;

    move-object v1, p1

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzag;->mContext:Landroid/content/Context;

    move-object v1, p2

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzag;->zzapq:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzag;->zzanw:Lcom/google/android/gms/internal/zzux;

    move-object v1, p4

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzag;->zzapr:Lcom/google/android/gms/internal/zzakd;

    move-object v1, p5

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzag;->zzape:Lcom/google/android/gms/internal/zzkh;

    move-object v1, p8

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzag;->zzaph:Lcom/google/android/gms/internal/zzqt;

    move-object v1, p6

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzag;->zzapf:Lcom/google/android/gms/internal/zzqq;

    move-object v1, p7

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzag;->zzapg:Lcom/google/android/gms/internal/zzrc;

    move-object v1, p9

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzag;->zzapl:Landroid/support/v4/util/SimpleArrayMap;

    move-object v1, p10

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzag;->zzapm:Landroid/support/v4/util/SimpleArrayMap;

    move-object v1, p11

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzag;->zzapn:Lcom/google/android/gms/internal/zzpe;

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzag;->zzdh()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzag;->zzapo:Ljava/util/List;

    move-object v1, p12

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzag;->zzapp:Lcom/google/android/gms/internal/zzld;

    move-object v1, p13

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzag;->zzanr:Lcom/google/android/gms/ads/internal/zzv;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzag;->zzapi:Lcom/google/android/gms/internal/zzrf;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzag;->zzapj:Lcom/google/android/gms/internal/zzjn;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzag;->zzapk:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/zzag;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/internal/zznh;->a(Landroid/content/Context;)V

    return-void
.end method

.method private static runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzahn;->a:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/internal/zzag;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/zzag;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/internal/zzag;Lcom/google/android/gms/internal/zzjj;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/internal/zzag;->zze(Lcom/google/android/gms/internal/zzjj;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/internal/zzag;Lcom/google/android/gms/internal/zzjj;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/ads/internal/zzag;->zzb(Lcom/google/android/gms/internal/zzjj;I)V

    return-void
.end method

.method private final zzb(Lcom/google/android/gms/internal/zzjj;I)V
    .locals 8

    new-instance v7, Lcom/google/android/gms/ads/internal/zzba;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzag;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzag;->zzanr:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzag;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzjn;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/zzjn;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/zzag;->zzapq:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/zzag;->zzanw:Lcom/google/android/gms/internal/zzux;

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/zzag;->zzapr:Lcom/google/android/gms/internal/zzakd;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/zzba;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzv;Lcom/google/android/gms/internal/zzjn;Ljava/lang/String;Lcom/google/android/gms/internal/zzux;Lcom/google/android/gms/internal/zzakd;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzag;->zzaps:Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzag;->zzapf:Lcom/google/android/gms/internal/zzqq;

    const-string v1, "setOnAppInstallAdLoadedListener must be called on the main UI thread."

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzbq;->zzge(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/zzba;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iput-object v0, v1, Lcom/google/android/gms/ads/internal/zzbt;->q:Lcom/google/android/gms/internal/zzqq;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzag;->zzaph:Lcom/google/android/gms/internal/zzqt;

    const-string v1, "setOnContentAdLoadedListener must be called on the main UI thread."

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzbq;->zzge(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/zzba;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iput-object v0, v1, Lcom/google/android/gms/ads/internal/zzbt;->r:Lcom/google/android/gms/internal/zzqt;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzag;->zzapl:Landroid/support/v4/util/SimpleArrayMap;

    const-string v1, "setOnCustomTemplateAdLoadedListeners must be called on the main UI thread."

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzbq;->zzge(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/zzba;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iput-object v0, v1, Lcom/google/android/gms/ads/internal/zzbt;->t:Landroid/support/v4/util/SimpleArrayMap;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzag;->zzape:Lcom/google/android/gms/internal/zzkh;

    invoke-virtual {v7, v0}, Lcom/google/android/gms/ads/internal/zza;->zza(Lcom/google/android/gms/internal/zzkh;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzag;->zzapm:Landroid/support/v4/util/SimpleArrayMap;

    const-string v1, "setOnCustomClickListener must be called on the main UI thread."

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzbq;->zzge(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/zzba;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iput-object v0, v1, Lcom/google/android/gms/ads/internal/zzbt;->s:Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzag;->zzdh()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/google/android/gms/ads/internal/zzba;->zzd(Ljava/util/List;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzag;->zzapn:Lcom/google/android/gms/internal/zzpe;

    const-string v1, "setNativeAdOptions must be called on the main UI thread."

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzbq;->zzge(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/zzba;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iput-object v0, v1, Lcom/google/android/gms/ads/internal/zzbt;->u:Lcom/google/android/gms/internal/zzpe;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzag;->zzapp:Lcom/google/android/gms/internal/zzld;

    invoke-virtual {v7, v0}, Lcom/google/android/gms/ads/internal/zza;->zza(Lcom/google/android/gms/internal/zzld;)V

    invoke-virtual {v7, p2}, Lcom/google/android/gms/ads/internal/zzba;->zzj(I)V

    invoke-virtual {v7, p1}, Lcom/google/android/gms/ads/internal/zza;->zzb(Lcom/google/android/gms/internal/zzjj;)Z

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/ads/internal/zzag;)Z
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzag;->zzdf()Z

    move-result p0

    return p0
.end method

.method private final zzdf()Z
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zznh;->aA:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->f()Lcom/google/android/gms/internal/zznf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zznf;->a(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzag;->zzapi:Lcom/google/android/gms/internal/zzrf;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final zzdg()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzag;->zzapf:Lcom/google/android/gms/internal/zzqq;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzag;->zzaph:Lcom/google/android/gms/internal/zzqt;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzag;->zzapl:Landroid/support/v4/util/SimpleArrayMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzag;->zzapl:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private final zzdh()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzag;->zzaph:Lcom/google/android/gms/internal/zzqt;

    if-eqz v1, :cond_0

    const-string v1, "1"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzag;->zzapf:Lcom/google/android/gms/internal/zzqq;

    if-eqz v1, :cond_1

    const-string v1, "2"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzag;->zzapl:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v1}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v1

    if-lez v1, :cond_2

    const-string v1, "3"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method

.method private final zze(Lcom/google/android/gms/internal/zzjj;)V
    .locals 8

    new-instance v7, Lcom/google/android/gms/ads/internal/zzq;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzag;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzag;->zzanr:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzag;->zzapj:Lcom/google/android/gms/internal/zzjn;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/zzag;->zzapq:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/zzag;->zzanw:Lcom/google/android/gms/internal/zzux;

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/zzag;->zzapr:Lcom/google/android/gms/internal/zzakd;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/zzq;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzv;Lcom/google/android/gms/internal/zzjn;Ljava/lang/String;Lcom/google/android/gms/internal/zzux;Lcom/google/android/gms/internal/zzakd;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzag;->zzaps:Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzag;->zzapi:Lcom/google/android/gms/internal/zzrf;

    const-string v1, "setOnPublisherAdViewLoadedListener must be called on the main UI thread."

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzbq;->zzge(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/zzq;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iput-object v0, v1, Lcom/google/android/gms/ads/internal/zzbt;->x:Lcom/google/android/gms/internal/zzrf;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzag;->zzapk:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzag;->zzapk:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->b()Lcom/google/android/gms/internal/zzkx;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzag;->zzapk:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->b()Lcom/google/android/gms/internal/zzkx;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/google/android/gms/ads/internal/zza;->zza(Lcom/google/android/gms/internal/zzkx;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzag;->zzapk:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->a()Z

    move-result v0

    invoke-virtual {v7, v0}, Lcom/google/android/gms/ads/internal/zza;->setManualImpressionsEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzag;->zzapf:Lcom/google/android/gms/internal/zzqq;

    const-string v1, "setOnAppInstallAdLoadedListener must be called on the main UI thread."

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzbq;->zzge(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/zzq;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iput-object v0, v1, Lcom/google/android/gms/ads/internal/zzbt;->q:Lcom/google/android/gms/internal/zzqq;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzag;->zzaph:Lcom/google/android/gms/internal/zzqt;

    const-string v1, "setOnContentAdLoadedListener must be called on the main UI thread."

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzbq;->zzge(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/zzq;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iput-object v0, v1, Lcom/google/android/gms/ads/internal/zzbt;->r:Lcom/google/android/gms/internal/zzqt;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzag;->zzapl:Landroid/support/v4/util/SimpleArrayMap;

    const-string v1, "setOnCustomTemplateAdLoadedListeners must be called on the main UI thread."

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzbq;->zzge(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/zzq;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iput-object v0, v1, Lcom/google/android/gms/ads/internal/zzbt;->t:Landroid/support/v4/util/SimpleArrayMap;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzag;->zzapm:Landroid/support/v4/util/SimpleArrayMap;

    const-string v1, "setOnCustomClickListener must be called on the main UI thread."

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzbq;->zzge(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/zzq;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iput-object v0, v1, Lcom/google/android/gms/ads/internal/zzbt;->s:Landroid/support/v4/util/SimpleArrayMap;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzag;->zzapn:Lcom/google/android/gms/internal/zzpe;

    const-string v1, "setNativeAdOptions must be called on the main UI thread."

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzbq;->zzge(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/zzq;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iput-object v0, v1, Lcom/google/android/gms/ads/internal/zzbt;->u:Lcom/google/android/gms/internal/zzpe;

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzag;->zzdh()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/google/android/gms/ads/internal/zzq;->zzd(Ljava/util/List;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzag;->zzape:Lcom/google/android/gms/internal/zzkh;

    invoke-virtual {v7, v0}, Lcom/google/android/gms/ads/internal/zza;->zza(Lcom/google/android/gms/internal/zzkh;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzag;->zzapp:Lcom/google/android/gms/internal/zzld;

    invoke-virtual {v7, v0}, Lcom/google/android/gms/ads/internal/zza;->zza(Lcom/google/android/gms/internal/zzld;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzag;->zzdg()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzag;->zzapi:Lcom/google/android/gms/internal/zzrf;

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {v7, v0}, Lcom/google/android/gms/ads/internal/zzq;->zze(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzag;->zzdg()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/google/android/gms/internal/zzjj;->d:Landroid/os/Bundle;

    const-string v1, "ina"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzag;->zzapi:Lcom/google/android/gms/internal/zzrf;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/google/android/gms/internal/zzjj;->d:Landroid/os/Bundle;

    const-string v1, "iba"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_5
    invoke-virtual {v7, p1}, Lcom/google/android/gms/ads/internal/zza;->zzb(Lcom/google/android/gms/internal/zzjj;)Z

    return-void
.end method


# virtual methods
.method public final getMediationAdapterClassName()Ljava/lang/String;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzag;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzag;->zzaps:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzag;->zzaps:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/internal/zzd;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/zzd;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object v2

    :cond_0
    monitor-exit v0

    return-object v2

    :cond_1
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final isLoading()Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzag;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzag;->zzaps:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzag;->zzaps:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/internal/zzd;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/zza;->isLoading()Z

    move-result v2

    :cond_0
    monitor-exit v0

    return v2

    :cond_1
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzjj;I)V
    .locals 1

    if-lez p2, :cond_0

    new-instance v0, Lcom/google/android/gms/ads/internal/zzai;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/ads/internal/zzai;-><init>(Lcom/google/android/gms/ads/internal/zzag;Lcom/google/android/gms/internal/zzjj;I)V

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/zzag;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Number of ads has to be more than 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzcp()Ljava/lang/String;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzag;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzag;->zzaps:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzag;->zzaps:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/internal/zzd;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/zzd;->zzcp()Ljava/lang/String;

    move-result-object v2

    :cond_0
    monitor-exit v0

    return-object v2

    :cond_1
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzd(Lcom/google/android/gms/internal/zzjj;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/ads/internal/zzah;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/ads/internal/zzah;-><init>(Lcom/google/android/gms/ads/internal/zzag;Lcom/google/android/gms/internal/zzjj;)V

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/zzag;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
