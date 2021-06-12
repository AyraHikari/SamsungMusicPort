.class final Lcom/google/android/gms/internal/zzaeu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/zzakv;

.field private synthetic b:Lcom/google/android/gms/internal/zzaes;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaes;Lcom/google/android/gms/internal/zzakv;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaeu;->b:Lcom/google/android/gms/internal/zzaes;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaeu;->a:Lcom/google/android/gms/internal/zzakv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaeu;->a:Lcom/google/android/gms/internal/zzakv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzakv;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaeu;->b:Lcom/google/android/gms/internal/zzaes;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzaes;->a(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaeu;->b:Lcom/google/android/gms/internal/zzaes;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzaes;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaeu;->b:Lcom/google/android/gms/internal/zzaes;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaes;->a(Lcom/google/android/gms/internal/zzaes;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaeu;->b:Lcom/google/android/gms/internal/zzaes;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzaes;->b(Lcom/google/android/gms/internal/zzaes;)Lcom/google/android/gms/internal/zzfjw;

    move-result-object v1

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/internal/zzfjw;->a:Ljava/lang/Integer;

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaeu;->b:Lcom/google/android/gms/internal/zzaes;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaes;->e()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to get SafeBrowsing metadata"

    sget-object v2, Lcom/google/android/gms/internal/zznh;->cl:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->f()Lcom/google/android/gms/internal/zznf;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/zznf;->a(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzagf;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method
