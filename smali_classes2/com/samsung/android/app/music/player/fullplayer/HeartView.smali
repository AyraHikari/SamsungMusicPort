.class public final Lcom/samsung/android/app/music/player/fullplayer/HeartView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/player/fullplayer/HeartView$HeartFrame;,
        Lcom/samsung/android/app/music/player/fullplayer/HeartView$ParticleLauncher;,
        Lcom/samsung/android/app/music/player/fullplayer/HeartView$HeartParticle;
    }
.end annotation


# instance fields
.field private final a:Landroid/view/Choreographer;

.field private final b:Lcom/samsung/android/app/music/player/fullplayer/HeartView$HeartFrame;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/player/fullplayer/HeartView$HeartParticle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/samsung/android/app/music/player/fullplayer/HeartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    const-string p2, "Choreographer.getInstance()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/HeartView;->a:Landroid/view/Choreographer;

    .line 29
    new-instance p1, Lcom/samsung/android/app/music/player/fullplayer/HeartView$HeartFrame;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/player/fullplayer/HeartView$HeartFrame;-><init>(Lcom/samsung/android/app/music/player/fullplayer/HeartView;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/HeartView;->b:Lcom/samsung/android/app/music/player/fullplayer/HeartView$HeartFrame;

    .line 30
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/HeartView;->c:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 27
    check-cast p2, Landroid/util/AttributeSet;

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/player/fullplayer/HeartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/player/fullplayer/HeartView;)Ljava/util/List;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/samsung/android/app/music/player/fullplayer/HeartView;->c:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/player/fullplayer/HeartView;)Landroid/view/Choreographer;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/samsung/android/app/music/player/fullplayer/HeartView;->a:Landroid/view/Choreographer;

    return-object p0
.end method

.method public static final synthetic c(Lcom/samsung/android/app/music/player/fullplayer/HeartView;)Lcom/samsung/android/app/music/player/fullplayer/HeartView$HeartFrame;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/samsung/android/app/music/player/fullplayer/HeartView;->b:Lcom/samsung/android/app/music/player/fullplayer/HeartView$HeartFrame;

    return-object p0
.end method


# virtual methods
.method public final a(F)I
    .locals 2

    .line 120
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/HeartView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "resources"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    .line 119
    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method public final a()V
    .locals 1

    .line 33
    new-instance v0, Lcom/samsung/android/app/music/player/fullplayer/HeartView$ParticleLauncher;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/player/fullplayer/HeartView$ParticleLauncher;-><init>(Lcom/samsung/android/app/music/player/fullplayer/HeartView;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 38
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

    check-cast v1, Lcom/samsung/android/app/music/player/fullplayer/HeartView$HeartParticle;

    .line 39
    invoke-virtual {v1}, Lcom/samsung/android/app/music/player/fullplayer/HeartView$HeartParticle;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 40
    invoke-virtual {v1, p1}, Lcom/samsung/android/app/music/player/fullplayer/HeartView$HeartParticle;->a(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_1
    return-void
.end method
