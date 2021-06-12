.class public Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Ljava/lang/String;

.field private volatile c:I

.field private final d:Ljava/lang/Runnable;

.field private volatile e:J

.field private final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final g:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ArtWork"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;ILjava/lang/Runnable;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 29
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;->g:Ljava/lang/Runnable;

    .line 55
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;->b:Ljava/lang/String;

    .line 56
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;->c:I

    .line 57
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;->d:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;)J
    .locals 2

    .line 14
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;->e:J

    return-wide v0
.end method

.method private b()I
    .locals 1

    .line 84
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;->c:I

    return v0
.end method

.method static synthetic b(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;)Ljava/lang/Runnable;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;->d:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic c(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic d(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;)Ljava/lang/Runnable;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;->g:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic e(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;)I
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;->b()I

    move-result p0

    return p0
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 65
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;->c:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;->e:J

    .line 69
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;->g:Ljava/lang/Runnable;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;->c:I

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceHandlerThread;->a(Ljava/lang/Runnable;I)V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 0

    .line 79
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;->c:I

    .line 80
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;->a()V

    return-void
.end method
