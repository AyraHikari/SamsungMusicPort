.class public final Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteCircleIndicator;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;


# instance fields
.field private final b:Lkotlin/Lazy;

.field private final c:Lkotlin/Lazy;

.field private final d:Lkotlin/Lazy;

.field private final e:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x4

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteCircleIndicator;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "notLikePaint"

    const-string v4, "getNotLikePaint()Landroid/graphics/Paint;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteCircleIndicator;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "likePaint"

    const-string v4, "getLikePaint()Landroid/graphics/Paint;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteCircleIndicator;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "thinThickness"

    const-string v4, "getThinThickness()I"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteCircleIndicator;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "boldThickness"

    const-string v4, "getBoldThickness()I"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteCircleIndicator;->a:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    sget-object p2, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    sget-object v0, Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteCircleIndicator$notLikePaint$2;->INSTANCE:Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteCircleIndicator$notLikePaint$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p2, v0}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteCircleIndicator;->b:Lkotlin/Lazy;

    .line 22
    sget-object p2, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteCircleIndicator$likePaint$2;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteCircleIndicator$likePaint$2;-><init>(Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteCircleIndicator;Landroid/content/Context;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p2, v0}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteCircleIndicator;->c:Lkotlin/Lazy;

    .line 34
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteCircleIndicator$thinThickness$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteCircleIndicator$thinThickness$2;-><init>(Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteCircleIndicator;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteCircleIndicator;->d:Lkotlin/Lazy;

    .line 37
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteCircleIndicator$boldThickness$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteCircleIndicator$boldThickness$2;-><init>(Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteCircleIndicator;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteCircleIndicator;->e:Lkotlin/Lazy;

    const p1, 0x7f020503

    .line 42
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteCircleIndicator;->setBackgroundResource(I)V

    const/4 p1, 0x1

    .line 43
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteCircleIndicator;->setWillNotDraw(Z)V

    const/4 p1, 0x2

    const/4 p2, 0x0

    .line 44
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteCircleIndicator;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method private final getBoldThickness()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteCircleIndicator;->e:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteCircleIndicator;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private final getLikePaint()Landroid/graphics/Paint;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteCircleIndicator;->c:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteCircleIndicator;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Paint;

    return-object v0
.end method

.method private final getNotLikePaint()Landroid/graphics/Paint;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteCircleIndicator;->b:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteCircleIndicator;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Paint;

    return-object v0
.end method

.method private final getThinThickness()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteCircleIndicator;->d:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteCircleIndicator;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteCircleIndicator;->isActivated()Z

    move-result v0

    .line 49
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteCircleIndicator;->isSelected()Z

    move-result v1

    .line 51
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteCircleIndicator;->getWidth()I

    move-result v2

    .line 52
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteCircleIndicator;->getHeight()I

    move-result v3

    int-to-float v4, v2

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    int-to-float v6, v3

    div-float/2addr v6, v5

    .line 57
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 60
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteCircleIndicator;->getNotLikePaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p1, v4, v6, v2, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_1

    .line 62
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteCircleIndicator;->getBoldThickness()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteCircleIndicator;->getThinThickness()I

    move-result v0

    :goto_0
    int-to-float v0, v0

    sub-float/2addr v2, v0

    .line 63
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteCircleIndicator;->getLikePaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p1, v4, v6, v2, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_1
    return-void
.end method
