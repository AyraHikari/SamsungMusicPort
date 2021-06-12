.class public final Lcom/google/android/gms/internal/zzpj;
.super Lcom/google/android/gms/internal/zzqa;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# static fields
.field static final zzbvj:[Ljava/lang/String;


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private zzbuf:Lcom/google/android/gms/internal/zzos;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private zzbvo:Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private zzbvq:Landroid/graphics/Point;

.field private zzbvr:Landroid/graphics/Point;

.field private zzbvs:Ljava/lang/ref/WeakReference;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/gms/internal/zzgp;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbvw:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbvx:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private final zzbvy:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private final zzbvz:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "2011"

    const-string v1, "1009"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzpj;->zzbvj:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqa;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpj;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpj;->zzbvx:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpj;->zzbvy:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpj;->zzbvz:Ljava/util/Map;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpj;->zzbvq:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpj;->zzbvr:Landroid/graphics/Point;

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpj;->zzbvs:Ljava/lang/ref/WeakReference;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->y()Lcom/google/android/gms/internal/zzaln;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/zzaln;->a(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->y()Lcom/google/android/gms/internal/zzaln;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/zzaln;->a(Landroid/view/View;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpj;->zzbvw:Ljava/lang/ref/WeakReference;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzpj;->zzi(Ljava/util/Map;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/zzpj;->zzbvz:Ljava/util/Map;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpj;->zzbvx:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/zzpj;->zzj(Ljava/util/Map;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/zzpj;->zzbvz:Ljava/util/Map;

    iget-object p3, p0, Lcom/google/android/gms/internal/zzpj;->zzbvy:Ljava/util/Map;

    invoke-interface {p2, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zznh;->a(Landroid/content/Context;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/zzow;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpj;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/zzpj;->zzbvj:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    iget-object v5, p0, Lcom/google/android/gms/internal/zzpj;->zzbvz:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    instance-of v2, v1, Landroid/widget/FrameLayout;

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzow;->g()V

    monitor-exit v0

    return-void

    :cond_2
    new-instance v2, Lcom/google/android/gms/internal/zzpl;

    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/internal/zzpl;-><init>(Lcom/google/android/gms/internal/zzpj;Landroid/view/View;)V

    instance-of v3, p1, Lcom/google/android/gms/internal/zzor;

    if-eqz v3, :cond_3

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/zzow;->b(Landroid/view/View;Lcom/google/android/gms/internal/zzoq;)Z

    goto :goto_2

    :cond_3
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/zzow;->a(Landroid/view/View;Lcom/google/android/gms/internal/zzoq;)V

    :goto_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzpj;Lcom/google/android/gms/internal/zzow;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzpj;->zza(Lcom/google/android/gms/internal/zzow;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzpj;[Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzpj;->zza([Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private final zza([Ljava/lang/String;)Z
    .locals 5

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    iget-object v4, p0, Lcom/google/android/gms/internal/zzpj;->zzbvx:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    array-length v0, p1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_3

    aget-object v3, p1, v2

    iget-object v4, p0, Lcom/google/android/gms/internal/zzpj;->zzbvy:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return v1
.end method

.method private final zzi(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzpj;->zzbvx:Ljava/util/Map;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "1098"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final zzj(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzpj;->zzbvy:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final zzk(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpj;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzpj;->zzbuf:Lcom/google/android/gms/internal/zzos;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpj;->zzbuf:Lcom/google/android/gms/internal/zzos;

    instance-of v1, v1, Lcom/google/android/gms/internal/zzor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpj;->zzbuf:Lcom/google/android/gms/internal/zzos;

    check-cast v1, Lcom/google/android/gms/internal/zzor;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzor;->d()Lcom/google/android/gms/internal/zzos;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzpj;->zzbuf:Lcom/google/android/gms/internal/zzos;

    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/zzos;->b(Landroid/view/View;)V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private final zzt(I)I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpj;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->a()Lcom/google/android/gms/internal/zzajr;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpj;->zzbuf:Lcom/google/android/gms/internal/zzos;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzos;->i()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/zzajr;->b(Landroid/content/Context;I)I

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


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpj;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzpj;->zzbuf:Lcom/google/android/gms/internal/zzos;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzpj;->zzbvw:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/view/View;

    if-nez v7, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v1, "x"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzpj;->zzbvq:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/zzpj;->zzt(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v1, "y"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzpj;->zzbvq:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/zzpj;->zzt(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v1, "start_x"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzpj;->zzbvr:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/zzpj;->zzt(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v1, "start_y"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzpj;->zzbvr:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/zzpj;->zzt(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpj;->zzbvo:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpj;->zzbvo:Landroid/view/View;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpj;->zzbuf:Lcom/google/android/gms/internal/zzos;

    instance-of v1, v1, Lcom/google/android/gms/internal/zzor;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpj;->zzbuf:Lcom/google/android/gms/internal/zzos;

    check-cast v1, Lcom/google/android/gms/internal/zzor;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzor;->d()Lcom/google/android/gms/internal/zzos;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpj;->zzbuf:Lcom/google/android/gms/internal/zzos;

    check-cast v1, Lcom/google/android/gms/internal/zzor;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzor;->d()Lcom/google/android/gms/internal/zzos;

    move-result-object v2

    const-string v4, "1007"

    iget-object v6, p0, Lcom/google/android/gms/internal/zzpj;->zzbvz:Ljava/util/Map;

    :goto_0
    move-object v3, p1

    invoke-interface/range {v2 .. v7}, Lcom/google/android/gms/internal/zzos;->a(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;Landroid/view/View;)V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/zzpj;->zzbuf:Lcom/google/android/gms/internal/zzos;

    const-string v4, "1007"

    iget-object v6, p0, Lcom/google/android/gms/internal/zzpj;->zzbvz:Ljava/util/Map;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzpj;->zzbuf:Lcom/google/android/gms/internal/zzos;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzpj;->zzbvz:Ljava/util/Map;

    invoke-interface {v1, p1, v2, v5, v7}, Lcom/google/android/gms/internal/zzos;->a(Landroid/view/View;Ljava/util/Map;Landroid/os/Bundle;Landroid/view/View;)V

    :cond_4
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onGlobalLayout()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpj;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzpj;->zzbuf:Lcom/google/android/gms/internal/zzos;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpj;->zzbvw:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzpj;->zzbuf:Lcom/google/android/gms/internal/zzos;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzpj;->zzbvz:Ljava/util/Map;

    invoke-interface {v2, v1, v3}, Lcom/google/android/gms/internal/zzos;->c(Landroid/view/View;Ljava/util/Map;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final onScrollChanged()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpj;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzpj;->zzbuf:Lcom/google/android/gms/internal/zzos;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpj;->zzbvw:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzpj;->zzbuf:Lcom/google/android/gms/internal/zzos;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzpj;->zzbvz:Ljava/util/Map;

    invoke-interface {v2, v1, v3}, Lcom/google/android/gms/internal/zzos;->c(Landroid/view/View;Ljava/util/Map;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    iget-object p1, p0, Lcom/google/android/gms/internal/zzpj;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpj;->zzbuf:Lcom/google/android/gms/internal/zzos;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p1

    return v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpj;->zzbvw:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    monitor-exit p1

    return v1

    :cond_1
    const/4 v2, 0x2

    new-array v2, v2, [I

    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    aget v3, v2, v1

    int-to-float v3, v3

    sub-float/2addr v0, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    const/4 v4, 0x1

    aget v2, v2, v4

    int-to-float v2, v2

    sub-float/2addr v3, v2

    new-instance v2, Landroid/graphics/Point;

    float-to-int v0, v0

    float-to-int v3, v3

    invoke-direct {v2, v0, v3}, Landroid/graphics/Point;-><init>(II)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzpj;->zzbvq:Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    iput-object v2, p0, Lcom/google/android/gms/internal/zzpj;->zzbvr:Landroid/graphics/Point;

    :cond_2
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p2

    iget v0, v2, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {p2, v0, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpj;->zzbuf:Lcom/google/android/gms/internal/zzos;

    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/zzos;->a(Landroid/view/MotionEvent;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->recycle()V

    monitor-exit p1

    return v1

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public final unregisterNativeAd()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpj;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/google/android/gms/internal/zzpj;->zzbvo:Landroid/view/View;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzpj;->zzbuf:Lcom/google/android/gms/internal/zzos;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzpj;->zzbvq:Landroid/graphics/Point;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzpj;->zzbvr:Landroid/graphics/Point;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zza(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpj;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzpj;->zzk(Landroid/view/View;)V

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zzn;->zzx(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    instance-of v2, p1, Lcom/google/android/gms/internal/zzow;

    if-nez v2, :cond_0

    const-string p1, "Not an instance of native engine. This is most likely a transient error"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzagf;->e(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/zzow;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzow;->b()Z

    move-result v2

    if-nez v2, :cond_1

    const-string p1, "Your account must be enabled to use this feature. Talk to your account manager to request this feature for your account."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzagf;->c(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/zzpj;->zzbvw:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzpj;->zzbuf:Lcom/google/android/gms/internal/zzos;

    if-eqz v2, :cond_2

    if-eqz v7, :cond_2

    sget-object v2, Lcom/google/android/gms/internal/zznh;->bM:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->f()Lcom/google/android/gms/internal/zznf;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/zznf;->a(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzpj;->zzbuf:Lcom/google/android/gms/internal/zzos;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzpj;->zzbvz:Ljava/util/Map;

    invoke-interface {v2, v7, v3}, Lcom/google/android/gms/internal/zzos;->b(Landroid/view/View;Ljava/util/Map;)V

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/zzpj;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v3, p0, Lcom/google/android/gms/internal/zzpj;->zzbuf:Lcom/google/android/gms/internal/zzos;

    instance-of v3, v3, Lcom/google/android/gms/internal/zzow;

    if-nez v3, :cond_4

    :cond_3
    :goto_0
    monitor-exit v2

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/google/android/gms/internal/zzpj;->zzbuf:Lcom/google/android/gms/internal/zzos;

    check-cast v3, Lcom/google/android/gms/internal/zzow;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzpj;->zzbvw:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzow;->i()Landroid/content/Context;

    move-result-object v5

    if-eqz v5, :cond_3

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->z()Lcom/google/android/gms/internal/zzaff;

    move-result-object v5

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/zzaff;->c(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzow;->j()Lcom/google/android/gms/internal/zzafe;

    move-result-object v3

    if-eqz v3, :cond_5

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/zzafe;->a(Z)V

    :cond_5
    iget-object v4, p0, Lcom/google/android/gms/internal/zzpj;->zzbvs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/zzgp;

    if-eqz v4, :cond_3

    if-eqz v3, :cond_3

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/zzgp;->b(Lcom/google/android/gms/internal/zzgt;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :goto_1
    :try_start_2
    iget-object v2, p0, Lcom/google/android/gms/internal/zzpj;->zzbuf:Lcom/google/android/gms/internal/zzos;

    instance-of v2, v2, Lcom/google/android/gms/internal/zzor;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/google/android/gms/internal/zzpj;->zzbuf:Lcom/google/android/gms/internal/zzos;

    check-cast v2, Lcom/google/android/gms/internal/zzor;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzor;->c()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/google/android/gms/internal/zzpj;->zzbuf:Lcom/google/android/gms/internal/zzos;

    check-cast v2, Lcom/google/android/gms/internal/zzor;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/zzor;->a(Lcom/google/android/gms/internal/zzos;)V

    goto :goto_2

    :cond_6
    iput-object p1, p0, Lcom/google/android/gms/internal/zzpj;->zzbuf:Lcom/google/android/gms/internal/zzos;

    instance-of v2, p1, Lcom/google/android/gms/internal/zzor;

    if-eqz v2, :cond_7

    move-object v2, p1

    check-cast v2, Lcom/google/android/gms/internal/zzor;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/zzor;->a(Lcom/google/android/gms/internal/zzos;)V

    :cond_7
    :goto_2
    iget-object v2, p0, Lcom/google/android/gms/internal/zzpj;->zzbvz:Ljava/util/Map;

    const-string v3, "1098"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    if-nez v2, :cond_8

    const-string v1, "Ad choices asset view is not provided."

    invoke-static {v1}, Lcom/google/android/gms/internal/zzagf;->e(Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_9

    move-object v1, v2

    check-cast v1, Landroid/view/ViewGroup;

    :cond_9
    if-eqz v1, :cond_a

    const/4 v2, 0x1

    invoke-virtual {p1, p0, v2}, Lcom/google/android/gms/internal/zzow;->a(Landroid/view/View$OnClickListener;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/zzpj;->zzbvo:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzpj;->zzbvo:Landroid/view/View;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/google/android/gms/internal/zzpj;->zzbvz:Ljava/util/Map;

    const-string v3, "1007"

    new-instance v4, Ljava/lang/ref/WeakReference;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzpj;->zzbvo:Landroid/view/View;

    invoke-direct {v4, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzpj;->zzbvx:Ljava/util/Map;

    const-string v3, "1007"

    new-instance v4, Ljava/lang/ref/WeakReference;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzpj;->zzbvo:Landroid/view/View;

    invoke-direct {v4, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzpj;->zzbvo:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_a
    :goto_3
    iget-object v3, p0, Lcom/google/android/gms/internal/zzpj;->zzbvx:Ljava/util/Map;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzpj;->zzbvy:Ljava/util/Map;

    move-object v1, p1

    move-object v2, v7

    move-object v5, p0

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/zzow;->a(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Landroid/view/View$OnTouchListener;Landroid/view/View$OnClickListener;)V

    sget-object v1, Lcom/google/android/gms/internal/zzahn;->a:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/zzpk;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/internal/zzpk;-><init>(Lcom/google/android/gms/internal/zzpj;Lcom/google/android/gms/internal/zzow;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/zzpj;->zzk(Landroid/view/View;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzpj;->zzbuf:Lcom/google/android/gms/internal/zzos;

    invoke-interface {p1, v7}, Lcom/google/android/gms/internal/zzos;->a(Landroid/view/View;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzpj;->mLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzpj;->zzbuf:Lcom/google/android/gms/internal/zzos;

    instance-of v1, v1, Lcom/google/android/gms/internal/zzow;

    if-nez v1, :cond_c

    :cond_b
    :goto_4
    monitor-exit p1

    goto :goto_5

    :cond_c
    iget-object v1, p0, Lcom/google/android/gms/internal/zzpj;->zzbuf:Lcom/google/android/gms/internal/zzos;

    check-cast v1, Lcom/google/android/gms/internal/zzow;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzpj;->zzbvw:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzow;->i()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_b

    if-eqz v2, :cond_b

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->z()Lcom/google/android/gms/internal/zzaff;

    move-result-object v3

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/zzaff;->c(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/google/android/gms/internal/zzpj;->zzbvs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/zzgp;

    if-nez v3, :cond_d

    new-instance v3, Lcom/google/android/gms/internal/zzgp;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/google/android/gms/internal/zzgp;-><init>(Landroid/content/Context;Landroid/view/View;)V

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzpj;->zzbvs:Ljava/lang/ref/WeakReference;

    :cond_d
    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzow;->j()Lcom/google/android/gms/internal/zzafe;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/zzgp;->a(Lcom/google/android/gms/internal/zzgt;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :goto_5
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return-void

    :catchall_0
    move-exception v1

    :try_start_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_1
    move-exception p1

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw p1

    :catchall_2
    move-exception p1

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw p1
.end method
