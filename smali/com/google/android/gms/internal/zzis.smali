.class public final Lcom/google/android/gms/internal/zzis;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/zzix;

.field private final b:Lcom/google/android/gms/internal/zzjc;

.field private final c:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzis;->c:Z

    new-instance v0, Lcom/google/android/gms/internal/zzix;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzix;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzis;->a:Lcom/google/android/gms/internal/zzix;

    new-instance v0, Lcom/google/android/gms/internal/zzjc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzjc;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzis;->b:Lcom/google/android/gms/internal/zzjc;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzis;->b()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzix;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzis;->a:Lcom/google/android/gms/internal/zzix;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzis;->c:Z

    new-instance p1, Lcom/google/android/gms/internal/zzjc;

    invoke-direct {p1}, Lcom/google/android/gms/internal/zzjc;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzis;->b:Lcom/google/android/gms/internal/zzjc;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzis;->b()V

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/zzis;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzis;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzis;-><init>()V

    return-object v0
.end method

.method private final declared-synchronized b()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzis;->b:Lcom/google/android/gms/internal/zzjc;

    new-instance v1, Lcom/google/android/gms/internal/zzja;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzja;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/zzjc;->d:Lcom/google/android/gms/internal/zzja;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzis;->b:Lcom/google/android/gms/internal/zzjc;

    new-instance v1, Lcom/google/android/gms/internal/zzjb;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzjb;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/zzjc;->c:Lcom/google/android/gms/internal/zzjb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static c()[J
    .locals 7

    invoke-static {}, Lcom/google/android/gms/internal/zznh;->b()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v5, v2, v3

    :try_start_0
    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v5, "Experiment ID is not a number"

    invoke-static {v5}, Lcom/google/android/gms/internal/zzagf;->a(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [J

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_2
    if-ge v3, v2, :cond_2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    aput-wide v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/google/android/gms/internal/zzit;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzis;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzis;->b:Lcom/google/android/gms/internal/zzjc;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/zzit;->a(Lcom/google/android/gms/internal/zzjc;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Lcom/google/android/gms/internal/zziu$zza$zzb;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzis;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzis;->b:Lcom/google/android/gms/internal/zzjc;

    invoke-static {}, Lcom/google/android/gms/internal/zzis;->c()[J

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzjc;->b:[J

    iget-object v0, p0, Lcom/google/android/gms/internal/zzis;->a:Lcom/google/android/gms/internal/zzix;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzis;->b:Lcom/google/android/gms/internal/zzjc;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzfjs;->zzc(Lcom/google/android/gms/internal/zzfjs;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzix;->a([B)Lcom/google/android/gms/internal/zziz;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zziu$zza$zzb;->zzhq()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zziz;->b(I)Lcom/google/android/gms/internal/zziz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zziz;->a()V

    const-string v0, "Logging Event with event code : "

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zziu$zza$zzb;->zzhq()I

    move-result p1

    const/16 v1, 0xa

    invoke-static {p1, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/zzagf;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
