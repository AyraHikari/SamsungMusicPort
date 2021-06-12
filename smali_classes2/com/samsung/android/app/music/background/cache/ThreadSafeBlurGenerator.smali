.class public final Lcom/samsung/android/app/music/background/cache/ThreadSafeBlurGenerator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/background/cache/ThreadSafeBlurGenerator$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/background/cache/ThreadSafeBlurGenerator$Companion;

# The value of this static final field might be set in the static constructor
.field private static final j:I = 0x19


# instance fields
.field private b:Landroid/renderscript/RenderScript;

.field private c:Landroid/renderscript/ScriptIntrinsicBlur;

.field private final d:Lcom/samsung/android/app/music/background/cache/ThreadSafeBlurGenerator$lock$1;

.field private volatile e:Z

.field private f:Landroid/graphics/Bitmap;

.field private final g:Landroid/graphics/Paint;

.field private final h:Landroid/graphics/Canvas;

.field private i:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/background/cache/ThreadSafeBlurGenerator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/background/cache/ThreadSafeBlurGenerator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/background/cache/ThreadSafeBlurGenerator;->a:Lcom/samsung/android/app/music/background/cache/ThreadSafeBlurGenerator$Companion;

    const/16 v0, 0x19

    .line 78
    sput v0, Lcom/samsung/android/app/music/background/cache/ThreadSafeBlurGenerator;->j:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/background/cache/ThreadSafeBlurGenerator;->i:Landroid/content/Context;

    .line 14
    iget-object p1, p0, Lcom/samsung/android/app/music/background/cache/ThreadSafeBlurGenerator;->i:Landroid/content/Context;

    invoke-static {p1}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object p1

    const-string v0, "RenderScript.create(context)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/background/cache/ThreadSafeBlurGenerator;->b:Landroid/renderscript/RenderScript;

    .line 16
    iget-object p1, p0, Lcom/samsung/android/app/music/background/cache/ThreadSafeBlurGenerator;->b:Landroid/renderscript/RenderScript;

    iget-object v0, p0, Lcom/samsung/android/app/music/background/cache/ThreadSafeBlurGenerator;->b:Landroid/renderscript/RenderScript;

    invoke-static {v0}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/background/cache/ThreadSafeBlurGenerator;->c:Landroid/renderscript/ScriptIntrinsicBlur;

    .line 18
    new-instance p1, Lcom/samsung/android/app/music/background/cache/ThreadSafeBlurGenerator$lock$1;

    invoke-direct {p1}, Lcom/samsung/android/app/music/background/cache/ThreadSafeBlurGenerator$lock$1;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/background/cache/ThreadSafeBlurGenerator;->d:Lcom/samsung/android/app/music/background/cache/ThreadSafeBlurGenerator$lock$1;

    const/4 p1, 0x1

    .line 21
    iput-boolean p1, p0, Lcom/samsung/android/app/music/background/cache/ThreadSafeBlurGenerator;->e:Z

    .line 51
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v0, 0x64

    invoke-static {v0, v0, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/background/cache/ThreadSafeBlurGenerator;->f:Landroid/graphics/Bitmap;

    .line 53
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/background/cache/ThreadSafeBlurGenerator;->g:Landroid/graphics/Paint;

    .line 55
    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1}, Landroid/graphics/Canvas;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/background/cache/ThreadSafeBlurGenerator;->h:Landroid/graphics/Canvas;

    return-void
.end method

