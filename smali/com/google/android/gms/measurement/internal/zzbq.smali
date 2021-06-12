.class final Lcom/google/android/gms/measurement/internal/zzbq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private final a:Ljava/lang/String;

.field private final synthetic b:Lcom/google/android/gms/measurement/internal/zzbo;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzbo;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbq;->b:Lcom/google/android/gms/measurement/internal/zzbo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzbq;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final declared-synchronized uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    monitor-enter p0

    .line 5
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbq;->b:Lcom/google/android/gms/measurement/internal/zzbo;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbq;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 4
    monitor-exit p0

    throw p1
.end method
