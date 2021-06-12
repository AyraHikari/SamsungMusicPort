.class public final Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/CyclePagerSnapHelper;
.super Landroid/support/v7/widget/PagerSnapHelper;
.source "SourceFile"


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;


# instance fields
.field private final b:Lkotlin/Lazy;

.field private final c:Lkotlin/Lazy;

.field private d:Landroid/view/View;

.field private final e:Landroid/content/Context;

.field private final f:Landroid/support/v7/widget/RecyclerView$LayoutManager;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/CyclePagerSnapHelper;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "verticalHelper"

    const-string v4, "getVerticalHelper()Landroid/support/v7/widget/OrientationHelper;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/CyclePagerSnapHelper;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "horizontalHelper"

    const-string v4, "getHorizontalHelper()Landroid/support/v7/widget/OrientationHelper;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/CyclePagerSnapHelper;->a:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/widget/RecyclerView$LayoutManager;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layoutManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Landroid/support/v7/widget/PagerSnapHelper;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/CyclePagerSnapHelper;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/CyclePagerSnapHelper;->f:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 21
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/CyclePagerSnapHelper$verticalHelper$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/CyclePagerSnapHelper$verticalHelper$2;-><init>(Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/CyclePagerSnapHelper;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/CyclePagerSnapHelper;->b:Lkotlin/Lazy;

    .line 24
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/CyclePagerSnapHelper$horizontalHelper$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/CyclePagerSnapHelper$horizontalHelper$2;-><init>(Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/CyclePagerSnapHelper;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/CyclePagerSnapHelper;->c:Lkotlin/Lazy;

    return-void
.end method

.method private final a(Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/view/View;Landroid/support/v7/widget/OrientationHelper;)I
    .locals 2

    .line 64
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p3, p2}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    add-int/2addr v0, p2

    .line 65
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getClipToPadding()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 66
    invoke-virtual {p3}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result p1

    invoke-virtual {p3}, Landroid/support/v7/widget/OrientationHelper;->getTotalSpace()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {p3}, Landroid/support/v7/widget/OrientationHelper;->getEnd()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    .line 124
    :goto_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    const-string p2, "SMUSIC-CyclePagerSnapHelper"

    .line 70
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Child center :"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Container center : "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    sub-int/2addr v0, p1

    return v0
.end method

.method private final a()Landroid/support/v7/widget/OrientationHelper;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/CyclePagerSnapHelper;->b:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/CyclePagerSnapHelper;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/OrientationHelper;

    return-object v0
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/CyclePagerSnapHelper;)Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/CyclePagerSnapHelper;->f:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    return-object p0
.end method

.method private final b()Landroid/support/v7/widget/OrientationHelper;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/CyclePagerSnapHelper;->c:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/CyclePagerSnapHelper;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/OrientationHelper;

    return-object v0
.end method


# virtual methods
.method public calculateDistanceToFinalSnap(Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I
    .locals 5

    const-string v0, "layoutManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "targetView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 47
    new-array v0, v0, [I

    .line 48
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 49
    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/CyclePagerSnapHelper;->d:Landroid/view/View;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/CyclePagerSnapHelper;->b()Landroid/support/v7/widget/OrientationHelper;

    move-result-object v3

    const-string v4, "horizontalHelper"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v1, v3}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/CyclePagerSnapHelper;->a(Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/view/View;Landroid/support/v7/widget/OrientationHelper;)I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    aput v1, v0, v2

    .line 53
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 54
    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/CyclePagerSnapHelper;->d:Landroid/view/View;

    if-eqz v1, :cond_2

    move-object p2, v1

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/CyclePagerSnapHelper;->a()Landroid/support/v7/widget/OrientationHelper;

    move-result-object v1

    const-string v3, "verticalHelper"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, v1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/CyclePagerSnapHelper;->a(Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/view/View;Landroid/support/v7/widget/OrientationHelper;)I

    move-result p1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    const/4 p2, 0x1

    aput p1, v0, p2

    .line 111
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    const-string p1, "SMUSIC-CyclePagerSnapHelper"

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Snap dist [0] : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", [1] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p2, v0, p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-object v0
.end method

.method protected createSnapScroller(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/LinearSmoothScroller;
    .locals 2

    const-string v0, "layoutManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    new-instance v0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/CyclePagerSnapHelper$createSnapScroller$1;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/CyclePagerSnapHelper;->e:Landroid/content/Context;

    invoke-direct {v0, p0, p1, v1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/CyclePagerSnapHelper$createSnapScroller$1;-><init>(Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/CyclePagerSnapHelper;Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/content/Context;)V

    check-cast v0, Landroid/support/v7/widget/LinearSmoothScroller;

    return-object v0
.end method

.method public findTargetSnapPosition(Landroid/support/v7/widget/RecyclerView$LayoutManager;II)I
    .locals 1

    .line 30
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/PagerSnapHelper;->findTargetSnapPosition(Landroid/support/v7/widget/RecyclerView$LayoutManager;II)I

    move-result p2

    const/4 p3, 0x0

    .line 31
    check-cast p3, Landroid/view/View;

    iput-object p3, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/CyclePagerSnapHelper;->d:Landroid/view/View;

    .line 32
    instance-of p3, p1, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;

    if-eqz p3, :cond_1

    .line 33
    move-object p3, p1

    check-cast p3, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;

    invoke-virtual {p3}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34
    invoke-virtual {p3}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->getItemCount()I

    move-result v0

    if-lt p2, v0, :cond_0

    .line 35
    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/CyclePagerSnapHelper;->d:Landroid/view/View;

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    if-gez p2, :cond_1

    .line 38
    invoke-virtual {p3}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->getItemCount()I

    move-result p2

    .line 98
    :cond_1
    :goto_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const-string p1, "SMUSIC-CyclePagerSnapHelper"

    .line 42
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Target snap position for album : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", view : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/CyclePagerSnapHelper;->d:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return p2
.end method
