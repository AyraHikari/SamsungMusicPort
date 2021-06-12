.class public final Lcom/google/android/gms/internal/zziz;
.super Ljava/lang/Object;


# instance fields
.field private final a:[B

.field private b:I

.field private c:I

.field private synthetic d:Lcom/google/android/gms/internal/zzix;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzix;[B)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zziz;->d:Lcom/google/android/gms/internal/zzix;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/zziz;->a:[B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzix;[BLcom/google/android/gms/internal/zziy;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zziz;-><init>(Lcom/google/android/gms/internal/zzix;[B)V

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/google/android/gms/internal/zziz;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zziz;->b:I

    return-object p0
.end method

.method public final declared-synchronized a()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zziz;->d:Lcom/google/android/gms/internal/zzix;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzix;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zziz;->d:Lcom/google/android/gms/internal/zzix;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzix;->a:Lcom/google/android/gms/internal/zzfl;

    iget-object v1, p0, Lcom/google/android/gms/internal/zziz;->a:[B

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzfl;->zzc([B)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zziz;->d:Lcom/google/android/gms/internal/zzix;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzix;->a:Lcom/google/android/gms/internal/zzfl;

    iget v1, p0, Lcom/google/android/gms/internal/zziz;->b:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzfl;->zzg(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zziz;->d:Lcom/google/android/gms/internal/zzix;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzix;->a:Lcom/google/android/gms/internal/zzfl;

    iget v1, p0, Lcom/google/android/gms/internal/zziz;->c:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzfl;->zzh(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zziz;->d:Lcom/google/android/gms/internal/zzix;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzix;->a:Lcom/google/android/gms/internal/zzfl;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzfl;->zza([I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zziz;->d:Lcom/google/android/gms/internal/zzix;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzix;->a:Lcom/google/android/gms/internal/zzfl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzfl;->zzbk()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "Clearcut log failed"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzakb;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0

    throw v0
.end method

.method public final b(I)Lcom/google/android/gms/internal/zziz;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zziz;->c:I

    return-object p0
.end method
