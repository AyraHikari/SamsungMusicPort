.class final Lcom/google/android/gms/tasks/zzh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/tasks/zzg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tasks/zzg;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/tasks/zzh;->a:Lcom/google/android/gms/tasks/zzg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzh;->a:Lcom/google/android/gms/tasks/zzg;

    invoke-static {v0}, Lcom/google/android/gms/tasks/zzg;->a(Lcom/google/android/gms/tasks/zzg;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/tasks/zzh;->a:Lcom/google/android/gms/tasks/zzg;

    invoke-static {v1}, Lcom/google/android/gms/tasks/zzg;->b(Lcom/google/android/gms/tasks/zzg;)Lcom/google/android/gms/tasks/OnCanceledListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/tasks/zzh;->a:Lcom/google/android/gms/tasks/zzg;

    invoke-static {v1}, Lcom/google/android/gms/tasks/zzg;->b(Lcom/google/android/gms/tasks/zzg;)Lcom/google/android/gms/tasks/OnCanceledListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/tasks/OnCanceledListener;->a()V

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
