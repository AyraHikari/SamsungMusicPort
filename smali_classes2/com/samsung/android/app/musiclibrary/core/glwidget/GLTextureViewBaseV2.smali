.class public Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;
.super Landroid/view/TextureView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$Event;,
        Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$SurfaceTextureState;
    }
.end annotation


# static fields
.field private static final ABNORMAL_SIZE:I = 0xff0000

.field static final BEFORE_RENDER_GO_SLEEP:J = 0xfaL

.field public static final DEBUG:Z = false

.field private static final KEEP_RENDERING_THREAD:Z = true

.field private static final LEGACY_RESIZE:Z

.field private static final LOG_TAG:Ljava/lang/String; = "GLTextureViewBaseV2"

.field private static final MSG_ON_ANIMATION:I = 0x67

.field private static final MSG_RUNNABLE:I = 0x68

.field private static final MSG_SURFACE_AVAILABLE:I = 0x64

.field private static final MSG_SURFACE_DESTROYED:I = 0x66

.field private static final MSG_SURFACE_SIZE_CHANGED:I = 0x65

.field private static final USE_RENDERING_THREAD_FOR_ANIMATION:Z = true

.field private static final sRenderingThreadCount:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final glCore:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;

.field private final mEvents:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$Event;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mLastFrameDuration:J

.field private final mListener:Landroid/view/TextureView$SurfaceTextureListener;

.field private final mRenderCycle:Ljava/lang/Runnable;

.field private final mRenderRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

.field private mRenderingLogPrefix:Ljava/lang/String;

.field private volatile mRenderingThread:Ljava/lang/Thread;

.field private volatile mRenderingThreadId:J

.field final mRenderingThreadLock:Ljava/lang/Object;

.field private volatile mRunning:Z

.field private volatile mTextureState:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$SurfaceTextureState;

.field private final mThreadName:Ljava/lang/String;

.field private volatile mTouched:Z

.field private final sEventsPool:Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool<",
            "Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$Event;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 71
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->sRenderingThreadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 73
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    if-gt v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    sput-boolean v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->LEGACY_RESIZE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;)V
    .locals 2

    .line 261
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRenderingThreadLock:Ljava/lang/Object;

    .line 78
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;

    invoke-direct {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->glCore:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;

    .line 83
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;

    new-instance p2, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;)V

    const/4 v0, -0x1

    invoke-direct {p1, v0, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;-><init>(ILcom/samsung/android/app/musiclibrary/core/glwidget/pool/PoolElement$Factory;)V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->sEventsPool:Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;

    .line 90
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mEvents:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 92
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRenderRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v0, 0x8

    .line 101
    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mLastFrameDuration:J

    .line 103
    iput-boolean p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mTouched:Z

    const-wide/16 p1, -0x1

    .line 105
    iput-wide p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRenderingThreadId:J

    .line 107
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$SurfaceTextureState;->Initial:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$SurfaceTextureState;

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mTextureState:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$SurfaceTextureState;

    .line 113
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$2;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;)V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    const/4 p1, 0x1

    .line 164
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRunning:Z

    .line 166
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$3;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$3;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;)V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRenderCycle:Ljava/lang/Runnable;

    .line 262
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 263
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mThreadName:Ljava/lang/String;

    .line 265
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->ensureRenderingThread()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 252
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 76
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRenderingThreadLock:Ljava/lang/Object;

    .line 78
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;

    invoke-direct {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->glCore:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;

    .line 83
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;)V

    const/4 v1, -0x1

    invoke-direct {p1, v1, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;-><init>(ILcom/samsung/android/app/musiclibrary/core/glwidget/pool/PoolElement$Factory;)V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->sEventsPool:Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;

    .line 90
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mEvents:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 92
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRenderRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v1, 0x8

    .line 101
    iput-wide v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mLastFrameDuration:J

    .line 103
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mTouched:Z

    const-wide/16 v0, -0x1

    .line 105
    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRenderingThreadId:J

    .line 107
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$SurfaceTextureState;->Initial:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$SurfaceTextureState;

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mTextureState:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$SurfaceTextureState;

    .line 113
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$2;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;)V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    const/4 p1, 0x1

    .line 164
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRunning:Z

    .line 166
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$3;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$3;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;)V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRenderCycle:Ljava/lang/Runnable;

    .line 253
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 254
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mThreadName:Ljava/lang/String;

    .line 256
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->ensureRenderingThread()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 42
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$SurfaceTextureState;)Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$SurfaceTextureState;
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mTextureState:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$SurfaceTextureState;

    return-object p1
.end method

