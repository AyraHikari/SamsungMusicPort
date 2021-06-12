.class public final Lcom/samsung/android/app/music/player/lockplayer/LockDragVI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/Releasable;
.implements Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;


# instance fields
.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lkotlin/Lazy;

.field private final d:Landroid/view/ViewGroup;

.field private final e:Landroid/support/v4/app/FragmentActivity;

.field private final f:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/lockplayer/LockDragVI;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "maxDragDistance"

    const-string v4, "getMaxDragDistance()F"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/music/player/lockplayer/LockDragVI;->a:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;Landroid/view/View;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockDragVI;->e:Landroid/support/v4/app/FragmentActivity;

    iput-object p2, p0, Lcom/samsung/android/app/music/player/lockplayer/LockDragVI;->f:Landroid/view/View;

    .line 25
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockDragVI;->b:Ljava/util/Map;

    .line 26
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/samsung/android/app/music/player/lockplayer/LockDragVI$maxDragDistance$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/player/lockplayer/LockDragVI$maxDragDistance$2;-><init>(Lcom/samsung/android/app/music/player/lockplayer/LockDragVI;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockDragVI;->c:Lkotlin/Lazy;

    .line 30
    iget-object p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockDragVI;->f:Landroid/view/View;

    iget-object p2, p0, Lcom/samsung/android/app/music/player/lockplayer/LockDragVI;->e:Landroid/support/v4/app/FragmentActivity;

    check-cast p2, Landroid/app/Activity;

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/ActivityExtensionKt;->b(Landroid/app/Activity;)Z

    move-result p2

    if-eqz p2, :cond_0

    const p2, 0x7f1302ae

    goto :goto_0

    :cond_0
    const p2, 0x7f13014f

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "rootView.findViewById(if\u2026view else R.id.container)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockDragVI;->d:Landroid/view/ViewGroup;

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/player/lockplayer/LockDragVI;)Ljava/util/Map;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockDragVI;->b:Ljava/util/Map;

    return-object p0
.end method

.method private final a(IF)V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockDragVI;->f:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 57
    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockDragVI;->b:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private final a(Landroid/view/View;F)V
    .locals 4

    const/4 v0, 0x2

    .line 74
    new-array v0, v0, [I

    .line 75
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 76
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    const-string v2, "rootView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/4 v3, 0x0

    aget v3, v0, v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotX(F)V

    .line 77
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    const-string v3, "rootView"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    const/4 v2, 0x1

    aget v0, v0, v2

    int-to-float v0, v0

    sub-float/2addr v1, v0

    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotY(F)V

    .line 79
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 80
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/player/lockplayer/LockDragVI;Landroid/view/View;F)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/player/lockplayer/LockDragVI;->a(Landroid/view/View;F)V

    return-void
.end method

.method private final b()F
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockDragVI;->c:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/lockplayer/LockDragVI;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/player/lockplayer/LockDragVI;)Landroid/view/View;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockDragVI;->f:Landroid/view/View;

    return-object p0
.end method

.method public static final synthetic c(Lcom/samsung/android/app/music/player/lockplayer/LockDragVI;)Landroid/support/v4/app/FragmentActivity;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockDragVI;->e:Landroid/support/v4/app/FragmentActivity;

    return-object p0
.end method

