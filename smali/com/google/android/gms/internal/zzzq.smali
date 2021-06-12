.class final Lcom/google/android/gms/internal/zzzq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private synthetic a:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private synthetic b:Lcom/google/android/gms/internal/zzzp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzzp;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzzq;->b:Lcom/google/android/gms/internal/zzzp;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzzq;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzzq;->b:Lcom/google/android/gms/internal/zzzp;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzzp;->a(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzq;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzzq;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    :try_start_1
    const-string v0, "AdMob exception reporter failed reporting the exception."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzakb;->c(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzq;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzzq;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzq;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_1
    throw v0
.end method
