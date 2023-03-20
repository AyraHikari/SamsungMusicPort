.class public final Lcom/samsung/android/app/music/player/fullplayer/HeartView;
.super Landroid/view/View;
.source "HeartView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/player/fullplayer/HeartView$b;,
        Lcom/samsung/android/app/music/player/fullplayer/HeartView$d;,
        Lcom/samsung/android/app/music/player/fullplayer/HeartView$c;,
        Lcom/samsung/android/app/music/player/fullplayer/HeartView$a;
    }
.end annotation


# static fields
.field public static final d:Lcom/samsung/android/app/music/player/fullplayer/HeartView$a;

.field public static e:Landroid/graphics/Bitmap;

.field public static final f:Landroid/view/animation/Interpolator;


# instance fields
.field public final a:Landroid/view/Choreographer;

.field public final b:Lcom/samsung/android/app/music/player/fullplayer/HeartView$b;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/player/fullplayer/HeartView$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/samsung/android/app/music/player/fullplayer/HeartView$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/player/fullplayer/HeartView$a;-><init>(Lkotlin/jvm/internal/g;)V

    sput-object v0, Lcom/samsung/android/app/music/player/fullplayer/HeartView;->d:Lcom/samsung/android/app/music/player/fullplayer/HeartView$a;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3d8f5c29    # 0.07f

    const v2, 0x3ed70a3d    # 0.42f

    const v3, 0x3ecccccd    # 0.4f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/android/app/music/player/fullplayer/HeartView;->f:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    const-string p2, "getInstance()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/HeartView;->a:Landroid/view/Choreographer;

    .line 3
    new-instance p1, Lcom/samsung/android/app/music/player/fullplayer/HeartView$b;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/player/fullplayer/HeartView$b;-><init>(Lcom/samsung/android/app/music/player/fullplayer/HeartView;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/HeartView;->b:Lcom/samsung/android/app/music/player/fullplayer/HeartView$b;

    .line 4
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/HeartView;->c:Ljava/util/List;

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/player/fullplayer/HeartView;)Landroid/view/Choreographer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/music/player/fullplayer/HeartView;->a:Landroid/view/Choreographer;

    return-object p0
.end method

.method public static final synthetic b()Landroid/view/animation/Interpolator;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/music/player/fullplayer/HeartView;->f:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public static final synthetic c()Landroid/graphics/Bitmap;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/music/player/fullplayer/HeartView;->e:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static final synthetic d(Lcom/samsung/android/app/music/player/fullplayer/HeartView;)Lcom/samsung/android/app/music/player/fullplayer/HeartView$b;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/music/player/fullplayer/HeartView;->b:Lcom/samsung/android/app/music/player/fullplayer/HeartView$b;

    return-object p0
.end method

.method public static final synthetic e(Lcom/samsung/android/app/music/player/fullplayer/HeartView;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/music/player/fullplayer/HeartView;->c:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic f(Landroid/graphics/Bitmap;)V
    .locals 0

    sput-object p0, Lcom/samsung/android/app/music/player/fullplayer/HeartView;->e:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final g(F)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method public final h()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/HeartView;->a:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/HeartView;->b:Lcom/samsung/android/app/music/player/fullplayer/HeartView$b;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method

.method public final i()V
    .locals 7

    invoke-static {p0}, Landroidx/lifecycle/h0;->a(Landroid/view/View;)Landroidx/lifecycle/s;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Landroidx/lifecycle/t;->a(Landroidx/lifecycle/s;)Landroidx/lifecycle/m;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lkotlinx/coroutines/a1;->b()Lkotlinx/coroutines/h0;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Lcom/samsung/android/app/music/player/fullplayer/HeartView$e;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lcom/samsung/android/app/music/player/fullplayer/HeartView$e;-><init>(Lcom/samsung/android/app/music/player/fullplayer/HeartView;Lkotlin/coroutines/d;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/j;->d(Lkotlinx/coroutines/l0;Lkotlin/coroutines/g;Lkotlinx/coroutines/n0;Lkotlin/jvm/functions/p;ILjava/lang/Object;)Lkotlinx/coroutines/w1;

    :goto_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/HeartView;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/player/fullplayer/HeartView$c;

    .line 3
    invoke-virtual {v1}, Lcom/samsung/android/app/music/player/fullplayer/HeartView$c;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v1, p1}, Lcom/samsung/android/app/music/player/fullplayer/HeartView$c;->d(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_1
    return-void
.end method
