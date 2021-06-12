.class public final Lcom/google/android/gms/internal/zzlv;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/zzuw;

.field private final b:Lcom/google/android/gms/internal/zzjm;

.field private final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final d:Lcom/google/android/gms/ads/VideoController;

.field private e:Lcom/google/android/gms/internal/zzkd;

.field private f:Lcom/google/android/gms/internal/zzje;

.field private g:Lcom/google/android/gms/ads/AdListener;

.field private h:[Lcom/google/android/gms/ads/AdSize;

.field private i:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

.field private j:Lcom/google/android/gms/ads/Correlator;

.field private k:Lcom/google/android/gms/internal/zzks;

.field private l:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

.field private m:Lcom/google/android/gms/ads/VideoOptions;

.field private n:Ljava/lang/String;

.field private o:Landroid/view/ViewGroup;

.field private p:I

.field private q:Z


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 6

    sget-object v4, Lcom/google/android/gms/internal/zzjm;->a:Lcom/google/android/gms/internal/zzjm;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzlv;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/internal/zzjm;I)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;I)V
    .locals 6

    sget-object v4, Lcom/google/android/gms/internal/zzjm;->a:Lcom/google/android/gms/internal/zzjm;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzlv;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/internal/zzjm;I)V

    return-void
.end method

.method private constructor <init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/internal/zzjm;I)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzlv;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/internal/zzjm;Lcom/google/android/gms/internal/zzks;I)V

    return-void
.end method

