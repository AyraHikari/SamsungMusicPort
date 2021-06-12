.class public final Lcom/google/android/gms/internal/measurement/zzsi;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/Object;

.field private static final b:Ljava/util/Map;
    .annotation build Landroid/support/annotation/GuardedBy;
        value = "loadersLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "Lcom/google/android/gms/internal/measurement/zzsi;",
            ">;"
        }
    .end annotation
.end field

.field private static final i:[Ljava/lang/String;


# instance fields
.field private final c:Landroid/content/ContentResolver;

.field private final d:Landroid/net/Uri;

.field private final e:Ljava/lang/Object;

.field private volatile f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/lang/Object;

.field private final h:Ljava/util/List;
    .annotation build Landroid/support/annotation/GuardedBy;
        value = "listenersLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzsk;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzsi;->a:Ljava/lang/Object;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzsi;->b:Ljava/util/Map;

    const-string v0, "key"

    const-string v1, "value"

    .line 49
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzsi;->i:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzsi;->e:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzsi;->g:Ljava/lang/Object;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzsi;->h:Ljava/util/List;

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzsi;->c:Landroid/content/ContentResolver;

    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzsi;->d:Landroid/net/Uri;

    .line 7
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzsi;->c:Landroid/content/ContentResolver;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzsj;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/measurement/zzsj;-><init>(Lcom/google/android/gms/internal/measurement/zzsi;Landroid/os/Handler;)V

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public static a(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/google/android/gms/internal/measurement/zzsi;
    .locals 2

    .line 9
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzsi;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 10
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzsi;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzsi;

    if-nez v1, :cond_0

    .line 12
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzsi;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/measurement/zzsi;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 13
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzsi;->b:Ljava/util/Map;

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/zzsi;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzsi;->d()V

    return-void
.end method

.method private final c()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 29
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 30
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzsi;->c:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzsi;->d:Landroid/net/Uri;

    sget-object v3, Lcom/google/android/gms/internal/measurement/zzsi;->i:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    .line 32
    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 33
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 34
    :cond_0
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 36
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_1
    return-object v0

    :catch_0
    const-string v0, "ConfigurationContentLoader"

    const-string v1, "PhenotypeFlag unable to load ContentProvider, using default values"

    .line 39
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method private final d()V
    .locals 3

    .line 41
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzsi;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 42
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzsi;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzsk;

    .line 43
    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/zzsk;->a()V

    goto :goto_0

    .line 45
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


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "gms:phenotype:phenotype_flag:debug_disable_caching"

    const/4 v1, 0x0

    .line 16
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzsl;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzsi;->c()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzsi;->f:Ljava/util/Map;

    :goto_0
    if-nez v0, :cond_2

    .line 19
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzsi;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 20
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzsi;->f:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 22
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzsi;->c()Ljava/util/Map;

    move-result-object v0

    .line 23
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzsi;->f:Ljava/util/Map;

    .line 24
    :cond_1
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    return-object v0

    .line 25
    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final b()V
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzsi;->e:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 27
    :try_start_0
    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzsi;->f:Ljava/util/Map;

    .line 28
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
