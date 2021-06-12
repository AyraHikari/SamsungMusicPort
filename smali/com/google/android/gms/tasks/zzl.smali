.class final Lcom/google/android/gms/tasks/zzl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/tasks/Task;

.field private final synthetic b:Lcom/google/android/gms/tasks/zzk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tasks/zzk;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/tasks/zzl;->b:Lcom/google/android/gms/tasks/zzk;

    iput-object p2, p0, Lcom/google/android/gms/tasks/zzl;->a:Lcom/google/android/gms/tasks/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzl;->b:Lcom/google/android/gms/tasks/zzk;

    invoke-static {v0}, Lcom/google/android/gms/tasks/zzk;->a(Lcom/google/android/gms/tasks/zzk;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/tasks/zzl;->b:Lcom/google/android/gms/tasks/zzk;

    invoke-static {v1}, Lcom/google/android/gms/tasks/zzk;->b(Lcom/google/android/gms/tasks/zzk;)Lcom/google/android/gms/tasks/OnFailureListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/tasks/zzl;->b:Lcom/google/android/gms/tasks/zzk;

    invoke-static {v1}, Lcom/google/android/gms/tasks/zzk;->b(Lcom/google/android/gms/tasks/zzk;)Lcom/google/android/gms/tasks/OnFailureListener;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/tasks/zzl;->a:Lcom/google/android/gms/tasks/Task;

    invoke-virtual {v2}, Lcom/google/android/gms/tasks/Task;->e()Ljava/lang/Exception;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/tasks/OnFailureListener;->a(Ljava/lang/Exception;)V

    .line 5
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
