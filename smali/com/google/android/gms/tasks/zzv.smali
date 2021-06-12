.class final Lcom/google/android/gms/tasks/zzv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/tasks/zzu;

.field private final synthetic b:Ljava/util/concurrent/Callable;


# virtual methods
.method public final run()V
    .locals 2

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzv;->a:Lcom/google/android/gms/tasks/zzu;

    iget-object v1, p0, Lcom/google/android/gms/tasks/zzv;->b:Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/zzu;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/tasks/zzv;->a:Lcom/google/android/gms/tasks/zzu;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/tasks/zzu;->a(Ljava/lang/Exception;)V

    return-void
.end method
