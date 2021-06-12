.class public final Lcom/samsung/android/app/music/background/cache/CircleDrawableCache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/background/cache/CircleDrawableCache$CircleDrawableCacheLock;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/background/cache/CircleDrawableCache;

.field private static b:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lcom/samsung/android/app/music/background/cache/CircleDrawableCache;

    invoke-direct {v0}, Lcom/samsung/android/app/music/background/cache/CircleDrawableCache;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/background/cache/CircleDrawableCache;->a:Lcom/samsung/android/app/music/background/cache/CircleDrawableCache;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/background/cache/CircleDrawableCache;)Landroid/graphics/Bitmap;
    .locals 1

    .line 12
    sget-object p0, Lcom/samsung/android/app/music/background/cache/CircleDrawableCache;->b:Landroid/graphics/Bitmap;

    if-nez p0, :cond_0

    const-string v0, "bitmap"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/background/cache/CircleDrawableCache;Landroid/content/Context;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/background/cache/CircleDrawableCache;->c(Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/background/cache/CircleDrawableCache;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 12
    sput-object p1, Lcom/samsung/android/app/music/background/cache/CircleDrawableCache;->b:Landroid/graphics/Bitmap;

    return-void
.end method

.method private final c(Landroid/content/Context;)V
    .locals 2

    .line 31
    sget-object v0, Lcom/samsung/android/app/music/background/cache/CircleDrawableCache$CircleDrawableCacheLock;->a:Lcom/samsung/android/app/music/background/cache/CircleDrawableCache$CircleDrawableCacheLock;

    monitor-enter v0

    .line 32
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/music/background/cache/CircleDrawableCache;->b:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 33
    sget-object p1, Lcom/samsung/android/app/music/background/cache/CircleDrawableCache;->a:Lcom/samsung/android/app/music/background/cache/CircleDrawableCache;

    .line 109
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "SMUSIC-CircleDrawableCache"

    const-string v1, "bitmap already initialized."

    .line 33
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 35
    :cond_1
    sget-object v1, Lcom/samsung/android/app/music/background/cache/CircleDrawableCache;->a:Lcom/samsung/android/app/music/background/cache/CircleDrawableCache;

    invoke-direct {v1, p1}, Lcom/samsung/android/app/music/background/cache/CircleDrawableCache;->d(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    sput-object p1, Lcom/samsung/android/app/music/background/cache/CircleDrawableCache;->b:Landroid/graphics/Bitmap;

    .line 37
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method private final d(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 19

    .line 140
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 142
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 49
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "radial_gradient_dithered_circle_2048.gm"

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 144
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long/2addr v5, v2

    const-string v2, "SMUSIC-CircleDrawableCache"

    .line 147
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v7, 0x5b

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    const-string v9, "Thread.currentThread()"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "]\t "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5, v6}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/concurrent/TimeUnitExtensionKt;->a(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ms\t\tUi "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "load file time"

    .line 48
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 145
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    check-cast v4, Ljava/io/Closeable;

    const/4 v2, 0x0

    .line 50
    move-object v3, v2

    check-cast v3, Ljava/lang/Throwable;

    :try_start_0
    move-object v5, v4

    check-cast v5, Ljava/io/InputStream;

    .line 51
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v8, 0x0

    .line 52
    iput-boolean v8, v6, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 53
    sget-object v9, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 51
    invoke-static {v5, v2, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 55
    sget-object v5, Lcom/samsung/android/app/music/background/cache/CircleDrawableCache;->a:Lcom/samsung/android/app/music/background/cache/CircleDrawableCache;

    .line 152
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    .line 56
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    mul-int v9, v9, v10

    new-array v9, v9, [I

    const/4 v12, 0x0

    .line 57
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    move-object v10, v2

    move-object v11, v9

    invoke-virtual/range {v10 .. v17}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 58
    array-length v10, v9

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v10, :cond_0

    const v12, 0xffffff

    .line 59
    aget v13, v9, v11

    shl-int/lit8 v13, v13, 0x8

    const/high16 v14, -0x1000000

    and-int/2addr v13, v14

    or-int/2addr v12, v13

    aput v12, v9, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 154
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    const/4 v12, 0x0

    sub-long/2addr v10, v5

    const-string v5, "SMUSIC-CircleDrawableCache"

    .line 157
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v12

    const-string v13, "Thread.currentThread()"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "]\t "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10, v11}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/concurrent/TimeUnitExtensionKt;->a(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " ms\t\tUi "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "load pixel time"

    .line 55
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 155
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    sget-object v5, Lcom/samsung/android/app/music/background/cache/CircleDrawableCache;->a:Lcom/samsung/android/app/music/background/cache/CircleDrawableCache;

    .line 163
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    .line 65
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v11, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v15

    const/4 v12, 0x0

    .line 66
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    const/4 v14, 0x0

    const/16 v16, 0x0

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    move-object v10, v15

    move-object v11, v9

    move-object v9, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    invoke-virtual/range {v10 .. v17}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 67
    sget-object v10, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 165
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    const/4 v12, 0x0

    sub-long/2addr v10, v5

    const-string v5, "SMUSIC-CircleDrawableCache"

    .line 168
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v12

    const-string v13, "Thread.currentThread()"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "]\t "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10, v11}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/concurrent/TimeUnitExtensionKt;->a(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " ms\t\tUi "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "save pixel time"

    .line 64
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 166
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    sget-object v5, Lcom/samsung/android/app/music/background/cache/CircleDrawableCache;->a:Lcom/samsung/android/app/music/background/cache/CircleDrawableCache;

    .line 174
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    .line 71
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 70
    invoke-static {v9, v10, v2, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 176
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    const/4 v10, 0x0

    sub-long/2addr v8, v5

    const-string v5, "SMUSIC-CircleDrawableCache"

    .line 179
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    const-string v11, "Thread.currentThread()"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "]\t "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8, v9}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/concurrent/TimeUnitExtensionKt;->a(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " ms\t\tUi "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "make latest time"

    .line 69
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 177
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    invoke-static {v4, v3}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 183
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long/2addr v3, v0

    const-string v0, "SMUSIC-CircleDrawableCache"

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    const-string v6, "Thread.currentThread()"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]\t "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/concurrent/TimeUnitExtensionKt;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ms\t\tUi "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "createCircleBitmap"

    .line 47
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 184
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    sget-object v0, Lcom/samsung/android/app/music/background/cache/CircleDrawableCache;->a:Lcom/samsung/android/app/music/background/cache/CircleDrawableCache;

    .line 232
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "SMUSIC-CircleDrawableCache"

    const-string v1, "made circle drawable"

    .line 77
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :goto_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    const-string v0, "logTsp({ \"createCircleBi\u2026cle drawable\" }\n        }"

    .line 76
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v3, v0

    .line 50
    :try_start_1
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    invoke-static {v4, v3}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "SMUSIC-CircleDrawableCache"

    const-string v1, "buildBitmap"

    .line 23
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    :goto_0
    sget-object v0, Lcom/samsung/android/app/music/background/cache/CircleDrawableCache;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    return-void

    .line 25
    :cond_1
    sget-object v0, Lkotlinx/coroutines/GlobalScope;->a:Lkotlinx/coroutines/GlobalScope;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lcom/samsung/android/app/music/background/cache/CircleDrawableCache$buildBitmap$3;

    const/4 v4, 0x0

    invoke-direct {v0, p1, v4}, Lcom/samsung/android/app/music/background/cache/CircleDrawableCache$buildBitmap$3;-><init>(Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final b(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "SMUSIC-CircleDrawableCache"

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBitmap init:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/app/music/background/cache/CircleDrawableCache;->b:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :goto_1
    sget-object v0, Lcom/samsung/android/app/music/background/cache/CircleDrawableCache;->b:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/background/cache/CircleDrawableCache;->c(Landroid/content/Context;)V

    .line 43
    :cond_2
    sget-object p1, Lcom/samsung/android/app/music/background/cache/CircleDrawableCache;->b:Landroid/graphics/Bitmap;

    if-nez p1, :cond_3

    const-string v0, "bitmap"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_3
    return-object p1
.end method
