.class public final Lcom/google/android/gms/internal/zztq;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Lcom/google/android/gms/internal/zztx;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zztq;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/google/android/gms/internal/zzakd;)Lcom/google/android/gms/internal/zztx;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zztq;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zztq;->b:Lcom/google/android/gms/internal/zztx;

    if-nez v1, :cond_1

    new-instance v1, Lcom/google/android/gms/internal/zztx;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v2

    :goto_0
    sget-object v2, Lcom/google/android/gms/internal/zznh;->a:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->f()Lcom/google/android/gms/internal/zznf;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/zznf;->a(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, p1, p2, v2}, Lcom/google/android/gms/internal/zztx;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzakd;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/zztq;->b:Lcom/google/android/gms/internal/zztx;

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/zztq;->b:Lcom/google/android/gms/internal/zztx;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
