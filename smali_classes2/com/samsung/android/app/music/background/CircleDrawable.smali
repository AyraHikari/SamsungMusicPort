.class public final Lcom/samsung/android/app/music/background/CircleDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/background/CircleDrawable$Companion;
    }
.end annotation


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;

.field public static final b:Lcom/samsung/android/app/music/background/CircleDrawable$Companion;


# instance fields
.field private c:Landroid/graphics/Bitmap;

.field private final d:Landroid/graphics/Paint;

.field private e:I

.field private f:I

.field private final g:Landroid/graphics/Rect;

.field private final h:Landroid/graphics/Rect;

.field private final i:Lkotlin/Lazy;

.field private final j:Lkotlin/Lazy;

.field private final k:Lkotlin/Lazy;

.field private final l:Lkotlin/Lazy;

.field private final m:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x4

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/background/CircleDrawable;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "centerPaint"

    const-string v4, "getCenterPaint()Landroid/graphics/Paint;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/background/CircleDrawable;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "debugPaint"

    const-string v4, "getDebugPaint()Landroid/graphics/Paint;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/background/CircleDrawable;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "bitmapPaint"

    const-string v4, "getBitmapPaint()Landroid/graphics/Paint;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/background/CircleDrawable;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "targetPaint"

    const-string v4, "getTargetPaint()Landroid/graphics/Paint;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/music/background/CircleDrawable;->a:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/samsung/android/app/music/background/CircleDrawable$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/background/CircleDrawable$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/background/CircleDrawable;->b:Lcom/samsung/android/app/music/background/CircleDrawable$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/background/CircleDrawable;->m:Landroid/content/Context;

    .line 23
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 24
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 25
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 23
    iput-object p1, p0, Lcom/samsung/android/app/music/background/CircleDrawable;->d:Landroid/graphics/Paint;

    const/16 p1, 0xff

    .line 27
    iput p1, p0, Lcom/samsung/android/app/music/background/CircleDrawable;->e:I

    const/4 p1, -0x1

    .line 28
    iput p1, p0, Lcom/samsung/android/app/music/background/CircleDrawable;->f:I

    .line 29
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/background/CircleDrawable;->g:Landroid/graphics/Rect;

    .line 30
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/background/CircleDrawable;->h:Landroid/graphics/Rect;

    .line 31
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    sget-object v0, Lcom/samsung/android/app/music/background/CircleDrawable$centerPaint$2;->INSTANCE:Lcom/samsung/android/app/music/background/CircleDrawable$centerPaint$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v0}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/background/CircleDrawable;->i:Lkotlin/Lazy;

    .line 34
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    sget-object v0, Lcom/samsung/android/app/music/background/CircleDrawable$debugPaint$2;->INSTANCE:Lcom/samsung/android/app/music/background/CircleDrawable$debugPaint$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v0}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/background/CircleDrawable;->j:Lkotlin/Lazy;

    .line 43
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    sget-object v0, Lcom/samsung/android/app/music/background/CircleDrawable$bitmapPaint$2;->INSTANCE:Lcom/samsung/android/app/music/background/CircleDrawable$bitmapPaint$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v0}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/background/CircleDrawable;->k:Lkotlin/Lazy;

    .line 52
    sget-object p1, Lcom/samsung/android/app/music/background/CircleDrawable$targetPaint$2;->INSTANCE:Lcom/samsung/android/app/music/background/CircleDrawable$targetPaint$2;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/background/CircleDrawable;->l:Lkotlin/Lazy;

    .line 177
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 63
    sget-object p1, Lcom/samsung/android/app/music/background/cache/CircleDrawableCache;->a:Lcom/samsung/android/app/music/background/cache/CircleDrawableCache;

    iget-object v2, p0, Lcom/samsung/android/app/music/background/CircleDrawable;->m:Landroid/content/Context;

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/music/background/cache/CircleDrawableCache;->b(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/background/CircleDrawable;->c:Landroid/graphics/Bitmap;

    .line 64
    iget-object p1, p0, Lcom/samsung/android/app/music/background/CircleDrawable;->g:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/samsung/android/app/music/background/CircleDrawable;->c:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    const-string v3, "bitmap"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/app/music/background/CircleDrawable;->c:Landroid/graphics/Bitmap;

    if-nez v3, :cond_1

    const-string v4, "bitmap"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 65
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 179
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-string p1, "SMUSIC-CircleDrawable"

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const-string v4, "Thread.currentThread()"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]\t "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/concurrent/TimeUnitExtensionKt;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ms\t\tUi "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "CircleDrawable"

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 180
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 2

    const/4 v0, 0x2

    int-to-float v0, v0

    mul-float p1, p1, v0

    .line 137
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    const/4 v1, 0x0

    invoke-super {p0, v1, v1, v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 86
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/music/background/CircleDrawable;->c:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    const-string v2, "bitmap"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/background/CircleDrawable;->g:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/samsung/android/app/music/background/CircleDrawable;->h:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/samsung/android/app/music/background/CircleDrawable;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 93
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw v1
.end method

.method public getAlpha()I
    .locals 1

    .line 120
    iget v0, p0, Lcom/samsung/android/app/music/background/CircleDrawable;->e:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 3

    const-string v0, "bounds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 75
    iget-object v0, p0, Lcom/samsung/android/app/music/background/CircleDrawable;->h:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 116
    iput p1, p0, Lcom/samsung/android/app/music/background/CircleDrawable;->e:I

    .line 117
    iget-object v0, p0, Lcom/samsung/android/app/music/background/CircleDrawable;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    const-string v0, "colorFilter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/samsung/android/app/music/background/CircleDrawable;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setTint(I)V
    .locals 3

    .line 124
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 125
    iput p1, p0, Lcom/samsung/android/app/music/background/CircleDrawable;->f:I

    .line 126
    iget-object v0, p0, Lcom/samsung/android/app/music/background/CircleDrawable;->d:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, p1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    check-cast v1, Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
