.class public Lcom/google/android/gms/internal/measurement/zzwa;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/google/android/gms/internal/measurement/zzuz;


# instance fields
.field private b:Lcom/google/android/gms/internal/measurement/zzud;

.field private volatile c:Lcom/google/android/gms/internal/measurement/zzwt;

.field private volatile d:Lcom/google/android/gms/internal/measurement/zzud;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzuz;->a()Lcom/google/android/gms/internal/measurement/zzuz;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzwa;->a:Lcom/google/android/gms/internal/measurement/zzuz;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final b(Lcom/google/android/gms/internal/measurement/zzwt;)Lcom/google/android/gms/internal/measurement/zzwt;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzwa;->c:Lcom/google/android/gms/internal/measurement/zzwt;

    if-nez v0, :cond_1

    .line 20
    monitor-enter p0

    .line 21
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzwa;->c:Lcom/google/android/gms/internal/measurement/zzwt;

    if-eqz v0, :cond_0

    .line 22
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 23
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzwa;->c:Lcom/google/android/gms/internal/measurement/zzwt;

    .line 24
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzud;->zzbtz:Lcom/google/android/gms/internal/measurement/zzud;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzwa;->d:Lcom/google/android/gms/internal/measurement/zzud;
    :try_end_1
    .catch Lcom/google/android/gms/internal/measurement/zzvt; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 27
    :catch_0
    :try_start_2
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzwa;->c:Lcom/google/android/gms/internal/measurement/zzwt;

    .line 28
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzud;->zzbtz:Lcom/google/android/gms/internal/measurement/zzud;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzwa;->d:Lcom/google/android/gms/internal/measurement/zzud;

    .line 29
    :goto_0
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 30
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzwa;->c:Lcom/google/android/gms/internal/measurement/zzwt;

    return-object p1
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/measurement/zzwt;)Lcom/google/android/gms/internal/measurement/zzwt;
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzwa;->c:Lcom/google/android/gms/internal/measurement/zzwt;

    const/4 v1, 0x0

    .line 32
    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzwa;->b:Lcom/google/android/gms/internal/measurement/zzud;

    .line 33
    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzwa;->d:Lcom/google/android/gms/internal/measurement/zzud;

    .line 34
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzwa;->c:Lcom/google/android/gms/internal/measurement/zzwt;

    return-object v0
.end method

.method public final b()I
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzwa;->d:Lcom/google/android/gms/internal/measurement/zzud;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzwa;->d:Lcom/google/android/gms/internal/measurement/zzud;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzud;->size()I

    move-result v0

    return v0

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzwa;->c:Lcom/google/android/gms/internal/measurement/zzwt;

    if-eqz v0, :cond_1

    .line 39
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzwa;->c:Lcom/google/android/gms/internal/measurement/zzwt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzwt;->f()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final c()Lcom/google/android/gms/internal/measurement/zzud;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzwa;->d:Lcom/google/android/gms/internal/measurement/zzud;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzwa;->d:Lcom/google/android/gms/internal/measurement/zzud;

    return-object v0

    .line 43
    :cond_0
    monitor-enter p0

    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzwa;->d:Lcom/google/android/gms/internal/measurement/zzud;

    if-eqz v0, :cond_1

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzwa;->d:Lcom/google/android/gms/internal/measurement/zzud;

    monitor-exit p0

    return-object v0

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzwa;->c:Lcom/google/android/gms/internal/measurement/zzwt;

    if-nez v0, :cond_2

    .line 47
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzud;->zzbtz:Lcom/google/android/gms/internal/measurement/zzud;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzwa;->d:Lcom/google/android/gms/internal/measurement/zzud;

    goto :goto_0

    .line 48
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzwa;->c:Lcom/google/android/gms/internal/measurement/zzwt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzwt;->c()Lcom/google/android/gms/internal/measurement/zzud;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzwa;->d:Lcom/google/android/gms/internal/measurement/zzud;

    .line 49
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzwa;->d:Lcom/google/android/gms/internal/measurement/zzud;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 50
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 5
    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzwa;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 7
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzwa;

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzwa;->c:Lcom/google/android/gms/internal/measurement/zzwt;

    .line 9
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzwa;->c:Lcom/google/android/gms/internal/measurement/zzwt;

    if-nez v0, :cond_2

    if-nez v1, :cond_2

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzwa;->c()Lcom/google/android/gms/internal/measurement/zzud;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzwa;->c()Lcom/google/android/gms/internal/measurement/zzud;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzud;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    if-eqz v0, :cond_4

    .line 15
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzwt;->j()Lcom/google/android/gms/internal/measurement/zzwt;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/measurement/zzwa;->b(Lcom/google/android/gms/internal/measurement/zzwt;)Lcom/google/android/gms/internal/measurement/zzwt;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 16
    :cond_4
    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/zzwt;->j()Lcom/google/android/gms/internal/measurement/zzwt;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzwa;->b(Lcom/google/android/gms/internal/measurement/zzwt;)Lcom/google/android/gms/internal/measurement/zzwt;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