.method private final a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4

    .line 58
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int v0, v0, v1

    mul-int/lit8 v0, v0, 0x4

    .line 59
    iget-object v1, p0, Lcom/samsung/android/app/music/background/cache/ThreadSafeBlurGenerator;->f:Landroid/graphics/Bitmap;

    const-string v2, "bufferBitmap"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v1

    if-lt v1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/background/cache/ThreadSafeBlurGenerator;->f:Landroid/graphics/Bitmap;

    const-string v1, "bufferBitmap"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 60
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/background/cache/ThreadSafeBlurGenerator;->f:Landroid/graphics/Bitmap;

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/background/cache/ThreadSafeBlurGenerator;->f:Landroid/graphics/Bitmap;

    const-string v1, "bufferBitmap"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/music/background/cache/ThreadSafeBlurGenerator;->f:Landroid/graphics/Bitmap;

    const-string v1, "bufferBitmap"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 63
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/background/cache/ThreadSafeBlurGenerator;->f:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->reconfigure(IILandroid/graphics/Bitmap$Config;)V

    .line 65
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/music/background/cache/ThreadSafeBlurGenerator;->h:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/samsung/android/app/music/background/cache/ThreadSafeBlurGenerator;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/music/background/cache/ThreadSafeBlurGenerator;->h:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/samsung/android/app/music/background/cache/ThreadSafeBlurGenerator;->g:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 67
    iget-object p1, p0, Lcom/samsung/android/app/music/background/cache/ThreadSafeBlurGenerator;->f:Landroid/graphics/Bitmap;

    const-string v0, "bufferBitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 5

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/samsung/android/app/music/background/cache/ThreadSafeBlurGenerator;->d:Lcom/samsung/android/app/music/background/cache/ThreadSafeBlurGenerator$lock$1;

    monitor-enter v0

    .line 24
    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/app/music/background/cache/ThreadSafeBlurGenerator;->e:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    int-to-float v1, v1

    cmpg-float v1, p2, v1

    if-ltz v1, :cond_1

    .line 27
    sget v1, Lcom/samsung/android/app/music/background/cache/ThreadSafeBlurGenerator;->j:I

    int-to-float v1, v1

    cmpl-float v1, p2, v1

    if-gtz v1, :cond_1

    .line 30
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v1, v2, :cond_0

    move-object v1, p1

    goto :goto_0

    .line 33
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/background/cache/ThreadSafeBlurGenerator;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 34
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, p1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 36
    iget-object v2, p0, Lcom/samsung/android/app/music/background/cache/ThreadSafeBlurGenerator;->b:Landroid/renderscript/RenderScript;

    .line 38
    sget-object v3, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const/4 v4, 0x1

    .line 35
    invoke-static {v2, v1, v3, v4}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v1

    .line 41
    iget-object v2, p0, Lcom/samsung/android/app/music/background/cache/ThreadSafeBlurGenerator;->b:Landroid/renderscript/RenderScript;

    const-string v3, "input"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v2

    .line 42
    iget-object v3, p0, Lcom/samsung/android/app/music/background/cache/ThreadSafeBlurGenerator;->c:Landroid/renderscript/ScriptIntrinsicBlur;

    invoke-virtual {v3, p2}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 43
    iget-object p2, p0, Lcom/samsung/android/app/music/background/cache/ThreadSafeBlurGenerator;->c:Landroid/renderscript/ScriptIntrinsicBlur;

    invoke-virtual {p2, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 44
    iget-object p2, p0, Lcom/samsung/android/app/music/background/cache/ThreadSafeBlurGenerator;->c:Landroid/renderscript/ScriptIntrinsicBlur;

    invoke-virtual {p2, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 45
    invoke-virtual {v2, p1}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 46
    invoke-virtual {v1}, Landroid/renderscript/Allocation;->destroy()V

    .line 47
    invoke-virtual {v2}, Landroid/renderscript/Allocation;->destroy()V

    const-string p2, "result"

    .line 48
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p1

    .line 28
    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid radius "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ", max radius is: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p2, Lcom/samsung/android/app/music/background/cache/ThreadSafeBlurGenerator;->j:I

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 25
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Already released"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 23
    monitor-exit v0

    throw p1
.end method

.method public close()V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/samsung/android/app/music/background/cache/ThreadSafeBlurGenerator;->d:Lcom/samsung/android/app/music/background/cache/ThreadSafeBlurGenerator$lock$1;

    monitor-enter v0

    const/4 v1, 0x0

    .line 71
    :try_start_0
    iput-boolean v1, p0, Lcom/samsung/android/app/music/background/cache/ThreadSafeBlurGenerator;->e:Z

    .line 72
    iget-object v1, p0, Lcom/samsung/android/app/music/background/cache/ThreadSafeBlurGenerator;->c:Landroid/renderscript/ScriptIntrinsicBlur;

    invoke-virtual {v1}, Landroid/renderscript/ScriptIntrinsicBlur;->destroy()V

    .line 73
    iget-object v1, p0, Lcom/samsung/android/app/music/background/cache/ThreadSafeBlurGenerator;->b:Landroid/renderscript/RenderScript;

    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->destroy()V

    .line 74
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
