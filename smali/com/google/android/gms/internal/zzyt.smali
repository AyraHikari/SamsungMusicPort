.class public final Lcom/google/android/gms/internal/zzyt;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/android/gms/internal/zzcv;

.field private final d:Lcom/google/android/gms/internal/zzafp;

.field private final e:Lcom/google/android/gms/internal/zznu;

.field private final f:Lcom/google/android/gms/ads/internal/zzba;

.field private g:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private h:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private i:Lcom/google/android/gms/internal/zzaji;

.field private j:I

.field private k:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzcv;Lcom/google/android/gms/internal/zzafp;Lcom/google/android/gms/internal/zznu;Lcom/google/android/gms/ads/internal/zzba;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzyt;->a:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzyt;->j:I

    iput v0, p0, Lcom/google/android/gms/internal/zzyt;->k:I

    iput-object p1, p0, Lcom/google/android/gms/internal/zzyt;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzyt;->c:Lcom/google/android/gms/internal/zzcv;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzyt;->d:Lcom/google/android/gms/internal/zzafp;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzyt;->e:Lcom/google/android/gms/internal/zznu;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzyt;->f:Lcom/google/android/gms/ads/internal/zzba;

    new-instance p1, Lcom/google/android/gms/internal/zzaji;

    const-wide/16 p2, 0xc8

    invoke-direct {p1, p2, p3}, Lcom/google/android/gms/internal/zzaji;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzyt;->i:Lcom/google/android/gms/internal/zzaji;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/zzyt;Ljava/lang/ref/WeakReference;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzyt;->a(Ljava/lang/ref/WeakReference;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object p0

    return-object p0
.end method

.method private final a(Ljava/lang/ref/WeakReference;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/gms/internal/zzanh;",
            ">;)",
            "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzyt;->g:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzyz;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzyz;-><init>(Lcom/google/android/gms/internal/zzyt;Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzyt;->g:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzyt;->g:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/zzyt;)Lcom/google/android/gms/ads/internal/zzba;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzyt;->f:Lcom/google/android/gms/ads/internal/zzba;

    return-object p0
.end method

.method private final a(Lcom/google/android/gms/internal/zzanh;)V
    .locals 2

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzanh;->u()Lcom/google/android/gms/internal/zzani;

    move-result-object p1

    const-string v0, "/video"

    sget-object v1, Lcom/google/android/gms/ads/internal/gmsg/zzd;->l:Lcom/google/android/gms/ads/internal/gmsg/zzt;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzani;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V

    const-string v0, "/videoMeta"

    sget-object v1, Lcom/google/android/gms/ads/internal/gmsg/zzd;->m:Lcom/google/android/gms/ads/internal/gmsg/zzt;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzani;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V

    const-string v0, "/precache"

    new-instance v1, Lcom/google/android/gms/internal/zzane;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzane;-><init>()V

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzani;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V

    const-string v0, "/delayPageLoaded"

    sget-object v1, Lcom/google/android/gms/ads/internal/gmsg/zzd;->p:Lcom/google/android/gms/ads/internal/gmsg/zzt;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzani;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V

    const-string v0, "/instrument"

    sget-object v1, Lcom/google/android/gms/ads/internal/gmsg/zzd;->n:Lcom/google/android/gms/ads/internal/gmsg/zzt;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzani;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V

    const-string v0, "/log"

    sget-object v1, Lcom/google/android/gms/ads/internal/gmsg/zzd;->g:Lcom/google/android/gms/ads/internal/gmsg/zzt;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzani;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V

    const-string v0, "/videoClicked"

    sget-object v1, Lcom/google/android/gms/ads/internal/gmsg/zzd;->h:Lcom/google/android/gms/ads/internal/gmsg/zzt;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzani;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V

    const-string v0, "/trackActiveViewUnit"

    new-instance v1, Lcom/google/android/gms/internal/zzyx;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzyx;-><init>(Lcom/google/android/gms/internal/zzyt;)V

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzani;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V

    const-string v0, "/untrackActiveViewUnit"

    new-instance v1, Lcom/google/android/gms/internal/zzyy;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzyy;-><init>(Lcom/google/android/gms/internal/zzyt;)V

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzani;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/zzyt;Lcom/google/android/gms/internal/zzanh;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzyt;->a(Lcom/google/android/gms/internal/zzanh;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/zzyt;Ljava/lang/ref/WeakReference;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzyt;->a(Ljava/lang/ref/WeakReference;Z)V

    return-void
.end method

.method private final a(Ljava/lang/ref/WeakReference;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/gms/internal/zzanh;",
            ">;Z)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzanh;

    if-eqz p1, :cond_7

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    move-object v1, p1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzyt;->i:Lcom/google/android/gms/internal/zzaji;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzaji;->a()Z

    move-result v2

    if-nez v2, :cond_2

    return-void

    :cond_2
    if-eqz p1, :cond_5

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->a()Lcom/google/android/gms/internal/zzajr;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzyt;->b:Landroid/content/Context;

    const/4 v2, 0x0

    aget v2, v0, v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzajr;->b(Landroid/content/Context;I)I

    move-result v1

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->a()Lcom/google/android/gms/internal/zzajr;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzyt;->b:Landroid/content/Context;

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzajr;->b(Landroid/content/Context;I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzyt;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget v4, p0, Lcom/google/android/gms/internal/zzyt;->j:I

    if-ne v4, v1, :cond_3

    iget v4, p0, Lcom/google/android/gms/internal/zzyt;->k:I

    if-eq v4, v0, :cond_4

    :cond_3
    iput v1, p0, Lcom/google/android/gms/internal/zzyt;->j:I

    iput v0, p0, Lcom/google/android/gms/internal/zzyt;->k:I

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzanh;->u()Lcom/google/android/gms/internal/zzani;

    move-result-object p1

    iget v0, p0, Lcom/google/android/gms/internal/zzyt;->j:I

    iget v1, p0, Lcom/google/android/gms/internal/zzyt;->k:I

    xor-int/2addr p2, v3

    invoke-virtual {p1, v0, v1, p2}, Lcom/google/android/gms/internal/zzani;->a(IIZ)V

    :cond_4
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_5
    throw v0

    :cond_6
    throw v0

    :cond_7
    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/internal/zzyt;Ljava/lang/ref/WeakReference;)Landroid/view/ViewTreeObserver$OnScrollChangedListener;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzyt;->b(Ljava/lang/ref/WeakReference;)Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    move-result-object p0

    return-object p0
.end method

.method private final b(Ljava/lang/ref/WeakReference;)Landroid/view/ViewTreeObserver$OnScrollChangedListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/gms/internal/zzanh;",
            ">;)",
            "Landroid/view/ViewTreeObserver$OnScrollChangedListener;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzyt;->h:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzza;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzza;-><init>(Lcom/google/android/gms/internal/zzyt;Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzyt;->h:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzyt;->h:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    return-object p1
.end method


# virtual methods
.method final a()Lcom/google/android/gms/internal/zzanh;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzanv;
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->f()Lcom/google/android/gms/internal/zzanr;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzyt;->b:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/internal/zzapa;->a()Lcom/google/android/gms/internal/zzapa;

    move-result-object v2

    const-string v3, "native-video"

    iget-object v6, p0, Lcom/google/android/gms/internal/zzyt;->c:Lcom/google/android/gms/internal/zzcv;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzyt;->d:Lcom/google/android/gms/internal/zzafp;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzafp;->a:Lcom/google/android/gms/internal/zzaat;

    iget-object v7, v4, Lcom/google/android/gms/internal/zzaat;->l:Lcom/google/android/gms/internal/zzakd;

    iget-object v8, p0, Lcom/google/android/gms/internal/zzyt;->e:Lcom/google/android/gms/internal/zznu;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzyt;->f:Lcom/google/android/gms/ads/internal/zzba;

    invoke-virtual {v4}, Lcom/google/android/gms/ads/internal/zza;->zzbq()Lcom/google/android/gms/ads/internal/zzv;

    move-result-object v10

    iget-object v4, p0, Lcom/google/android/gms/internal/zzyt;->d:Lcom/google/android/gms/internal/zzafp;

    iget-object v11, v4, Lcom/google/android/gms/internal/zzafp;->i:Lcom/google/android/gms/internal/zzis;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v11}, Lcom/google/android/gms/internal/zzanr;->a(Landroid/content/Context;Lcom/google/android/gms/internal/zzapa;Ljava/lang/String;ZZLcom/google/android/gms/internal/zzcv;Lcom/google/android/gms/internal/zzakd;Lcom/google/android/gms/internal/zznu;Lcom/google/android/gms/ads/internal/zzbl;Lcom/google/android/gms/ads/internal/zzv;Lcom/google/android/gms/internal/zzis;)Lcom/google/android/gms/internal/zzanh;

    move-result-object v0

    return-object v0
.end method
