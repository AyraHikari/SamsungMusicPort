.class public final Lcom/google/android/gms/internal/zzkb;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:Lcom/google/android/gms/internal/zzkb;


# instance fields
.field private final c:Lcom/google/android/gms/internal/zzajr;

.field private final d:Lcom/google/android/gms/internal/zzjr;

.field private final e:Ljava/lang/String;

.field private final f:Lcom/google/android/gms/internal/zznd;

.field private final g:Lcom/google/android/gms/internal/zzne;

.field private final h:Lcom/google/android/gms/internal/zznf;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzkb;->a:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/zzkb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzkb;-><init>()V

    sget-object v1, Lcom/google/android/gms/internal/zzkb;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sput-object v0, Lcom/google/android/gms/internal/zzkb;->b:Lcom/google/android/gms/internal/zzkb;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected constructor <init>()V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzajr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzajr;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzkb;->c:Lcom/google/android/gms/internal/zzajr;

    new-instance v0, Lcom/google/android/gms/internal/zzjr;

    new-instance v2, Lcom/google/android/gms/internal/zzji;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzji;-><init>()V

    new-instance v3, Lcom/google/android/gms/internal/zzjh;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzjh;-><init>()V

    new-instance v4, Lcom/google/android/gms/internal/zzmb;

    invoke-direct {v4}, Lcom/google/android/gms/internal/zzmb;-><init>()V

    new-instance v5, Lcom/google/android/gms/internal/zzri;

    invoke-direct {v5}, Lcom/google/android/gms/internal/zzri;-><init>()V

    new-instance v6, Lcom/google/android/gms/internal/zzadt;

    invoke-direct {v6}, Lcom/google/android/gms/internal/zzadt;-><init>()V

    new-instance v7, Lcom/google/android/gms/internal/zzxd;

    invoke-direct {v7}, Lcom/google/android/gms/internal/zzxd;-><init>()V

    new-instance v8, Lcom/google/android/gms/internal/zzrj;

    invoke-direct {v8}, Lcom/google/android/gms/internal/zzrj;-><init>()V

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/zzjr;-><init>(Lcom/google/android/gms/internal/zzji;Lcom/google/android/gms/internal/zzjh;Lcom/google/android/gms/internal/zzmb;Lcom/google/android/gms/internal/zzri;Lcom/google/android/gms/internal/zzadt;Lcom/google/android/gms/internal/zzxd;Lcom/google/android/gms/internal/zzrj;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzkb;->d:Lcom/google/android/gms/internal/zzjr;

    invoke-static {}, Lcom/google/android/gms/internal/zzajr;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzkb;->e:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/zznd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zznd;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzkb;->f:Lcom/google/android/gms/internal/zznd;

    new-instance v0, Lcom/google/android/gms/internal/zzne;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzne;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzkb;->g:Lcom/google/android/gms/internal/zzne;

    new-instance v0, Lcom/google/android/gms/internal/zznf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zznf;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzkb;->h:Lcom/google/android/gms/internal/zznf;

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/zzajr;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->g()Lcom/google/android/gms/internal/zzkb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzkb;->c:Lcom/google/android/gms/internal/zzajr;

    return-object v0
.end method

.method public static b()Lcom/google/android/gms/internal/zzjr;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->g()Lcom/google/android/gms/internal/zzkb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzkb;->d:Lcom/google/android/gms/internal/zzjr;

    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->g()Lcom/google/android/gms/internal/zzkb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzkb;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static d()Lcom/google/android/gms/internal/zzne;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->g()Lcom/google/android/gms/internal/zzkb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzkb;->g:Lcom/google/android/gms/internal/zzne;

    return-object v0
.end method

.method public static e()Lcom/google/android/gms/internal/zznd;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->g()Lcom/google/android/gms/internal/zzkb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzkb;->f:Lcom/google/android/gms/internal/zznd;

    return-object v0
.end method

.method public static f()Lcom/google/android/gms/internal/zznf;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->g()Lcom/google/android/gms/internal/zzkb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzkb;->h:Lcom/google/android/gms/internal/zznf;

    return-object v0
.end method

.method private static g()Lcom/google/android/gms/internal/zzkb;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzkb;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/zzkb;->b:Lcom/google/android/gms/internal/zzkb;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