.method private constructor <init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/internal/zzjm;Lcom/google/android/gms/internal/zzks;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p5, Lcom/google/android/gms/internal/zzuw;

    invoke-direct {p5}, Lcom/google/android/gms/internal/zzuw;-><init>()V

    iput-object p5, p0, Lcom/google/android/gms/internal/zzlv;->a:Lcom/google/android/gms/internal/zzuw;

    new-instance p5, Lcom/google/android/gms/ads/VideoController;

    invoke-direct {p5}, Lcom/google/android/gms/ads/VideoController;-><init>()V

    iput-object p5, p0, Lcom/google/android/gms/internal/zzlv;->d:Lcom/google/android/gms/ads/VideoController;

    new-instance p5, Lcom/google/android/gms/internal/zzlw;

    invoke-direct {p5, p0}, Lcom/google/android/gms/internal/zzlw;-><init>(Lcom/google/android/gms/internal/zzlv;)V

    iput-object p5, p0, Lcom/google/android/gms/internal/zzlv;->e:Lcom/google/android/gms/internal/zzkd;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlv;->o:Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzlv;->b:Lcom/google/android/gms/internal/zzjm;

    const/4 p4, 0x0

    iput-object p4, p0, Lcom/google/android/gms/internal/zzlv;->k:Lcom/google/android/gms/internal/zzks;

    new-instance p4, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p5, 0x0

    invoke-direct {p4, p5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p4, p0, Lcom/google/android/gms/internal/zzlv;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput p6, p0, Lcom/google/android/gms/internal/zzlv;->p:I

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p4

    :try_start_0
    new-instance p6, Lcom/google/android/gms/internal/zzjq;

    invoke-direct {p6, p4, p2}, Lcom/google/android/gms/internal/zzjq;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p6, p3}, Lcom/google/android/gms/internal/zzjq;->a(Z)[Lcom/google/android/gms/ads/AdSize;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/zzlv;->h:[Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {p6}, Lcom/google/android/gms/internal/zzjq;->a()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/zzlv;->n:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->a()Lcom/google/android/gms/internal/zzajr;

    move-result-object p2

    iget-object p3, p0, Lcom/google/android/gms/internal/zzlv;->h:[Lcom/google/android/gms/ads/AdSize;

    aget-object p3, p3, p5

    iget p5, p0, Lcom/google/android/gms/internal/zzlv;->p:I

    new-instance p6, Lcom/google/android/gms/internal/zzjn;

    invoke-direct {p6, p4, p3}, Lcom/google/android/gms/internal/zzjn;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;)V

    invoke-static {p5}, Lcom/google/android/gms/internal/zzlv;->a(I)Z

    move-result p3

    iput-boolean p3, p6, Lcom/google/android/gms/internal/zzjn;->k:Z

    const-string p3, "Ads by Google"

    invoke-virtual {p2, p1, p6, p3}, Lcom/google/android/gms/internal/zzajr;->a(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/zzjn;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->a()Lcom/google/android/gms/internal/zzajr;

    move-result-object p3

    new-instance p5, Lcom/google/android/gms/internal/zzjn;

    sget-object p6, Lcom/google/android/gms/ads/AdSize;->a:Lcom/google/android/gms/ads/AdSize;

    invoke-direct {p5, p4, p6}, Lcom/google/android/gms/internal/zzjn;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;)V

    invoke-virtual {p2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p5, p4, p2}, Lcom/google/android/gms/internal/zzajr;->a(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/zzjn;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/zzlv;)Lcom/google/android/gms/ads/VideoController;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzlv;->d:Lcom/google/android/gms/ads/VideoController;

    return-object p0
.end method

.method private static a(Landroid/content/Context;[Lcom/google/android/gms/ads/AdSize;I)Lcom/google/android/gms/internal/zzjn;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzjn;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzjn;-><init>(Landroid/content/Context;[Lcom/google/android/gms/ads/AdSize;)V

    invoke-static {p2}, Lcom/google/android/gms/internal/zzlv;->a(I)Z

    move-result p0

    iput-boolean p0, v0, Lcom/google/android/gms/internal/zzjn;->k:Z

    return-object v0
.end method

.method private static a(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlv;->k:Lcom/google/android/gms/internal/zzks;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlv;->k:Lcom/google/android/gms/internal/zzks;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzks;->destroy()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to destroy AdView."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzakb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/AdListener;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlv;->g:Lcom/google/android/gms/ads/AdListener;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlv;->e:Lcom/google/android/gms/internal/zzkd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzkd;->a(Lcom/google/android/gms/ads/AdListener;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/Correlator;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlv;->j:Lcom/google/android/gms/ads/Correlator;

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzlv;->k:Lcom/google/android/gms/internal/zzks;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzlv;->k:Lcom/google/android/gms/internal/zzks;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlv;->j:Lcom/google/android/gms/ads/Correlator;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlv;->j:Lcom/google/android/gms/ads/Correlator;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/Correlator;->a()Lcom/google/android/gms/internal/zzkc;

    move-result-object v0

    :goto_0
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/zzks;->zza(Lcom/google/android/gms/internal/zzld;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    const-string v0, "Failed to set correlator."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzakb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/VideoOptions;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlv;->m:Lcom/google/android/gms/ads/VideoOptions;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlv;->k:Lcom/google/android/gms/internal/zzks;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlv;->k:Lcom/google/android/gms/internal/zzks;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/zzmr;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zzmr;-><init>(Lcom/google/android/gms/ads/VideoOptions;)V

    move-object p1, v1

    :goto_0
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzks;->zza(Lcom/google/android/gms/internal/zzmr;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    const-string v0, "Failed to set video options."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzakb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V
    .locals 2

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzlv;->i:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlv;->k:Lcom/google/android/gms/internal/zzks;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlv;->k:Lcom/google/android/gms/internal/zzks;

    if-eqz p1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/zzjp;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zzjp;-><init>(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzks;->zza(Lcom/google/android/gms/internal/zzkx;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    const-string v0, "Failed to set the AppEventListener."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzakb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlv;->l:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlv;->k:Lcom/google/android/gms/internal/zzks;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlv;->k:Lcom/google/android/gms/internal/zzks;

    if-eqz p1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/zzod;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zzod;-><init>(Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzks;->zza(Lcom/google/android/gms/internal/zzoa;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    const-string v0, "Failed to set the onCustomRenderedAdLoadedListener."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzakb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/zzje;)V
    .locals 2

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzlv;->f:Lcom/google/android/gms/internal/zzje;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlv;->k:Lcom/google/android/gms/internal/zzks;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlv;->k:Lcom/google/android/gms/internal/zzks;

    if-eqz p1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/zzjf;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zzjf;-><init>(Lcom/google/android/gms/internal/zzje;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzks;->zza(Lcom/google/android/gms/internal/zzke;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    const-string v0, "Failed to set the AdClickListener."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzakb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/zzlt;)V
    .locals 9

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlv;->k:Lcom/google/android/gms/internal/zzks;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlv;->h:[Lcom/google/android/gms/ads/AdSize;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlv;->n:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlv;->k:Lcom/google/android/gms/internal/zzks;

    if-eqz v0, :cond_9

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlv;->o:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlv;->h:[Lcom/google/android/gms/ads/AdSize;

    iget v2, p0, Lcom/google/android/gms/internal/zzlv;->p:I

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzlv;->a(Landroid/content/Context;[Lcom/google/android/gms/ads/AdSize;I)Lcom/google/android/gms/internal/zzjn;

    move-result-object v4

    const-string v1, "search_v2"

    iget-object v2, v4, Lcom/google/android/gms/internal/zzjn;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v7, 0x0

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->b()Lcom/google/android/gms/internal/zzjr;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzlv;->n:Ljava/lang/String;

    new-instance v3, Lcom/google/android/gms/internal/zzjt;

    invoke-direct {v3, v1, v0, v4, v2}, Lcom/google/android/gms/internal/zzjt;-><init>(Lcom/google/android/gms/internal/zzjr;Landroid/content/Context;Lcom/google/android/gms/internal/zzjn;Ljava/lang/String;)V

    invoke-static {v0, v7, v3}, Lcom/google/android/gms/internal/zzjr;->a(Landroid/content/Context;ZLcom/google/android/gms/internal/zzjr$zza;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    check-cast v0, Lcom/google/android/gms/internal/zzks;

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->b()Lcom/google/android/gms/internal/zzjr;

    move-result-object v2

    iget-object v5, p0, Lcom/google/android/gms/internal/zzlv;->n:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzlv;->a:Lcom/google/android/gms/internal/zzuw;

    new-instance v8, Lcom/google/android/gms/internal/zzjs;

    move-object v1, v8

    move-object v3, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zzjs;-><init>(Lcom/google/android/gms/internal/zzjr;Landroid/content/Context;Lcom/google/android/gms/internal/zzjn;Ljava/lang/String;Lcom/google/android/gms/internal/zzux;)V

    invoke-static {v0, v7, v8}, Lcom/google/android/gms/internal/zzjr;->a(Landroid/content/Context;ZLcom/google/android/gms/internal/zzjr$zza;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :goto_1
    iput-object v0, p0, Lcom/google/android/gms/internal/zzlv;->k:Lcom/google/android/gms/internal/zzks;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlv;->k:Lcom/google/android/gms/internal/zzks;

    new-instance v1, Lcom/google/android/gms/internal/zzjg;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzlv;->e:Lcom/google/android/gms/internal/zzkd;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzjg;-><init>(Lcom/google/android/gms/ads/AdListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzks;->zza(Lcom/google/android/gms/internal/zzkh;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlv;->f:Lcom/google/android/gms/internal/zzje;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlv;->k:Lcom/google/android/gms/internal/zzks;

    new-instance v1, Lcom/google/android/gms/internal/zzjf;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzlv;->f:Lcom/google/android/gms/internal/zzje;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzjf;-><init>(Lcom/google/android/gms/internal/zzje;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzks;->zza(Lcom/google/android/gms/internal/zzke;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlv;->i:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlv;->k:Lcom/google/android/gms/internal/zzks;

    new-instance v1, Lcom/google/android/gms/internal/zzjp;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzlv;->i:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzjp;-><init>(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzks;->zza(Lcom/google/android/gms/internal/zzkx;)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlv;->l:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlv;->k:Lcom/google/android/gms/internal/zzks;

    new-instance v1, Lcom/google/android/gms/internal/zzod;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzlv;->l:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzod;-><init>(Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzks;->zza(Lcom/google/android/gms/internal/zzoa;)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlv;->j:Lcom/google/android/gms/ads/Correlator;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlv;->k:Lcom/google/android/gms/internal/zzks;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlv;->j:Lcom/google/android/gms/ads/Correlator;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/Correlator;->a()Lcom/google/android/gms/internal/zzkc;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzks;->zza(Lcom/google/android/gms/internal/zzld;)V

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlv;->m:Lcom/google/android/gms/ads/VideoOptions;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlv;->k:Lcom/google/android/gms/internal/zzks;

    new-instance v1, Lcom/google/android/gms/internal/zzmr;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzlv;->m:Lcom/google/android/gms/ads/VideoOptions;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzmr;-><init>(Lcom/google/android/gms/ads/VideoOptions;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzks;->zza(Lcom/google/android/gms/internal/zzmr;)V

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlv;->k:Lcom/google/android/gms/internal/zzks;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzlv;->q:Z

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzks;->setManualImpressionsEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlv;->k:Lcom/google/android/gms/internal/zzks;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzks;->zzbr()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    if-nez v0, :cond_8

    goto :goto_2

    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/zzlv;->o:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zzn;->zzx(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "Failed to get an ad frame."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzakb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The ad size and ad unit ID must be set before loadAd is called."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlv;->k:Lcom/google/android/gms/internal/zzks;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlv;->o:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/zzjm;->a(Landroid/content/Context;Lcom/google/android/gms/internal/zzlt;)Lcom/google/android/gms/internal/zzjj;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzks;->zzb(Lcom/google/android/gms/internal/zzjj;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlv;->a:Lcom/google/android/gms/internal/zzuw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzlt;->j()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzuw;->zzn(Ljava/util/Map;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_b
    return-void

    :catch_1
    move-exception p1

    const-string v0, "Failed to load ad."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzakb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlv;->n:Ljava/lang/String;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlv;->n:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The ad unit ID can only be set once on AdView."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzlv;->q:Z

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzlv;->k:Lcom/google/android/gms/internal/zzks;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzlv;->k:Lcom/google/android/gms/internal/zzks;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzlv;->q:Z

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/zzks;->setManualImpressionsEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    const-string v0, "Failed to set manual impressions."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzakb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final varargs a([Lcom/google/android/gms/ads/AdSize;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlv;->h:[Lcom/google/android/gms/ads/AdSize;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzlv;->b([Lcom/google/android/gms/ads/AdSize;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The ad size can only be set once on AdView."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lcom/google/android/gms/internal/zzks;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/zzks;->zzbr()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_1

    return v0

    :cond_1
    invoke-static {v1}, Lcom/google/android/gms/dynamic/zzn;->zzx(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_2

    return v0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlv;->o:Landroid/view/ViewGroup;

    invoke-static {v1}, Lcom/google/android/gms/dynamic/zzn;->zzx(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlv;->k:Lcom/google/android/gms/internal/zzks;

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    const-string v1, "Failed to get an ad frame."

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/zzakb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method public final b()Lcom/google/android/gms/ads/AdListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlv;->g:Lcom/google/android/gms/ads/AdListener;

    return-object v0
.end method

.method public final varargs b([Lcom/google/android/gms/ads/AdSize;)V
    .locals 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlv;->h:[Lcom/google/android/gms/ads/AdSize;

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzlv;->k:Lcom/google/android/gms/internal/zzks;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzlv;->k:Lcom/google/android/gms/internal/zzks;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlv;->o:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlv;->h:[Lcom/google/android/gms/ads/AdSize;

    iget v2, p0, Lcom/google/android/gms/internal/zzlv;->p:I

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzlv;->a(Landroid/content/Context;[Lcom/google/android/gms/ads/AdSize;I)Lcom/google/android/gms/internal/zzjn;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/zzks;->zza(Lcom/google/android/gms/internal/zzjn;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Failed to set the ad size."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzakb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzlv;->o:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public final c()Lcom/google/android/gms/ads/AdSize;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlv;->k:Lcom/google/android/gms/internal/zzks;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlv;->k:Lcom/google/android/gms/internal/zzks;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzks;->zzbs()Lcom/google/android/gms/internal/zzjn;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzjn;->b()Lcom/google/android/gms/ads/AdSize;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Failed to get the current AdSize."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzakb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlv;->h:[Lcom/google/android/gms/ads/AdSize;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlv;->h:[Lcom/google/android/gms/ads/AdSize;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final d()[Lcom/google/android/gms/ads/AdSize;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlv;->h:[Lcom/google/android/gms/ads/AdSize;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlv;->n:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlv;->k:Lcom/google/android/gms/internal/zzks;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlv;->k:Lcom/google/android/gms/internal/zzks;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzks;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzlv;->n:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to get ad unit id."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzakb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlv;->n:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Lcom/google/android/gms/ads/doubleclick/AppEventListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlv;->i:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    return-object v0
.end method

.method public final g()Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlv;->l:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

    return-object v0
.end method

.method public final h()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlv;->k:Lcom/google/android/gms/internal/zzks;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlv;->k:Lcom/google/android/gms/internal/zzks;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzks;->pause()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to call pause."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzakb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final i()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlv;->k:Lcom/google/android/gms/internal/zzks;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlv;->k:Lcom/google/android/gms/internal/zzks;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzks;->resume()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to call resume."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzakb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final j()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlv;->k:Lcom/google/android/gms/internal/zzks;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlv;->k:Lcom/google/android/gms/internal/zzks;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzks;->zzcp()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Failed to get the mediation adapter class name."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzakb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final k()Lcom/google/android/gms/ads/VideoController;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlv;->d:Lcom/google/android/gms/ads/VideoController;

    return-object v0
.end method

.method public final l()Lcom/google/android/gms/internal/zzll;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlv;->k:Lcom/google/android/gms/internal/zzks;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlv;->k:Lcom/google/android/gms/internal/zzks;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzks;->getVideoController()Lcom/google/android/gms/internal/zzll;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "Failed to retrieve VideoController."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzakb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public final m()Lcom/google/android/gms/ads/VideoOptions;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlv;->m:Lcom/google/android/gms/ads/VideoOptions;

    return-object v0
.end method
