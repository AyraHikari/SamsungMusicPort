.class public final Lcom/google/android/gms/internal/zzami;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# instance fields
.field private final a:J

.field private b:J

.field private c:Z


# direct methods
.method constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Lcom/google/android/gms/internal/zznh;->t:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->f()Lcom/google/android/gms/internal/zznf;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/zznf;->a(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzami;->a:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzami;->c:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzami;->c:Z

    return-void
.end method

.method public final a(Landroid/graphics/SurfaceTexture;Lcom/google/android/gms/internal/zzama;)V
    .locals 6

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v0

    iget-boolean p1, p0, Lcom/google/android/gms/internal/zzami;->c:Z

    if-nez p1, :cond_1

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzami;->b:J

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzami;->a:J

    cmp-long p1, v2, v4

    if-ltz p1, :cond_2

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzami;->c:Z

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzami;->b:J

    sget-object p1, Lcom/google/android/gms/internal/zzahn;->a:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/zzamj;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/zzamj;-><init>(Lcom/google/android/gms/internal/zzami;Lcom/google/android/gms/internal/zzama;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method
