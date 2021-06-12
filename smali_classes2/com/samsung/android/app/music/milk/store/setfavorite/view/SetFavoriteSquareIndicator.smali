.class public final Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteSquareIndicator;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;


# instance fields
.field private final b:Lkotlin/Lazy;

.field private final c:Lkotlin/Lazy;

.field private final d:Lkotlin/Lazy;

.field private final e:Lkotlin/Lazy;

.field private final f:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x5

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteSquareIndicator;

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

    const-class v2, Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteSquareIndicator;

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

    const-class v2, Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteSquareIndicator;

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

    const-class v2, Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteSquareIndicator;

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

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteSquareIndicator;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "cornerRadius"

    const-string v4, "getCornerRadius()I"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteSquareIndicator;->a:[Lkotlin/reflect/KProperty;

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

    sget-object v0, Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteSquareIndicator$notLikePaint$2;->INSTANCE:Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteSquareIndicator$notLikePaint$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p2, v0}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteSquareIndicator;->b:Lkotlin/Lazy;

    .line 22
    sget-object p2, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteSquareIndicator$likePaint$2;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteSquareIndicator$likePaint$2;-><init>(Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteSquareIndicator;Landroid/content/Context;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p2, v0}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteSquareIndicator;->c:Lkotlin/Lazy;

    .line 33
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteSquareIndicator$thinThickness$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteSquareIndicator$thinThickness$2;-><init>(Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteSquareIndicator;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteSquareIndicator;->d:Lkotlin/Lazy;

    .line 36
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteSquareIndicator$boldThickness$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteSquareIndicator$boldThickness$2;-><init>(Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteSquareIndicator;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteSquareIndicator;->e:Lkotlin/Lazy;

    .line 39
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteSquareIndicator$cornerRadius$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteSquareIndicator$cornerRadius$2;-><init>(Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteSquareIndicator;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteSquareIndicator;->f:Lkotlin/Lazy;

    const p1, 0x7f020504

    .line 44
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteSquareIndicator;->setBackgroundResource(I)V

    const/4 p1, 0x1

    .line 45
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteSquareIndicator;->setWillNotDraw(Z)V

    const/4 p1, 0x2

    const/4 p2, 0x0

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteSquareIndicator;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method private final getBoldThickness()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteSquareIndicator;->e:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteSquareIndicator;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private final getCornerRadius()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteSquareIndicator;->f:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteSquareIndicator;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

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

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteSquareIndicator;->c:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteSquareIndicator;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Paint;

    return-object v0
.end method

.method private final getNotLikePaint()Landroid/graphics/Paint;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteSquareIndicator;->b:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteSquareIndicator;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Paint;

    return-object v0
.end method

.method private final getThinThickness()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteSquareIndicator;->d:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteSquareIndicator;->a:[Lkotlin/reflect/KProperty;

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
    .locals 12

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteSquareIndicator;->isActivated()Z

    move-result v0

    .line 51
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteSquareIndicator;->isSelected()Z

    move-result v1

    .line 53
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteSquareIndicator;->getWidth()I

    move-result v2

    .line 54
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteSquareIndicator;->getHeight()I

    move-result v3

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    const/4 v5, 0x0

    const/4 v6, 0x0

    int-to-float v7, v2

    int-to-float v8, v3

    .line 57
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteSquareIndicator;->getNotLikePaint()Landroid/graphics/Paint;

    move-result-object v9

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_1

    .line 59
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteSquareIndicator;->getBoldThickness()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteSquareIndicator;->getThinThickness()I

    move-result v0

    :goto_0
    sub-int/2addr v2, v0

    sub-int/2addr v3, v0

    int-to-float v6, v0

    int-to-float v7, v2

    int-to-float v8, v3

    .line 69
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteSquareIndicator;->getCornerRadius()I

    move-result v0

    int-to-float v9, v0

    .line 70
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteSquareIndicator;->getCornerRadius()I

    move-result v0

    int-to-float v10, v0

    .line 71
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/setfavorite/view/SetFavoriteSquareIndicator;->getLikePaint()Landroid/graphics/Paint;

    move-result-object v11

    move-object v4, p1

    move v5, v6

    .line 64
    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    :goto_1
    return-void
.end method
