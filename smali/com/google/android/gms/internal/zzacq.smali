.class public final Lcom/google/android/gms/internal/zzacq;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# instance fields
.field private a:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/zzacs;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzacq;->a:Ljava/util/WeakHashMap;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/zzacq;)Ljava/util/WeakHashMap;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzacq;->a:Ljava/util/WeakHashMap;

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/google/android/gms/internal/zzaco;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzacr;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzacr;-><init>(Lcom/google/android/gms/internal/zzacq;Landroid/content/Context;)V

    sget-object p1, Lcom/google/android/gms/internal/zzahh;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzahh;->a(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/zzakv;

    move-result-object p1

    return-object p1
.end method
