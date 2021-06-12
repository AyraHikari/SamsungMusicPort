.class public final Lcom/google/android/gms/internal/zzafz;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:I

.field private c:I

.field private final d:Lcom/google/android/gms/internal/zzaft;

.field private final e:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzaft;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzafz;->a:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzafz;->d:Lcom/google/android/gms/internal/zzaft;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzafz;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->i()Lcom/google/android/gms/internal/zzaft;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/zzafz;-><init>(Lcom/google/android/gms/internal/zzaft;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzafz;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "pmnli"

    iget v3, p0, Lcom/google/android/gms/internal/zzafz;->b:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "pmnll"

    iget v3, p0, Lcom/google/android/gms/internal/zzafz;->c:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final a(II)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzafz;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput p1, p0, Lcom/google/android/gms/internal/zzafz;->b:I

    iput p2, p0, Lcom/google/android/gms/internal/zzafz;->c:I

    iget-object p1, p0, Lcom/google/android/gms/internal/zzafz;->d:Lcom/google/android/gms/internal/zzaft;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzafz;->e:Ljava/lang/String;

    invoke-virtual {p1, p2, p0}, Lcom/google/android/gms/internal/zzaft;->a(Ljava/lang/String;Lcom/google/android/gms/internal/zzafz;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
