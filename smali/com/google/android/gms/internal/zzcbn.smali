.class final Lcom/google/android/gms/internal/zzcbn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/zzf;
.implements Lcom/google/android/gms/common/internal/zzg;


# instance fields
.field private a:Lcom/google/android/gms/internal/zzcbo;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lcom/google/android/gms/internal/zzaz;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcbn;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcbn;->c:Ljava/lang/String;

    new-instance p2, Landroid/os/HandlerThread;

    const-string p3, "GassClient"

    invoke-direct {p2, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcbn;->e:Landroid/os/HandlerThread;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzcbn;->e:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    new-instance p2, Lcom/google/android/gms/internal/zzcbo;

    iget-object p3, p0, Lcom/google/android/gms/internal/zzcbn;->e:Landroid/os/HandlerThread;

    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p1, p3, p0, p0}, Lcom/google/android/gms/internal/zzcbo;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/internal/zzg;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcbn;->a:Lcom/google/android/gms/internal/zzcbo;

    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcbn;->d:Ljava/util/concurrent/LinkedBlockingQueue;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzcbn;->a:Lcom/google/android/gms/internal/zzcbo;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzd;->zzakj()V

    return-void
.end method

.method private static f()Lcom/google/android/gms/internal/zzaz;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzaz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzaz;-><init>()V

    const-wide/32 v1, 0x8000

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzaz;->k:Ljava/lang/Long;

    return-object v0
.end method


# virtual methods
.method public final a(I)Lcom/google/android/gms/internal/zzaz;
    .locals 3

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzcbn;->d:Ljava/util/concurrent/LinkedBlockingQueue;

    const-wide/16 v0, 0x1388

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzaz;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzcbn;->f()Lcom/google/android/gms/internal/zzaz;

    move-result-object p1

    :cond_0
    return-object p1
.end method