.method private final c()V
    .locals 3

    const v0, 0x3e4ccccd    # 0.2f

    const v1, 0x7f130330

    .line 33
    invoke-direct {p0, v1, v0}, Lcom/samsung/android/app/music/player/lockplayer/LockDragVI;->a(IF)V

    const v1, 0x3dcccccd    # 0.1f

    const v2, 0x7f130259

    .line 34
    invoke-direct {p0, v2, v1}, Lcom/samsung/android/app/music/player/lockplayer/LockDragVI;->a(IF)V

    const v2, 0x7f130332

    .line 35
    invoke-direct {p0, v2, v1}, Lcom/samsung/android/app/music/player/lockplayer/LockDragVI;->a(IF)V

    const v2, 0x7f130294

    .line 36
    invoke-direct {p0, v2, v1}, Lcom/samsung/android/app/music/player/lockplayer/LockDragVI;->a(IF)V

    const v2, 0x7f130070

    .line 37
    invoke-direct {p0, v2, v1}, Lcom/samsung/android/app/music/player/lockplayer/LockDragVI;->a(IF)V

    const v2, 0x7f13019a

    .line 38
    invoke-direct {p0, v2, v1}, Lcom/samsung/android/app/music/player/lockplayer/LockDragVI;->a(IF)V

    const v2, 0x7f130059

    .line 39
    invoke-direct {p0, v2, v1}, Lcom/samsung/android/app/music/player/lockplayer/LockDragVI;->a(IF)V

    const v2, 0x7f130056

    .line 40
    invoke-direct {p0, v2, v1}, Lcom/samsung/android/app/music/player/lockplayer/LockDragVI;->a(IF)V

    const v2, 0x7f130050

    .line 41
    invoke-direct {p0, v2, v1}, Lcom/samsung/android/app/music/player/lockplayer/LockDragVI;->a(IF)V

    const v2, 0x7f13028b

    .line 42
    invoke-direct {p0, v2, v0}, Lcom/samsung/android/app/music/player/lockplayer/LockDragVI;->a(IF)V

    const v2, 0x7f130021

    .line 43
    invoke-direct {p0, v2, v0}, Lcom/samsung/android/app/music/player/lockplayer/LockDragVI;->a(IF)V

    const v2, 0x7f13028d

    .line 44
    invoke-direct {p0, v2, v0}, Lcom/samsung/android/app/music/player/lockplayer/LockDragVI;->a(IF)V

    const v2, 0x7f13028f

    .line 45
    invoke-direct {p0, v2, v0}, Lcom/samsung/android/app/music/player/lockplayer/LockDragVI;->a(IF)V

    const v2, 0x7f13029f

    .line 46
    invoke-direct {p0, v2, v1}, Lcom/samsung/android/app/music/player/lockplayer/LockDragVI;->a(IF)V

    const v2, 0x7f1302a0

    .line 47
    invoke-direct {p0, v2, v1}, Lcom/samsung/android/app/music/player/lockplayer/LockDragVI;->a(IF)V

    const v1, 0x7f130335

    .line 48
    invoke-direct {p0, v1, v0}, Lcom/samsung/android/app/music/player/lockplayer/LockDragVI;->a(IF)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .line 103
    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockDragVI;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 104
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    const-wide/16 v2, 0x14a

    .line 105
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 106
    sget-object v4, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->a:Landroid/view/animation/Interpolator;

    check-cast v4, Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 135
    invoke-static {p0}, Lcom/samsung/android/app/music/player/lockplayer/LockDragVI;->a(Lcom/samsung/android/app/music/player/lockplayer/LockDragVI;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    .line 136
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 109
    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 110
    invoke-virtual {v4, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 111
    invoke-virtual {v4, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 112
    new-instance v6, Lcom/samsung/android/app/music/player/lockplayer/LockDragVI$$special$$inlined$with$lambda$1;

    invoke-direct {v6, v5}, Lcom/samsung/android/app/music/player/lockplayer/LockDragVI$$special$$inlined$with$lambda$1;-><init>(Landroid/view/View;)V

    check-cast v6, Ljava/lang/Runnable;

    invoke-virtual {v4, v6}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 113
    invoke-virtual {v4, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 114
    sget-object v5, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->d:Landroid/view/animation/Interpolator;

    check-cast v5, Landroid/animation/TimeInterpolator;

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a(F)V
    .locals 9

    .line 62
    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockDragVI;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/music/player/lockplayer/LockDragVI;->c()V

    .line 63
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/lockplayer/LockDragVI;->b()F

    move-result v0

    div-float/2addr p1, v0

    float-to-double v0, p1

    .line 64
    new-instance p1, Lkotlin/jvm/internal/Ref$DoubleRef;

    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$DoubleRef;-><init>()V

    .line 65
    iget-object v2, p0, Lcom/samsung/android/app/music/player/lockplayer/LockDragVI;->d:Landroid/view/ViewGroup;

    const/high16 v3, 0x3f800000    # 1.0f

    float-to-double v3, v3

    mul-double v5, v3, v0

    sub-double v5, v3, v5

    double-to-float v5, v5

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 127
    invoke-static {p0}, Lcom/samsung/android/app/music/player/lockplayer/LockDragVI;->a(Lcom/samsung/android/app/music/player/lockplayer/LockDragVI;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    .line 128
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_1

    float-to-double v7, v5

    mul-double v7, v7, v0

    add-double/2addr v7, v3

    .line 67
    iput-wide v7, p1, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D

    .line 68
    iget-wide v7, p1, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D

    double-to-float v5, v7

    invoke-static {p0, v6, v5}, Lcom/samsung/android/app/music/player/lockplayer/LockDragVI;->a(Lcom/samsung/android/app/music/player/lockplayer/LockDragVI;Landroid/view/View;F)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final b(F)V
    .locals 5

    .line 85
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/lockplayer/LockDragVI;->b()F

    move-result v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_1

    .line 86
    iget-object p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockDragVI;->d:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    .line 87
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    const-wide/16 v0, 0x64

    .line 88
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 89
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->a:Landroid/view/animation/Interpolator;

    check-cast v2, Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 131
    invoke-static {p0}, Lcom/samsung/android/app/music/player/lockplayer/LockDragVI;->a(Lcom/samsung/android/app/music/player/lockplayer/LockDragVI;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    .line 132
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 92
    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v2, v4

    .line 93
    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 94
    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 95
    invoke-virtual {v3, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 96
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->d:Landroid/view/animation/Interpolator;

    check-cast v2, Landroid/animation/TimeInterpolator;

    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public release()V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockDragVI;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method
