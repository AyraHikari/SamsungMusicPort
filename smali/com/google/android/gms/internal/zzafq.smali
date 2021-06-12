.class public final Lcom/google/android/gms/internal/zzafq;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/zzaft;

.field private final b:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/google/android/gms/internal/zzafr;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/Object;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private f:J

.field private g:J

.field private h:Z

.field private i:J

.field private j:J

.field private k:J

.field private l:J


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzaft;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzafq;->c:Ljava/lang/Object;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzafq;->f:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzafq;->g:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzafq;->h:Z

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzafq;->i:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzafq;->j:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzafq;->k:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzafq;->l:J

    iput-object p1, p0, Lcom/google/android/gms/internal/zzafq;->a:Lcom/google/android/gms/internal/zzaft;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzafq;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzafq;->e:Ljava/lang/String;

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzafq;->b:Ljava/util/LinkedList;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->i()Lcom/google/android/gms/internal/zzaft;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/zzafq;-><init>(Lcom/google/android/gms/internal/zzaft;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzafq;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/google/android/gms/internal/zzafq;->l:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzafq;->g:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/gms/internal/zzafq;->g:J

    iget-object v1, p0, Lcom/google/android/gms/internal/zzafq;->a:Lcom/google/android/gms/internal/zzaft;

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/zzaft;->a(Lcom/google/android/gms/internal/zzafq;)V

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzafq;->a:Lcom/google/android/gms/internal/zzaft;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzaft;->d()Lcom/google/android/gms/internal/zzafx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzafx;->b()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final a(J)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzafq;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-wide p1, p0, Lcom/google/android/gms/internal/zzafq;->l:J

    iget-wide p1, p0, Lcom/google/android/gms/internal/zzafq;->l:J

    const-wide/16 v1, -0x1

    cmp-long p1, p1, v1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzafq;->a:Lcom/google/android/gms/internal/zzaft;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzaft;->a(Lcom/google/android/gms/internal/zzafq;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Lcom/google/android/gms/internal/zzjj;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzafq;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/gms/internal/zzafq;->k:J

    iget-object v1, p0, Lcom/google/android/gms/internal/zzafq;->a:Lcom/google/android/gms/internal/zzaft;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzaft;->d()Lcom/google/android/gms/internal/zzafx;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzafq;->k:J

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/zzafx;->a(Lcom/google/android/gms/internal/zzjj;J)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Z)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzafq;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/google/android/gms/internal/zzafq;->l:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/gms/internal/zzafq;->i:J

    if-nez p1, :cond_0

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzafq;->i:J

    iput-wide v1, p0, Lcom/google/android/gms/internal/zzafq;->g:J

    iget-object p1, p0, Lcom/google/android/gms/internal/zzafq;->a:Lcom/google/android/gms/internal/zzaft;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzaft;->a(Lcom/google/android/gms/internal/zzafq;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzafq;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/google/android/gms/internal/zzafq;->l:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/zzafr;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzafr;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzafr;->c()V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzafq;->b:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzafq;->j:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/gms/internal/zzafq;->j:J

    iget-object v1, p0, Lcom/google/android/gms/internal/zzafq;->a:Lcom/google/android/gms/internal/zzaft;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzaft;->d()Lcom/google/android/gms/internal/zzafx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzafx;->a()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzafq;->a:Lcom/google/android/gms/internal/zzaft;

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/zzaft;->a(Lcom/google/android/gms/internal/zzafq;)V

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

.method public final b(J)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzafq;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/google/android/gms/internal/zzafq;->l:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzafq;->f:J

    iget-object p1, p0, Lcom/google/android/gms/internal/zzafq;->a:Lcom/google/android/gms/internal/zzaft;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzaft;->a(Lcom/google/android/gms/internal/zzafq;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b(Z)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzafq;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/google/android/gms/internal/zzafq;->l:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzafq;->h:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/zzafq;->a:Lcom/google/android/gms/internal/zzaft;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzaft;->a(Lcom/google/android/gms/internal/zzafq;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final c()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/zzafq;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/google/android/gms/internal/zzafq;->l:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzafq;->b:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzafq;->b:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzafr;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzafr;->a()J

    move-result-wide v5

    cmp-long v2, v5, v3

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzafr;->b()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzafq;->a:Lcom/google/android/gms/internal/zzaft;

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/zzaft;->a(Lcom/google/android/gms/internal/zzafq;)V

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

.method public final d()Landroid/os/Bundle;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzafq;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "seq_num"

    iget-object v3, p0, Lcom/google/android/gms/internal/zzafq;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "slotid"

    iget-object v3, p0, Lcom/google/android/gms/internal/zzafq;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ismediation"

    iget-boolean v3, p0, Lcom/google/android/gms/internal/zzafq;->h:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "treq"

    iget-wide v3, p0, Lcom/google/android/gms/internal/zzafq;->k:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "tresponse"

    iget-wide v3, p0, Lcom/google/android/gms/internal/zzafq;->l:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "timp"

    iget-wide v3, p0, Lcom/google/android/gms/internal/zzafq;->g:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "tload"

    iget-wide v3, p0, Lcom/google/android/gms/internal/zzafq;->i:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "pcc"

    iget-wide v3, p0, Lcom/google/android/gms/internal/zzafq;->j:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "tfetch"

    iget-wide v3, p0, Lcom/google/android/gms/internal/zzafq;->f:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/internal/zzafq;->b:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/zzafr;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzafr;->d()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v3, "tclick"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
