.class public final Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$viewMetrics$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;-><init>(Landroid/view/View;Lcom/samsung/android/app/music/activity/BaseServiceActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;


# instance fields
.field final synthetic b:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;

.field private c:I

.field private d:I

.field private final e:Lkotlin/Lazy;

.field private final f:Lkotlin/Lazy;

.field private final g:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$viewMetrics$1;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "nonPlaybackAlbumTopMargin"

    const-string v4, "getNonPlaybackAlbumTopMargin()I"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$viewMetrics$1;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "nonPlaybackTitleTopMargin"

    const-string v4, "getNonPlaybackTitleTopMargin()I"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$viewMetrics$1;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "playbackTitleTopMargin"

    const-string v4, "getPlaybackTitleTopMargin()I"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$viewMetrics$1;->a:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 312
    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$viewMetrics$1;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 317
    invoke-static {p1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->h(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->u(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    invoke-static {p1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->t(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;)Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f100427

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    goto :goto_0

    .line 320
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$viewMetrics$1;->b()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->t(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;)Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "res"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const v3, 0x7f10002a

    .line 854
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 855
    invoke-virtual {v2, v3, v4, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 856
    invoke-virtual {v4}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    mul-float v0, v0, v2

    float-to-int v0, v0

    .line 317
    :goto_0
    iput v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$viewMetrics$1;->c:I

    .line 322
    invoke-static {p1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->h(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 323
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$viewMetrics$1;->c()I

    move-result p1

    goto :goto_1

    .line 326
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$viewMetrics$1;->b()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->t(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;)Landroid/content/res/Resources;

    move-result-object p1

    const-string v2, "res"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f100025

    .line 857
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 858
    invoke-virtual {p1, v2, v3, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 859
    invoke-virtual {v3}, Landroid/util/TypedValue;->getFloat()F

    move-result p1

    mul-float v0, v0, p1

    float-to-int p1, v0

    .line 327
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$viewMetrics$1;->a()I

    move-result v0

    .line 325
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 322
    :goto_1
    iput p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$viewMetrics$1;->d:I

    .line 332
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$viewMetrics$1$nonPlaybackAlbumTopMargin$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$viewMetrics$1$nonPlaybackAlbumTopMargin$2;-><init>(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$viewMetrics$1;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v0}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$viewMetrics$1;->e:Lkotlin/Lazy;

    .line 335
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$viewMetrics$1$nonPlaybackTitleTopMargin$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$viewMetrics$1$nonPlaybackTitleTopMargin$2;-><init>(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$viewMetrics$1;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v0}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$viewMetrics$1;->f:Lkotlin/Lazy;

    .line 338
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$viewMetrics$1$playbackTitleTopMargin$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$viewMetrics$1$playbackTitleTopMargin$2;-><init>(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$viewMetrics$1;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v0}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$viewMetrics$1;->g:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 5

    .line 314
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$viewMetrics$1;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->s(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;)Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->getWindowHeight()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$viewMetrics$1;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;

    invoke-static {v1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->t(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;)Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100030

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 315
    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$viewMetrics$1;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;

    invoke-static {v1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->t(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;)Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "res"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 851
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    const v3, 0x7f100029

    const/4 v4, 0x1

    .line 852
    invoke-virtual {v1, v3, v2, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 853
    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public a(Z)I
    .locals 0

    if-eqz p1, :cond_0

    .line 343
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$viewMetrics$1;->e()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$viewMetrics$1;->c()I

    move-result p1

    :goto_0
    return p1
.end method

.method public a(I)V
    .locals 0

    .line 317
    iput p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$viewMetrics$1;->c:I

    return-void
.end method

.method public b()I
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$viewMetrics$1;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->a()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getWidth()I

    move-result v0

    return v0
.end method

.method public b(Z)I
    .locals 0

    if-nez p1, :cond_1

    .line 346
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$viewMetrics$1;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->h(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$viewMetrics$1;->g()I

    move-result p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public b(I)V
    .locals 0

    .line 322
    iput p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$viewMetrics$1;->d:I

    return-void
.end method

.method public c()I
    .locals 1

    .line 317
    iget v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$viewMetrics$1;->c:I

    return v0
.end method

.method public c(Z)I
    .locals 1

    .line 350
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$viewMetrics$1;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->h(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 351
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$viewMetrics$1;->i()I

    move-result p1

    goto :goto_0

    .line 352
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$viewMetrics$1;->h()I

    move-result p1

    :goto_0
    return p1
.end method

.method public d()I
    .locals 1

    .line 322
    iget v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$viewMetrics$1;->d:I

    return v0
.end method

.method public e()I
    .locals 1

    .line 330
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$viewMetrics$1;->d()I

    move-result v0

    return v0
.end method

.method public f()I
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$viewMetrics$1;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->i(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$viewMetrics$1;->a(Z)I

    move-result v0

    return v0
.end method

.method public g()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$viewMetrics$1;->e:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$viewMetrics$1;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public h()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$viewMetrics$1;->f:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$viewMetrics$1;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public i()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$viewMetrics$1;->g:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$viewMetrics$1;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GestureViewMetrics(gestureView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$viewMetrics$1;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$viewMetrics$1;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", nonPlaybackAlbumSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$viewMetrics$1;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", playbackAlbumSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$viewMetrics$1;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