.method static synthetic access$200(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;ILcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$Event;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->sendEvent(ILcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$Event;)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;)Ljava/lang/String;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRenderingLogPrefix:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRunning:Z

    return p0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mEvents:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object p0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRenderRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$700(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mTouched:Z

    return p0
.end method

.method static synthetic access$800(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;)J
    .locals 2

    .line 42
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mLastFrameDuration:J

    return-wide v0
.end method

.method private ensureRenderingThread()V
    .locals 5

    .line 541
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRenderingThread:Ljava/lang/Thread;

    if-nez v0, :cond_1

    .line 542
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRenderingThreadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 543
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRenderingThread:Ljava/lang/Thread;

    if-nez v1, :cond_0

    const-string v1, "%s[RT:%d] "

    const/4 v2, 0x2

    .line 544
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mThreadName:Ljava/lang/String;

    aput-object v4, v2, v3

    sget-object v3, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->sRenderingThreadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 545
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 544
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRenderingLogPrefix:Ljava/lang/String;

    .line 546
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRenderingLogPrefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "startRenderingThread"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    iput-boolean v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRunning:Z

    .line 548
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRenderCycle:Ljava/lang/Runnable;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRenderingLogPrefix:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRenderingThread:Ljava/lang/Thread;

    .line 549
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRenderingThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 550
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRenderingThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRenderingThreadId:J

    .line 552
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method private isTextureAvailable()Z
    .locals 2

    .line 428
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mTextureState:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$SurfaceTextureState;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$SurfaceTextureState;->Available:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$SurfaceTextureState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isTextureDestroyed()Z
    .locals 2

    .line 432
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mTextureState:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$SurfaceTextureState;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$SurfaceTextureState;->Destroyed:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$SurfaceTextureState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private sendEvent(ILcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$Event;)V
    .locals 0

    .line 436
    iput p1, p2, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$Event;->msg:I

    .line 437
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mEvents:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    .line 438
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->ensureRenderingThread()V

    .line 439
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->notifyRenderingThread()V

    return-void
.end method


# virtual methods
.method public getRenderingThreadId()J
    .locals 2

    .line 270
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRenderingThreadId:J

    return-wide v0
.end method

.method handleRenderingEvent(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$Event;)V
    .locals 4

    .line 373
    iget v0, p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$Event;->msg:I

    const/16 v1, 0x68

    const/16 v2, 0x67

    if-eq v0, v2, :cond_0

    iget v0, p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$Event;->msg:I

    if-eq v0, v1, :cond_0

    .line 374
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRenderingLogPrefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "handleEvent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    :cond_0
    iget v0, p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$Event;->msg:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 389
    :pswitch_0
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRunning:Z

    if-nez v0, :cond_1

    goto :goto_1

    .line 392
    :cond_1
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$Event;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    .line 393
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 395
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->peekEvent()Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$Event;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 396
    iget v0, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$Event;->msg:I

    if-ne v0, v1, :cond_2

    .line 397
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->receiveEvent()Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$Event;

    move-result-object v0

    .line 398
    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$Event;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Runnable;

    .line 399
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 400
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->sEventsPool:Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;

    invoke-virtual {v2, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;->recycle(Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/PoolElement;)V

    .line 401
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->peekEvent()Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$Event;

    move-result-object v0

    goto :goto_0

    .line 384
    :pswitch_1
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$Event;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->handleTextureDestroyed(Landroid/graphics/SurfaceTexture;)V

    goto :goto_1

    .line 381
    :pswitch_2
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$Event;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/SurfaceTexture;

    iget v1, p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$Event;->width:I

    iget v2, p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$Event;->height:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->handleTextureSizeChange(Landroid/graphics/SurfaceTexture;II)V

    goto :goto_1

    .line 378
    :pswitch_3
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$Event;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/SurfaceTexture;

    iget v1, p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$Event;->width:I

    iget v2, p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$Event;->height:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->handleTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    .line 405
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->sEventsPool:Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;->recycle(Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/PoolElement;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method handleRequestRender()V
    .locals 4

    .line 409
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 410
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->isTextureAvailable()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 415
    :cond_0
    :try_start_0
    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRunning:Z

    if-eqz v2, :cond_1

    .line 416
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->glCore:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->onDrawFrame(Landroid/opengl/GLSurfaceView$Renderer;)V
    :try_end_0
    .catch Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore$GLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 419
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->isTextureAvailable()Z

    move-result v3

    if-nez v3, :cond_2

    .line 424
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mLastFrameDuration:J

    return-void

    .line 420
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method handleTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    .line 349
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->glCore:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->init(Landroid/graphics/SurfaceTexture;)V

    .line 351
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->isTextureDestroyed()Z

    move-result p1

    if-nez p1, :cond_0

    .line 352
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$SurfaceTextureState;->Available:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$SurfaceTextureState;

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mTextureState:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$SurfaceTextureState;

    .line 354
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->glCore:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->checkGLCurrent()V

    .line 355
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->glCore:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    invoke-virtual {p1, v0, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->onSurfaceCreated(Landroid/opengl/GLSurfaceView$Renderer;II)V

    .line 357
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->glCore:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    invoke-virtual {p1, v0, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->onSurfaceSizeChanged(Landroid/opengl/GLSurfaceView$Renderer;II)V
    :try_end_0
    .catch Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore$GLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 359
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->isTextureAvailable()Z

    move-result p2

    if-nez p2, :cond_1

    :goto_0
    return-void

    .line 363
    :cond_1
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method handleTextureDestroyed(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 292
    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->glCore:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->onSurfaceDestroyed(Landroid/opengl/GLSurfaceView$Renderer;)V
    :try_end_0
    .catch Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore$GLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 298
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->isTextureAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    .line 302
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method handleTextureSizeChange(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    .line 317
    :try_start_0
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->LEGACY_RESIZE:Z

    if-eqz v0, :cond_1

    .line 318
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->LOG_TAG:Ljava/lang/String;

    const-string v1, "LEGACY_RESIZE"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->glCore:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->onSurfaceDestroyed(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 320
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->glCore:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->init(Landroid/graphics/SurfaceTexture;)V

    .line 322
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->isTextureDestroyed()Z

    move-result p1

    if-nez p1, :cond_0

    .line 323
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$SurfaceTextureState;->Available:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$SurfaceTextureState;

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mTextureState:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$SurfaceTextureState;

    .line 325
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->glCore:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->checkGLCurrent()V

    .line 326
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->glCore:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    invoke-virtual {p1, v0, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->onSurfaceCreated(Landroid/opengl/GLSurfaceView$Renderer;II)V

    .line 329
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->glCore:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    invoke-virtual {p1, v0, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->onSurfaceSizeChanged(Landroid/opengl/GLSurfaceView$Renderer;II)V
    :try_end_0
    .catch Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore$GLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 332
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->isTextureAvailable()Z

    move-result p2

    if-nez p2, :cond_2

    :goto_0
    return-void

    .line 336
    :cond_2
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1

    .line 274
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 p1, 0x1

    .line 276
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mTouched:Z

    goto :goto_0

    :cond_0
    :pswitch_1
    const/4 p1, 0x0

    .line 280
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mTouched:Z

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public inAnimationThread(Ljava/lang/Runnable;)V
    .locals 4

    .line 491
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRenderingThread:Ljava/lang/Thread;

    if-eqz v0, :cond_2

    .line 493
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRenderingThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 494
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 495
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRenderingThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    const/16 v0, 0x68

    .line 497
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->obtainEvent(Ljava/lang/Object;)Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$Event;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->sendEvent(ILcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$Event;)V

    goto :goto_0

    .line 501
    :cond_1
    invoke-super {p0, p1}, Landroid/view/TextureView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 504
    :cond_2
    invoke-super {p0, p1}, Landroid/view/TextureView;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method notifyRenderingThread()V
    .locals 2

    .line 576
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRenderingThreadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 577
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRenderingThreadLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 578
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method obtainEvent(Ljava/lang/Object;)Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$Event;
    .locals 1

    const/4 v0, -0x1

    .line 459
    invoke-virtual {p0, p1, v0, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->obtainEvent(Ljava/lang/Object;II)Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$Event;

    move-result-object p1

    return-object p1
.end method

.method obtainEvent(Ljava/lang/Object;II)Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$Event;
    .locals 1

    .line 451
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->sEventsPool:Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;->obtain()Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/PoolElement;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$Event;

    .line 452
    iput-object p1, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$Event;->obj:Ljava/lang/Object;

    .line 453
    iput p2, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$Event;->width:I

    .line 454
    iput p3, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$Event;->height:I

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 7

    .line 514
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 515
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    const/4 v2, 0x0

    const/high16 v3, 0xff0000

    if-lt v0, v3, :cond_0

    .line 524
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    .line 525
    sget-object v4, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GLTextureViewBase onMeasure size is abnormal! So regarding it as negative. widthMode "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " widthSize "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    invoke-static {v2, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_0
    if-lt v1, v3, :cond_1

    .line 531
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    .line 532
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GLTextureViewBase onMeasure size is abnormal! So regarding it as negative. heightMode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " heightSize "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    invoke-static {v2, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 537
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/TextureView;->onMeasure(II)V

    return-void
.end method

.method peekEvent()Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$Event;
    .locals 1

    .line 447
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mEvents:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$Event;

    return-object v0
.end method

.method public postOnAnimationInAnimationThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 478
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRenderingThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    const/16 v0, 0x67

    .line 479
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->obtainEvent(Ljava/lang/Object;)Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$Event;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->sendEvent(ILcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$Event;)V

    goto :goto_0

    .line 481
    :cond_0
    invoke-super {p0, p1}, Landroid/view/TextureView;->postOnAnimation(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method receiveEvent()Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$Event;
    .locals 1

    .line 443
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mEvents:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$Event;

    return-object v0
.end method

.method public requestRender()V
    .locals 2

    .line 466
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRenderRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 467
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->notifyRenderingThread()V

    return-void
.end method

.method public setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V
    .locals 0

    .line 509
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    return-void
.end method

.method protected stopRenderingThread()V
    .locals 4

    .line 560
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRenderingThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRenderingThreadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 562
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->sRenderingThreadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 563
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRenderingLogPrefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "stopRenderingThread"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 564
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRunning:Z

    .line 565
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRenderingThreadLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    const/4 v1, 0x0

    .line 566
    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRenderingThread:Ljava/lang/Thread;

    const-wide/16 v1, -0x1

    .line 567
    iput-wide v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRenderingThreadId:J

    .line 568
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    return-void
.end method
