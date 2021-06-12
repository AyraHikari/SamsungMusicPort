.class final Lcom/google/android/gms/internal/zzum;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/zzuk;

.field private synthetic b:Lcom/google/android/gms/internal/zzul;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzul;Lcom/google/android/gms/internal/zzuk;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzum;->b:Lcom/google/android/gms/internal/zzul;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzum;->a:Lcom/google/android/gms/internal/zzuk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzum;->b:Lcom/google/android/gms/internal/zzul;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzul;->a(Lcom/google/android/gms/internal/zzul;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzum;->b:Lcom/google/android/gms/internal/zzul;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzul;->b(Lcom/google/android/gms/internal/zzul;)I

    move-result v1

    const/4 v2, -0x2

    if-eq v1, v2, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzum;->b:Lcom/google/android/gms/internal/zzul;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzum;->b:Lcom/google/android/gms/internal/zzul;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzul;->c(Lcom/google/android/gms/internal/zzul;)Lcom/google/android/gms/internal/zzva;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzul;->a(Lcom/google/android/gms/internal/zzul;Lcom/google/android/gms/internal/zzva;)Lcom/google/android/gms/internal/zzva;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzum;->b:Lcom/google/android/gms/internal/zzul;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzul;->d(Lcom/google/android/gms/internal/zzul;)Lcom/google/android/gms/internal/zzva;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzum;->b:Lcom/google/android/gms/internal/zzul;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzul;->a(I)V

    monitor-exit v0

    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzum;->b:Lcom/google/android/gms/internal/zzul;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzul;->e(Lcom/google/android/gms/internal/zzul;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzum;->b:Lcom/google/android/gms/internal/zzul;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzul;->a(Lcom/google/android/gms/internal/zzul;I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzum;->b:Lcom/google/android/gms/internal/zzul;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzul;->f(Lcom/google/android/gms/internal/zzul;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x38

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Ignoring adapter "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " as delayed impression is not supported"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzagf;->e(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzum;->b:Lcom/google/android/gms/internal/zzul;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzul;->a(I)V

    monitor-exit v0

    return-void

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzum;->a:Lcom/google/android/gms/internal/zzuk;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzum;->b:Lcom/google/android/gms/internal/zzul;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzuk;->zza(Lcom/google/android/gms/internal/zzup;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzum;->b:Lcom/google/android/gms/internal/zzul;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzum;->a:Lcom/google/android/gms/internal/zzuk;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzul;->a(Lcom/google/android/gms/internal/zzul;Lcom/google/android/gms/internal/zzuk;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
