.class public final Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;
    }
.end annotation


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;


# instance fields
.field private final b:Landroid/graphics/Rect;

.field private final c:Landroid/graphics/Paint;

.field private final d:Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;

.field private final e:Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;

.field private final f:Lcom/samsung/android/app/musiclibrary/ui/util/PaintFieldUpdater;

.field private g:I

.field private final h:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable;",
            "Landroid/graphics/Rect;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "backgroundColor"

    const-string v4, "getBackgroundColor()I"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable;->a:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lkotlin/jvm/functions/Function2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable;",
            "-",
            "Landroid/graphics/Rect;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "boundsChange"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable;->h:Lkotlin/jvm/functions/Function2;

    .line 246
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable;->b:Landroid/graphics/Rect;

    .line 247
    new-instance p2, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 248
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 249
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 250
    sget-object v1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 247
    iput-object p2, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable;->c:Landroid/graphics/Paint;

    .line 252
    new-instance p2, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;

    invoke-direct {p2, p1}, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable;->d:Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;

    .line 253
    new-instance p2, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;

    invoke-direct {p2, p1}, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable;->e:Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;

    .line 254
    new-array p1, v0, [Landroid/graphics/Paint;

    iget-object p2, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable;->c:Landroid/graphics/Paint;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    const/4 p2, -0x1

    .line 921
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 922
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/graphics/Paint;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->b([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 923
    new-instance v0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$$special$$inlined$paintColor$1;

    invoke-direct {v0, p1, p2, p2}, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$$special$$inlined$paintColor$1;-><init>(Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/util/PaintFieldUpdater;

    iput-object v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable;->f:Lcom/samsung/android/app/musiclibrary/ui/util/PaintFieldUpdater;

    const/16 p1, 0xff

    .line 271
    iput p1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable;->g:I

    return-void
.end method


# virtual methods
.method public final a()Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable;->d:Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;

    return-object v0
.end method

.method public final b()Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable;->e:Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 258
    iget-object v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable;->b:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable;->b:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 260
    iget-object v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable;->e:Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->a(Landroid/graphics/Canvas;)V

    .line 261
    iget-object v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable;->d:Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->a(Landroid/graphics/Canvas;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 273
    iget v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable;->g:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 278
    iget-object p1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable;->h:Lkotlin/jvm/functions/Function2;

    iget-object v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable;->b:Landroid/graphics/Rect;

    invoke-interface {p1, p0, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 265
    iput p1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable;->g:I

    .line 266
    iget-object v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable;->d:Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->c(I)V

    .line 267
    iget-object v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable;->e:Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->c(I)V

    .line 268
    iget-object p1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable;->c:Landroid/graphics/Paint;

    iget v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable;->g:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable;->d:Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->a(Landroid/graphics/ColorFilter;)V

    .line 285
    iget-object v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable;->e:Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->a(Landroid/graphics/ColorFilter;)V

    .line 286
    iget-object v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
