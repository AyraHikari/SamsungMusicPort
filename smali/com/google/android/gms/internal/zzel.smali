.class public final Lcom/google/android/gms/internal/zzel;
.super Lcom/google/android/gms/internal/zzet;


# instance fields
.field private final d:[Ljava/lang/StackTraceElement;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzdm;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzaz;II[Ljava/lang/StackTraceElement;)V
    .locals 7

    const/16 v6, 0x2d

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzet;-><init>(Lcom/google/android/gms/internal/zzdm;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzaz;II)V

    iput-object p7, p0, Lcom/google/android/gms/internal/zzel;->d:[Ljava/lang/StackTraceElement;

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->d:[Ljava/lang/StackTraceElement;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->c:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/gms/internal/zzel;->d:[Ljava/lang/StackTraceElement;

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Lcom/google/android/gms/internal/zzdk;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzdk;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->b:Lcom/google/android/gms/internal/zzaz;

    monitor-enter v0

    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/internal/zzel;->b:Lcom/google/android/gms/internal/zzaz;

    iget-object v4, v1, Lcom/google/android/gms/internal/zzdk;->a:Ljava/lang/Long;

    iput-object v4, v3, Lcom/google/android/gms/internal/zzaz;->B:Ljava/lang/Long;

    iget-object v3, v1, Lcom/google/android/gms/internal/zzdk;->b:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/gms/internal/zzel;->b:Lcom/google/android/gms/internal/zzaz;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzdk;->c:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    xor-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v3, Lcom/google/android/gms/internal/zzaz;->J:Ljava/lang/Integer;

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    return-void
.end method
