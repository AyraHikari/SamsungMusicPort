.class public Lcom/samsung/android/app/musiclibrary/ui/martworkcache/utils/DiskUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/lang/Object;

.field private static volatile c:Ljava/io/File;

.field private static final d:Ljava/lang/Object;

.field private static volatile e:Ljava/io/File;

.field private static final f:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/utils/DiskUtils;->a:Ljava/util/Map;

    .line 20
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/utils/DiskUtils;->b:Ljava/lang/Object;

    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/utils/DiskUtils;->d:Ljava/lang/Object;

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/utils/DiskUtils;->f:Ljava/lang/Object;

    return-void
.end method

.method private static a(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .line 59
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/utils/DiskUtils;->c:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 60
    sget-object p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/utils/DiskUtils;->c:Ljava/io/File;

    return-object p0

    .line 62
    :cond_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/utils/DiskUtils;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 63
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/utils/DiskUtils;->c:Ljava/io/File;

    if-nez v1, :cond_1

    .line 64
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    sput-object p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/utils/DiskUtils;->c:Ljava/io/File;

    .line 66
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    sget-object p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/utils/DiskUtils;->c:Ljava/io/File;

    return-object p0

    :catchall_0
    move-exception p0

    .line 66
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 38
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/utils/DiskUtils;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 39
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/utils/DiskUtils;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, ""

    .line 42
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/utils/DiskUtils;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 43
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/utils/DiskUtils;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 44
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/utils/DiskUtils;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 45
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/utils/DiskUtils;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 47
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 48
    sget-object p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/utils/DiskUtils;->a:Ljava/util/Map;

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    :cond_2
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static b(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .line 71
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/utils/DiskUtils;->e:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 72
    sget-object p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/utils/DiskUtils;->e:Ljava/io/File;

    return-object p0

    .line 74
    :cond_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/utils/DiskUtils;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 75
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/utils/DiskUtils;->e:Ljava/io/File;

    if-nez v1, :cond_1

    .line 76
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object p0

    sput-object p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/utils/DiskUtils;->e:Ljava/io/File;

    .line 78
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    sget-object p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/utils/DiskUtils;->e:Ljava/io/File;

    return-object p0

    :catchall_0
    move-exception p0

    .line 78
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 55
    new-instance v0, Ljava/io/File;

    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/utils/DiskUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
