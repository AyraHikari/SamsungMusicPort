.class final Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "State"
.end annotation


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;


# instance fields
.field final synthetic b:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable;

.field private final c:Landroid/graphics/RectF;

.field private final d:Lcom/samsung/android/app/musiclibrary/ui/util/PaintField;

.field private final e:Lcom/samsung/android/app/musiclibrary/ui/util/IntReadWriteProperty;

.field private final f:Lcom/samsung/android/app/musiclibrary/ui/util/IntReadWriteProperty;

.field private final g:Lkotlin/properties/ReadOnlyProperty;

.field private final h:Landroid/graphics/Paint;

.field private final i:Lcom/samsung/android/app/musiclibrary/ui/util/PaintFieldUpdater;

.field private final j:Lcom/samsung/android/app/musiclibrary/ui/util/PaintFieldUpdater;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x5

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "colorA"

    const-string v4, "getColorA()I"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "colorB"

    const-string v4, "getColorB()I"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "strokePaint"

    const-string v4, "getStrokePaint()Landroid/graphics/Paint;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "alpha"

    const-string v4, "getAlpha()I"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "colorFilter"

    const-string v4, "getColorFilter()Landroid/graphics/ColorFilter;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;->a:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 24
    iput-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;->b:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;->c:Landroid/graphics/RectF;

    .line 148
    new-instance p1, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State$$special$$inlined$calculatedPaintField$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State$$special$$inlined$calculatedPaintField$1;-><init>(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;)V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/util/PaintField;

    iput-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;->d:Lcom/samsung/android/app/musiclibrary/ui/util/PaintField;

    const-wide v0, 0xff5571daL

    long-to-int p1, v0

    .line 149
    new-instance v0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State$$special$$inlined$intObservableWithInitial$1;

    invoke-direct {v0, p1, p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State$$special$$inlined$intObservableWithInitial$1;-><init>(ILcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/util/IntReadWriteProperty;

    iput-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;->e:Lcom/samsung/android/app/musiclibrary/ui/util/IntReadWriteProperty;

    const-wide v0, 0xff9ae4dbL

    long-to-int p1, v0

    .line 150
    new-instance v0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State$$special$$inlined$intObservableWithInitial$2;

    invoke-direct {v0, p1, p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State$$special$$inlined$intObservableWithInitial$2;-><init>(ILcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/util/IntReadWriteProperty;

    iput-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;->f:Lcom/samsung/android/app/musiclibrary/ui/util/IntReadWriteProperty;

    const/4 p1, 0x1

    .line 36
    new-array v0, p1, [Lcom/samsung/android/app/musiclibrary/ui/util/PaintField;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;->d:Lcom/samsung/android/app/musiclibrary/ui/util/PaintField;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 151
    new-instance v1, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State$$special$$inlined$paintDelegate$1;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State$$special$$inlined$paintDelegate$1;-><init>([Lcom/samsung/android/app/musiclibrary/ui/util/PaintField;)V

    check-cast v1, Lkotlin/properties/ReadOnlyProperty;

    iput-object v1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;->g:Lkotlin/properties/ReadOnlyProperty;

    .line 44
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, p1}, Landroid/graphics/Paint;-><init>(I)V

    .line 45
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 46
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 47
    sget-object v1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 44
    iput-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;->h:Landroid/graphics/Paint;

    const/4 v0, 0x2

    .line 49
    new-array v1, v0, [Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;->e()Landroid/graphics/Paint;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v3, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;->h:Landroid/graphics/Paint;

    aput-object v3, v1, p1

    const/16 v3, 0xff

    invoke-static {v3, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/GraphicsUtilsKt;->a(I[Landroid/graphics/Paint;)Lcom/samsung/android/app/musiclibrary/ui/util/PaintFieldUpdater;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;->i:Lcom/samsung/android/app/musiclibrary/ui/util/PaintFieldUpdater;

    .line 50
    new-array v0, v0, [Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;->e()Landroid/graphics/Paint;

    move-result-object v1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;->h:Landroid/graphics/Paint;

    aput-object v1, v0, p1

    .line 154
    array-length p1, v0

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/graphics/Paint;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->b([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 155
    new-instance v0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State$$special$$inlined$paintColorFilter$1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State$$special$$inlined$paintColorFilter$1;-><init>(Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/util/PaintFieldUpdater;

    iput-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;->j:Lcom/samsung/android/app/musiclibrary/ui/util/PaintFieldUpdater;

    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/RectF;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;->c:Landroid/graphics/RectF;

    return-object v0
.end method

.method public final a(I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;->i:Lcom/samsung/android/app/musiclibrary/ui/util/PaintFieldUpdater;

    sget-object v1, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p0, v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/util/PaintFieldUpdater;->a(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Landroid/graphics/Canvas;)V
    .locals 11

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;->b:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable;->b()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v0, v0, v1

    .line 53
    iget-object v2, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;->b:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable;->b()F

    move-result v2

    mul-float v2, v2, v1

    .line 55
    iget-object v1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;->c:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    add-float v4, v1, v2

    iget-object v1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;->c:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    add-float v5, v1, v2

    iget-object v1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;->c:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float v6, v1, v2

    iget-object v1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;->c:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float v7, v1, v2

    iget-object v1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;->b:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable;->a()F

    move-result v8

    iget-object v1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;->b:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable;->a()F

    move-result v9

    iget-object v10, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;->h:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 57
    iget-object v1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;->c:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    add-float v3, v1, v0

    iget-object v1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;->c:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    add-float v4, v1, v0

    iget-object v1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;->c:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float v5, v1, v0

    iget-object v1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;->c:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float v6, v1, v0

    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;->b:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable;->a()F

    move-result v7

    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;->b:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable;->a()F

    move-result v8

    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;->e()Landroid/graphics/Paint;

    move-result-object v9

    move-object v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final a(Landroid/graphics/ColorFilter;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;->j:Lcom/samsung/android/app/musiclibrary/ui/util/PaintFieldUpdater;

    sget-object v1, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/util/PaintFieldUpdater;->a(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final b()Lcom/samsung/android/app/musiclibrary/ui/util/PaintField;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;->d:Lcom/samsung/android/app/musiclibrary/ui/util/PaintField;

    return-object v0
.end method

.method public final c()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;->e:Lcom/samsung/android/app/musiclibrary/ui/util/IntReadWriteProperty;

    sget-object v1, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/IntReadWriteProperty;->a(Ljava/lang/Object;Lkotlin/reflect/KProperty;)I

    move-result v0

    return v0
.end method

.method public final d()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;->f:Lcom/samsung/android/app/musiclibrary/ui/util/IntReadWriteProperty;

    sget-object v1, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/IntReadWriteProperty;->a(Ljava/lang/Object;Lkotlin/reflect/KProperty;)I

    move-result v0

    return v0
.end method

.method public final e()Landroid/graphics/Paint;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;->g:Lkotlin/properties/ReadOnlyProperty;

    sget-object v1, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadOnlyProperty;->b(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Paint;

    return-object v0
.end method

.method public final f()Landroid/graphics/Paint;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;->h:Landroid/graphics/Paint;

    return-object v0
.end method

.method public final g()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;->i:Lcom/samsung/android/app/musiclibrary/ui/util/PaintFieldUpdater;

    sget-object v1, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/PaintFieldUpdater;->a(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final h()Landroid/graphics/ColorFilter;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;->j:Lcom/samsung/android/app/musiclibrary/ui/util/PaintFieldUpdater;

    sget-object v1, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/PaintFieldUpdater;->a(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/ColorFilter;

    return-object v0
.end method
