.class public final Lcom/samsung/android/app/music/background/cache/BackgroundBlurGenerator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/background/cache/BackgroundBlurGenerator$BlurGeneratorLock;,
        Lcom/samsung/android/app/music/background/cache/BackgroundBlurGenerator$HandlerInitLock;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/background/cache/BackgroundBlurGenerator;

.field private static b:Lcom/samsung/android/app/music/background/cache/ThreadSafeBlurGenerator;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private static c:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    new-instance v0, Lcom/samsung/android/app/music/background/cache/BackgroundBlurGenerator;

    invoke-direct {v0}, Lcom/samsung/android/app/music/background/cache/BackgroundBlurGenerator;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/background/cache/BackgroundBlurGenerator;->a:Lcom/samsung/android/app/music/background/cache/BackgroundBlurGenerator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Landroid/content/Context;)Lcom/samsung/android/app/music/background/cache/ThreadSafeBlurGenerator;
    .locals 3

    .line 73
    sget-object v0, Lcom/samsung/android/app/music/background/cache/BackgroundBlurGenerator$BlurGeneratorLock;->a:Lcom/samsung/android/app/music/background/cache/BackgroundBlurGenerator$BlurGeneratorLock;

    monitor-enter v0

    .line 74
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/music/background/cache/BackgroundBlurGenerator;->b:Lcom/samsung/android/app/music/background/cache/ThreadSafeBlurGenerator;

    if-eqz v1, :cond_1

    .line 75
    sget-object p1, Lcom/samsung/android/app/music/background/cache/BackgroundBlurGenerator;->b:Lcom/samsung/android/app/music/background/cache/ThreadSafeBlurGenerator;

    if-nez p1, :cond_0

    const-string v1, "blurGenerator"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-object p1

    .line 77
    :cond_1
    :try_start_1
    new-instance v1, Lcom/samsung/android/app/music/background/cache/ThreadSafeBlurGenerator;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v2, "context.applicationContext"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p1}, Lcom/samsung/android/app/music/background/cache/ThreadSafeBlurGenerator;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/app/music/background/cache/BackgroundBlurGenerator;->b:Lcom/samsung/android/app/music/background/cache/ThreadSafeBlurGenerator;

    .line 78
    sget-object p1, Lcom/samsung/android/app/music/background/cache/BackgroundBlurGenerator;->b:Lcom/samsung/android/app/music/background/cache/ThreadSafeBlurGenerator;

    if-nez p1, :cond_2

    const-string v1, "blurGenerator"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 73
    monitor-exit v0

    throw p1
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/background/cache/BackgroundBlurGenerator;)Lcom/samsung/android/app/music/background/cache/ThreadSafeBlurGenerator;
    .locals 1

    .line 49
    sget-object p0, Lcom/samsung/android/app/music/background/cache/BackgroundBlurGenerator;->b:Lcom/samsung/android/app/music/background/cache/ThreadSafeBlurGenerator;

    if-nez p0, :cond_0

    const-string v0, "blurGenerator"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/background/cache/BackgroundBlurGenerator;Landroid/content/Context;)Lcom/samsung/android/app/music/background/cache/ThreadSafeBlurGenerator;
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/background/cache/BackgroundBlurGenerator;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/background/cache/ThreadSafeBlurGenerator;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/background/cache/BackgroundBlurGenerator;Landroid/os/Handler;)V
    .locals 0

    .line 49
    sput-object p1, Lcom/samsung/android/app/music/background/cache/BackgroundBlurGenerator;->c:Landroid/os/Handler;

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/background/cache/BackgroundBlurGenerator;Lcom/samsung/android/app/music/background/cache/ThreadSafeBlurGenerator;)V
    .locals 0

    .line 49
    sput-object p1, Lcom/samsung/android/app/music/background/cache/BackgroundBlurGenerator;->b:Lcom/samsung/android/app/music/background/cache/ThreadSafeBlurGenerator;

    return-void
.end method

.method private final a()Z
    .locals 4

    .line 81
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "Thread.currentThread()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const-string v3, "Looper.getMainLooper()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    const-string v3, "Looper.getMainLooper().thread"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/background/cache/BackgroundBlurGenerator;)Landroid/os/Handler;
    .locals 1

    .line 49
    sget-object p0, Lcom/samsung/android/app/music/background/cache/BackgroundBlurGenerator;->c:Landroid/os/Handler;

    if-nez p0, :cond_0

    const-string v0, "handler"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method private final b()V
    .locals 3

    .line 93
    sget-object v0, Lcom/samsung/android/app/music/background/cache/BackgroundBlurGenerator;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    return-void

    .line 94
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/background/cache/BackgroundBlurGenerator$HandlerInitLock;->a:Lcom/samsung/android/app/music/background/cache/BackgroundBlurGenerator$HandlerInitLock;

    monitor-enter v0

    .line 95
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/music/background/cache/BackgroundBlurGenerator;->c:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    monitor-exit v0

    return-void

    .line 96
    :cond_1
    :try_start_1
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "BackgroundBlurGenerator"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 98
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v2, Lcom/samsung/android/app/music/background/cache/BackgroundBlurGenerator;->c:Landroid/os/Handler;

    .line 99
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/graphics/Bitmap;FLkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/graphics/Bitmap;",
            "F",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/graphics/Bitmap;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitmap"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-direct {p0}, Lcom/samsung/android/app/music/background/cache/BackgroundBlurGenerator;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    invoke-direct {p0}, Lcom/samsung/android/app/music/background/cache/BackgroundBlurGenerator;->b()V

    .line 64
    sget-object v0, Lcom/samsung/android/app/music/background/cache/BackgroundBlurGenerator;->c:Landroid/os/Handler;

    if-nez v0, :cond_0

    const-string v1, "handler"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    new-instance v1, Lcom/samsung/android/app/music/background/cache/BackgroundBlurGenerator$getBlurredBitmap$1;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/samsung/android/app/music/background/cache/BackgroundBlurGenerator$getBlurredBitmap$1;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;FLkotlin/jvm/functions/Function1;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 236
    :cond_1
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/background/cache/BackgroundBlurGenerator;->a(Lcom/samsung/android/app/music/background/cache/BackgroundBlurGenerator;Landroid/content/Context;)Lcom/samsung/android/app/music/background/cache/ThreadSafeBlurGenerator;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/app/music/background/cache/ThreadSafeBlurGenerator;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-interface {p4, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method
