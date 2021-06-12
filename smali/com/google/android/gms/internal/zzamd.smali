.class public final Lcom/google/android/gms/internal/zzamd;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Lcom/google/android/gms/internal/zzama;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/zzamp;

.field private final b:Landroid/widget/FrameLayout;

.field private final c:Lcom/google/android/gms/internal/zznu;

.field private final d:Lcom/google/android/gms/internal/zzamr;

.field private final e:J

.field private f:Lcom/google/android/gms/internal/zzamb;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:J

.field private l:J

.field private m:Ljava/lang/String;

.field private n:Landroid/graphics/Bitmap;

.field private o:Landroid/widget/ImageView;

.field private p:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzamp;IZLcom/google/android/gms/internal/zznu;Lcom/google/android/gms/internal/zzamo;)V
    .locals 10

    move-object v0, p0

    move-object v8, p1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object v3, p2

    iput-object v3, v0, Lcom/google/android/gms/internal/zzamd;->a:Lcom/google/android/gms/internal/zzamp;

    move-object v6, p5

    iput-object v6, v0, Lcom/google/android/gms/internal/zzamd;->c:Lcom/google/android/gms/internal/zznu;

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/zzamd;->b:Landroid/widget/FrameLayout;

    iget-object v1, v0, Lcom/google/android/gms/internal/zzamd;->b:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v9, -0x1

    invoke-direct {v2, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/zzamd;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzamp;->e()Lcom/google/android/gms/ads/internal/zzv;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzc;->zzv(Ljava/lang/Object;)V

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzamp;->e()Lcom/google/android/gms/ads/internal/zzv;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzv;->b:Lcom/google/android/gms/internal/zzamc;

    move-object v2, p1

    move v4, p3

    move v5, p4

    move-object/from16 v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/zzamc;->a(Landroid/content/Context;Lcom/google/android/gms/internal/zzamp;IZLcom/google/android/gms/internal/zznu;Lcom/google/android/gms/internal/zzamo;)Lcom/google/android/gms/internal/zzamb;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzamd;->f:Lcom/google/android/gms/internal/zzamb;

    iget-object v1, v0, Lcom/google/android/gms/internal/zzamd;->f:Lcom/google/android/gms/internal/zzamb;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/google/android/gms/internal/zzamd;->b:Landroid/widget/FrameLayout;

    iget-object v2, v0, Lcom/google/android/gms/internal/zzamd;->f:Lcom/google/android/gms/internal/zzamb;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x11

    invoke-direct {v3, v9, v9, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v1, Lcom/google/android/gms/internal/zznh;->s:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->f()Lcom/google/android/gms/internal/zznf;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/zznf;->a(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamd;->m()V

    :cond_0
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/zzamd;->o:Landroid/widget/ImageView;

    sget-object v1, Lcom/google/android/gms/internal/zznh;->w:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->f()Lcom/google/android/gms/internal/zznf;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/zznf;->a(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/gms/internal/zzamd;->e:J

    sget-object v1, Lcom/google/android/gms/internal/zznh;->u:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->f()Lcom/google/android/gms/internal/zznf;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/zznf;->a(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/zzamd;->j:Z

    iget-object v1, v0, Lcom/google/android/gms/internal/zzamd;->c:Lcom/google/android/gms/internal/zznu;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/google/android/gms/internal/zzamd;->c:Lcom/google/android/gms/internal/zznu;

    const-string v2, "spinner_used"

    iget-boolean v3, v0, Lcom/google/android/gms/internal/zzamd;->j:Z

    if-eqz v3, :cond_1

    const-string v3, "1"

    goto :goto_0

    :cond_1
    const-string v3, "0"

    :goto_0
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zznu;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    new-instance v1, Lcom/google/android/gms/internal/zzamr;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzamr;-><init>(Lcom/google/android/gms/internal/zzamd;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/zzamd;->d:Lcom/google/android/gms/internal/zzamr;

    iget-object v1, v0, Lcom/google/android/gms/internal/zzamd;->f:Lcom/google/android/gms/internal/zzamb;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/google/android/gms/internal/zzamd;->f:Lcom/google/android/gms/internal/zzamb;

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/zzamb;->a(Lcom/google/android/gms/internal/zzama;)V

    :cond_3
    iget-object v1, v0, Lcom/google/android/gms/internal/zzamd;->f:Lcom/google/android/gms/internal/zzamb;

    if-nez v1, :cond_4

    const-string v1, "AdVideoUnderlay Error"

    const-string v2, "Allocating player failed."

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/zzamd;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/zzamd;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzamd;->a(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/zzamp;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "event"

    const-string v2, "no_video_view"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "onVideoEvent"

    invoke-interface {p0, v1, v0}, Lcom/google/android/gms/internal/zzamp;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/zzamp;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "event"

    const-string v2, "decoderProps"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "error"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "onVideoEvent"

    invoke-interface {p0, p1, v0}, Lcom/google/android/gms/internal/zzamp;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/zzamp;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzamp;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;>;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "event"

    const-string v2, "decoderProps"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mimeTypes"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "onVideoEvent"

    invoke-interface {p0, p1, v0}, Lcom/google/android/gms/internal/zzamp;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private final varargs a(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "event"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    array-length p1, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    :goto_0
    if-ge v2, p1, :cond_1

    aget-object v4, p2, v2

    if-nez v3, :cond_0

    move-object v3, v4

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/zzamd;->a:Lcom/google/android/gms/internal/zzamp;

    const-string p2, "onVideoEvent"

    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/internal/zzamp;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private final p()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->o:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final q()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->a:Lcom/google/android/gms/internal/zzamp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzamp;->d()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzamd;->h:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzamd;->i:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->a:Lcom/google/android/gms/internal/zzamp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzamp;->d()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzamd;->h:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->d:Lcom/google/android/gms/internal/zzamr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzamr;->b()V

    sget-object v0, Lcom/google/android/gms/internal/zzahn;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/zzame;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzame;-><init>(Lcom/google/android/gms/internal/zzamd;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(F)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->f:Lcom/google/android/gms/internal/zzamb;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->f:Lcom/google/android/gms/internal/zzamb;

    iget-object v1, v0, Lcom/google/android/gms/internal/zzamb;->b:Lcom/google/android/gms/internal/zzams;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzams;->a(F)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzamb;->e()V

    return-void
.end method

.method public final a(FF)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->f:Lcom/google/android/gms/internal/zzamb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->f:Lcom/google/android/gms/internal/zzamb;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzamb;->a(FF)V

    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->f:Lcom/google/android/gms/internal/zzamb;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->f:Lcom/google/android/gms/internal/zzamb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzamb;->a(I)V

    return-void
.end method

.method public final a(II)V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzamd;->j:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/zznh;->v:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->f()Lcom/google/android/gms/internal/zznf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zznf;->a(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int/2addr p1, v0

    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    sget-object v1, Lcom/google/android/gms/internal/zznh;->v:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->f()Lcom/google/android/gms/internal/zznf;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/zznf;->a(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    div-int/2addr p2, v1

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->n:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->n:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->n:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eq v0, p2, :cond_1

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzamd;->n:Landroid/graphics/Bitmap;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzamd;->p:Z

    :cond_1
    return-void
.end method

.method public final a(IIII)V
    .locals 1

    if-eqz p3, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p3, p4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 p3, 0x0

    invoke-virtual {v0, p1, p2, p3, p3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzamd;->b:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamd;->requestLayout()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final a(Landroid/view/MotionEvent;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->f:Lcom/google/android/gms/internal/zzamb;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->f:Lcom/google/android/gms/internal/zzamb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzamb;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzamd;->m:Ljava/lang/String;

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "error"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "what"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string p1, "extra"

    const/4 v2, 0x2

    aput-object p1, v1, v2

    const/4 p1, 0x3

    aput-object p2, v1, p1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/zzamd;->a(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public final b()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->f:Lcom/google/android/gms/internal/zzamb;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/zzamd;->l:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->f:Lcom/google/android/gms/internal/zzamb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzamb;->getDuration()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzamd;->f:Lcom/google/android/gms/internal/zzamb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzamb;->getVideoWidth()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzamd;->f:Lcom/google/android/gms/internal/zzamb;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzamb;->getVideoHeight()I

    move-result v2

    const-string v3, "canplaythrough"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "duration"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x2

    const-string v5, "videoWidth"

    aput-object v5, v4, v0

    const/4 v0, 0x3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x4

    const-string v1, "videoHeight"

    aput-object v1, v4, v0

    const/4 v0, 0x5

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-direct {p0, v3, v4}, Lcom/google/android/gms/internal/zzamd;->a(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->a:Lcom/google/android/gms/internal/zzamp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzamp;->d()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzamd;->h:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->a:Lcom/google/android/gms/internal/zzamp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzamp;->d()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v2, 0x80

    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzamd;->i:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzamd;->i:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->a:Lcom/google/android/gms/internal/zzamp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzamp;->d()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzamd;->h:Z

    :cond_1
    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzamd;->g:Z

    return-void
.end method

.method public final d()V
    .locals 3

    const-string v0, "pause"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/google/android/gms/internal/zzamd;->a(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzamd;->q()V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzamd;->g:Z

    return-void
.end method

.method public final e()V
    .locals 2

    const-string v0, "ended"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/zzamd;->a(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzamd;->q()V

    return-void
.end method

.method public final f()V
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzamd;->p:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->n:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzamd;->p()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->o:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzamd;->n:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->o:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->b:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzamd;->o:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->b:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzamd;->o:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->d:Lcom/google/android/gms/internal/zzamr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzamr;->a()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzamd;->k:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzamd;->l:J

    sget-object v0, Lcom/google/android/gms/internal/zzahn;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/zzamf;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzamf;-><init>(Lcom/google/android/gms/internal/zzamd;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final g()V
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzamd;->g:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzamd;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->b:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzamd;->o:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->n:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->k()Lcom/google/android/gms/common/util/zzd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zzd;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzamd;->f:Lcom/google/android/gms/internal/zzamb;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzamd;->n:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzamb;->getBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzamd;->p:Z

    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->k()Lcom/google/android/gms/common/util/zzd;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/zzd;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-static {}, Lcom/google/android/gms/internal/zzagf;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x2e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Spinner frame grab took "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->a(Ljava/lang/String;)V

    :cond_2
    iget-wide v0, p0, Lcom/google/android/gms/internal/zzamd;->e:J

    cmp-long v0, v2, v0

    if-lez v0, :cond_3

    const-string v0, "Spinner frame grab crossed jank threshold! Suspending spinner."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzamd;->j:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzamd;->n:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->c:Lcom/google/android/gms/internal/zznu;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->c:Lcom/google/android/gms/internal/zznu;

    const-string v1, "spinner_jank"

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zznu;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public final h()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->f:Lcom/google/android/gms/internal/zzamb;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->f:Lcom/google/android/gms/internal/zzamb;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzamd;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzamb;->setVideoPath(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "no_src"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/zzamd;->a(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public final i()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->f:Lcom/google/android/gms/internal/zzamb;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->f:Lcom/google/android/gms/internal/zzamb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzamb;->d()V

    return-void
.end method

.method public final j()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->f:Lcom/google/android/gms/internal/zzamb;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->f:Lcom/google/android/gms/internal/zzamb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzamb;->c()V

    return-void
.end method

.method public final k()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->f:Lcom/google/android/gms/internal/zzamb;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->f:Lcom/google/android/gms/internal/zzamb;

    iget-object v1, v0, Lcom/google/android/gms/internal/zzamb;->b:Lcom/google/android/gms/internal/zzams;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzams;->a(Z)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzamb;->e()V

    return-void
.end method

.method public final l()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->f:Lcom/google/android/gms/internal/zzamb;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->f:Lcom/google/android/gms/internal/zzamb;

    iget-object v1, v0, Lcom/google/android/gms/internal/zzamb;->b:Lcom/google/android/gms/internal/zzams;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzams;->a(Z)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzamb;->e()V

    return-void
.end method

.method public final m()V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->f:Lcom/google/android/gms/internal/zzamb;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->f:Lcom/google/android/gms/internal/zzamb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzamb;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v0, "AdMob - "

    iget-object v2, p0, Lcom/google/android/gms/internal/zzamd;->f:Lcom/google/android/gms/internal/zzamb;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzamb;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v0, -0x10000

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v0, -0x100

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->b:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x11

    const/4 v4, -0x2

    invoke-direct {v2, v4, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    return-void
.end method

.method public final n()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->d:Lcom/google/android/gms/internal/zzamr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzamr;->a()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->f:Lcom/google/android/gms/internal/zzamb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->f:Lcom/google/android/gms/internal/zzamb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzamb;->b()V

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzamd;->q()V

    return-void
.end method

.method final o()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->f:Lcom/google/android/gms/internal/zzamb;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->f:Lcom/google/android/gms/internal/zzamb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzamb;->getCurrentPosition()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzamd;->k:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    long-to-float v2, v0

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    const-string v3, "timeupdate"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "time"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-direct {p0, v3, v4}, Lcom/google/android/gms/internal/zzamd;->a(Ljava/lang/String;[Ljava/lang/String;)V

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzamd;->k:J

    :cond_1
    return-void
.end method
