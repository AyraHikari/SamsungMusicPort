.class public Lcom/google/android/gms/internal/zzer;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String; = "zzer"


# instance fields
.field private final b:Lcom/google/android/gms/internal/zzdm;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:I

.field private volatile f:Ljava/lang/reflect/Method;

.field private final g:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private h:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public varargs constructor <init>(Lcom/google/android/gms/internal/zzdm;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzdm;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/zzer;->e:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzer;->f:Ljava/lang/reflect/Method;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzer;->h:Ljava/util/concurrent/CountDownLatch;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzer;->b:Lcom/google/android/gms/internal/zzdm;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzer;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzer;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzer;->g:[Ljava/lang/Class;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzer;->b:Lcom/google/android/gms/internal/zzdm;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdm;->c()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/zzes;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/zzes;-><init>(Lcom/google/android/gms/internal/zzer;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private final a([BLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzcy;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzer;->b:Lcom/google/android/gms/internal/zzdm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdm;->e()Lcom/google/android/gms/internal/zzcx;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzcx;->a([BLjava/lang/String;)[B

    move-result-object p1

    new-instance p2, Ljava/lang/String;

    const-string v0, "UTF-8"

    invoke-direct {p2, p1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object p2
.end method

.method static synthetic a(Lcom/google/android/gms/internal/zzer;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzer;->b()V

    return-void
.end method

.method private final b()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzer;->b:Lcom/google/android/gms/internal/zzdm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdm;->d()Ldalvik/system/DexClassLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzer;->b:Lcom/google/android/gms/internal/zzdm;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzdm;->f()[B

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzer;->c:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/internal/zzer;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzcy; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :catch_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzer;->h:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzer;->b:Lcom/google/android/gms/internal/zzdm;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzdm;->f()[B

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzer;->d:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/internal/zzer;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzer;->g:[Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzer;->f:Ljava/lang/reflect/Method;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzer;->f:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Lcom/google/android/gms/internal/zzcy; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzer;->h:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method


# virtual methods
.method public final a()Ljava/lang/reflect/Method;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzer;->f:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzer;->f:Ljava/lang/reflect/Method;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzer;->h:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v2, 0x2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzer;->f:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0
.end method
