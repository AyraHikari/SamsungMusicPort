.class public final Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;
    }
.end annotation


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;


# instance fields
.field private final b:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;

.field private c:F

.field private final d:Lcom/samsung/android/app/musiclibrary/ui/util/PaintFieldUpdater;

.field private final e:Lcom/samsung/android/app/musiclibrary/ui/util/PaintFieldUpdater;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "strokeWidth"

    const-string v4, "getStrokeWidth()F"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "backgroundColor"

    const-string v4, "getBackgroundColor()I"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable;->a:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 23
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 61
    new-instance v0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;-><init>(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable;->b:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;

    const/high16 v0, 0x42480000    # 50.0f

    .line 63
    iput v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable;->c:F

    const/4 v0, 0x1

    .line 72
    new-array v1, v0, [Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable;->b:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;->e()Landroid/graphics/Paint;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x0

    .line 151
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 152
    array-length v4, v1

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/graphics/Paint;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->b([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 153
    new-instance v4, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$$special$$inlined$paintStrokeWidth$1;

    invoke-direct {v4, v1, v2, v2}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$$special$$inlined$paintStrokeWidth$1;-><init>(Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;)V

    check-cast v4, Lcom/samsung/android/app/musiclibrary/ui/util/PaintFieldUpdater;

    iput-object v4, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable;->d:Lcom/samsung/android/app/musiclibrary/ui/util/PaintFieldUpdater;

    .line 74
    new-array v0, v0, [Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable;->b:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;->f()Landroid/graphics/Paint;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, -0x1

    .line 155
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 156
    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Paint;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->b([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 157
    new-instance v2, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$$special$$inlined$paintColor$1;

    invoke-direct {v2, v0, v1, v1}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$$special$$inlined$paintColor$1;-><init>(Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;)V

    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/util/PaintFieldUpdater;

    iput-object v2, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable;->e:Lcom/samsung/android/app/musiclibrary/ui/util/PaintFieldUpdater;

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable;->b:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;->a()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable;->c:F

    goto :goto_0

    .line 68
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable;->c:F

    const/4 v1, 0x2

    int-to-float v1, v1

    mul-float v0, v0, v1

    iget-object v2, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable;->b:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;->a()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable;->b:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;->a()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr v0, v1

    goto :goto_0

    .line 69
    :cond_1
    iget v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable;->c:F

    :goto_0
    return v0
.end method

.method public final a(F)V
    .locals 0

    .line 63
    iput p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable;->c:F

    return-void
.end method

.method public final a(I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable;->e:Lcom/samsung/android/app/musiclibrary/ui/util/PaintFieldUpdater;

    sget-object v1, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p0, v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/util/PaintFieldUpdater;->a(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final b()F
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable;->d:Lcom/samsung/android/app/musiclibrary/ui/util/PaintFieldUpdater;

    sget-object v1, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/PaintFieldUpdater;->a(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method

.method public final b(F)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable;->d:Lcom/samsung/android/app/musiclibrary/ui/util/PaintFieldUpdater;

    sget-object v1, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p0, v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/util/PaintFieldUpdater;->a(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 77
    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable;->b:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;->a()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable;->b:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;->a(Landroid/graphics/Canvas;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable;->b:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;->g()I

    move-result v0

    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable;->b:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;->h()Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0
.end method

.method public getOpacity()I
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable;->b:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;->g()I

    move-result v0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x3

    :goto_0
    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable;->b:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;->a()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 89
    iget-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable;->b:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;->b()Lcom/samsung/android/app/musiclibrary/ui/util/PaintField;

    move-result-object p1

    const/4 v0, 0x1

    .line 148
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/util/PaintField;->b(Z)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable;->b:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;->a(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable;->b:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;->a(Landroid/graphics/ColorFilter;)V

    return-void
.end method
