.class public Lcom/samsung/android/app/music/util/UserLogManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile f:Lcom/samsung/android/app/music/util/UserLogManager;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private final g:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "UserLogManager-"

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UserLogManager - context.getFilesDir().getParent() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "UserLogManager-"

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UserLogManager - context.getFilesDir().getAbsolutePath() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 73
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iput-object p1, p0, Lcom/samsung/android/app/music/util/UserLogManager;->g:Landroid/content/Context;

    .line 78
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/app/music/util/UserLogManager;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/logs/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/util/UserLogManager;->a:Ljava/lang/String;

    .line 80
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/util/UserLogManager;->b:Ljava/util/List;

    .line 81
    iget-object p1, p0, Lcom/samsung/android/app/music/util/UserLogManager;->b:Ljava/util/List;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/music/util/UserLogManager;->g:Landroid/content/Context;

    .line 82
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/databases/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rest_api_history_db"

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 81
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object p1, p0, Lcom/samsung/android/app/music/util/UserLogManager;->b:Ljava/util/List;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/music/util/UserLogManager;->g:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/databases/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rest_api_history_db-shm"

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object p1, p0, Lcom/samsung/android/app/music/util/UserLogManager;->b:Ljava/util/List;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/music/util/UserLogManager;->g:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/databases/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rest_api_history_db-wal"

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object p1, p0, Lcom/samsung/android/app/music/util/UserLogManager;->b:Ljava/util/List;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/music/util/UserLogManager;->g:Landroid/content/Context;

    .line 88
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/databases/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "setting.db"

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object p1, p0, Lcom/samsung/android/app/music/util/UserLogManager;->b:Ljava/util/List;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/music/util/UserLogManager;->g:Landroid/content/Context;

    .line 90
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/databases/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "setting.db-shm"

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 89
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object p1, p0, Lcom/samsung/android/app/music/util/UserLogManager;->b:Ljava/util/List;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/music/util/UserLogManager;->g:Landroid/content/Context;

    .line 92
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/databases/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "setting.db-wal"

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 91
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object p1, p0, Lcom/samsung/android/app/music/util/UserLogManager;->b:Ljava/util/List;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/music/util/UserLogManager;->g:Landroid/content/Context;

    .line 94
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/databases/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "smusic.db"

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object p1, p0, Lcom/samsung/android/app/music/util/UserLogManager;->b:Ljava/util/List;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/music/util/UserLogManager;->g:Landroid/content/Context;

    .line 96
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/databases/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "smusic.db-shm"

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 95
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object p1, p0, Lcom/samsung/android/app/music/util/UserLogManager;->b:Ljava/util/List;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/music/util/UserLogManager;->g:Landroid/content/Context;

    .line 98
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/databases/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "smusic.db-wal"

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 97
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    iget-object p1, p0, Lcom/samsung/android/app/music/util/UserLogManager;->b:Ljava/util/List;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/music/util/UserLogManager;->g:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/shared_prefs/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "music_service_pref.xml"

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object p1, p0, Lcom/samsung/android/app/music/util/UserLogManager;->b:Ljava/util/List;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/music/util/UserLogManager;->g:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/shared_prefs/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "radio_queue_pref.xml"

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object p1, p0, Lcom/samsung/android/app/music/util/UserLogManager;->b:Ljava/util/List;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/music/util/UserLogManager;->g:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/shared_prefs/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "settings_cache_pref.xml"

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object p1, p0, Lcom/samsung/android/app/music/util/UserLogManager;->b:Ljava/util/List;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/music/util/UserLogManager;->g:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/shared_prefs/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "music_player_pref.xml"

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "/data/log/music/"

    .line 109
    iput-object p1, p0, Lcom/samsung/android/app/music/util/UserLogManager;->c:Ljava/lang/String;

    const-string p1, "logcat.log"

    .line 111
    iput-object p1, p0, Lcom/samsung/android/app/music/util/UserLogManager;->d:Ljava/lang/String;

    const-string p1, "music_log.zip"

    .line 113
    iput-object p1, p0, Lcom/samsung/android/app/music/util/UserLogManager;->e:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/samsung/android/app/music/util/UserLogManager;
    .locals 2

    .line 60
    sget-object v0, Lcom/samsung/android/app/music/util/UserLogManager;->f:Lcom/samsung/android/app/music/util/UserLogManager;

    if-nez v0, :cond_1

    .line 61
    const-class v0, Lcom/samsung/android/app/music/util/UserLogManager;

    monitor-enter v0

    .line 62
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/music/util/UserLogManager;->f:Lcom/samsung/android/app/music/util/UserLogManager;

    if-nez v1, :cond_0

    .line 63
    new-instance v1, Lcom/samsung/android/app/music/util/UserLogManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/util/UserLogManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/app/music/util/UserLogManager;->f:Lcom/samsung/android/app/music/util/UserLogManager;

    .line 65
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 67
    :cond_1
    :goto_0
    sget-object p0, Lcom/samsung/android/app/music/util/UserLogManager;->f:Lcom/samsung/android/app/music/util/UserLogManager;

    return-object p0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/util/UserLogManager;)Ljava/lang/String;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/samsung/android/app/music/util/UserLogManager;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/util/UserLogManager;)Ljava/lang/String;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/samsung/android/app/music/util/UserLogManager;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/samsung/android/app/music/util/UserLogManager;)Ljava/lang/String;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/samsung/android/app/music/util/UserLogManager;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/samsung/android/app/music/util/UserLogManager;)Ljava/lang/String;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/samsung/android/app/music/util/UserLogManager;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/samsung/android/app/music/util/UserLogManager;)Ljava/util/List;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/samsung/android/app/music/util/UserLogManager;->b:Ljava/util/List;

    return-object p0
.end method

.method static synthetic f(Lcom/samsung/android/app/music/util/UserLogManager;)Landroid/content/Context;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/samsung/android/app/music/util/UserLogManager;->g:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public a()Lio/reactivex/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 277
    new-instance v0, Lcom/samsung/android/app/music/util/UserLogManager$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/util/UserLogManager$3;-><init>(Lcom/samsung/android/app/music/util/UserLogManager;)V

    invoke-static {v0}, Lio/reactivex/Observable;->a(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v2, 0x1

    .line 285
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lio/reactivex/Observable;->a(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v2

    const-wide/16 v3, 0xf

    invoke-virtual {v0, v3, v4, v1, v2}, Lio/reactivex/Observable;->a(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 7

    const-string v0, "UserLogManager-"

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeLogFiles - folderPath : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string p1, "UserLogManager-"

    const-string v0, "removeLogFiles - folderPath is not directory"

    .line 121
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 125
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    const/4 v2, 0x1

    if-nez p1, :cond_1

    return v2

    .line 130
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object p1

    .line 131
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_3

    .line 132
    new-instance v3, Ljava/io/File;

    aget-object v4, p1, v1

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v4, "UserLogManager-"

    .line 133
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeLogFiles - temp : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "UserLogManager-"

    const-string v4, "removeLogFiles - Deleted"

    .line 137
    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v3, "UserLogManager-"

    const-string v4, "removeLogFiles - Delete Fail"

    .line 139
    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const-string v0, "UserLogManager-"

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeLogFile - folderPath : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", logFileName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 184
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 186
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8

    .line 198
    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    .line 200
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    .line 211
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_2
    const-string p2, "logcat"

    const-string v2, "-v"

    const-string v3, "time"

    const-string v4, "-d"

    .line 213
    filled-new-array {p2, v2, v3, v4}, [Ljava/lang/String;

    move-result-object p2

    .line 214
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p2

    .line 216
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    .line 217
    invoke-virtual {p2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    invoke-direct {v3, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 p2, 0x1000

    invoke-direct {v2, v3, p2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    const-string p2, "line.separator"

    .line 220
    invoke-static {p2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 222
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 223
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    goto :goto_0

    .line 235
    :cond_2
    :try_start_3
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_5

    .line 237
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 246
    :try_start_5
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    .line 265
    :try_start_6
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    const-string p2, "logcat"

    const-string v1, "-c"

    filled-new-array {p2, v1}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    const-string p2, "UserLogManager-"

    const-string v1, "makeLogFile - Clear Log : Exception"

    .line 267
    invoke-static {p2, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v0

    :catch_1
    move-exception p1

    :try_start_7
    const-string p2, "UserLogManager-"

    const-string v1, "makeLogFile - Writing File : IOException - 2"

    .line 248
    invoke-static {p2, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_5

    return v0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    :try_start_8
    const-string v1, "UserLogManager-"

    const-string v2, "makeLogFile - Writing File : IOException - 1"

    .line 239
    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 246
    :try_start_9
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_5

    return v0

    :catch_3
    move-exception p1

    :try_start_a
    const-string p2, "UserLogManager-"

    const-string v1, "makeLogFile - Writing File : IOException - 2"

    .line 248
    invoke-static {p2, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_5

    return v0

    .line 246
    :goto_1
    :try_start_b
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_5

    .line 251
    :try_start_c
    throw p1

    :catch_4
    move-exception p1

    const-string p2, "UserLogManager-"

    const-string v1, "makeLogFile - Writing File : IOException - 2"

    .line 248
    invoke-static {p2, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_5

    return v0

    :catch_5
    move-exception p1

    const-string p2, "UserLogManager-"

    const-string v1, "makeLogFile - Writing File : FileNotFoundException"

    .line 256
    invoke-static {p2, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    return v0

    :catch_6
    move-exception p1

    const-string p2, "UserLogManager-"

    const-string v1, "makeLogFile - Logging : Exception"

    .line 227
    invoke-static {p2, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v0

    :catch_7
    move-exception p1

    const-string p2, "UserLogManager-"

    const-string v1, "makeLogFile - Checking Log File : Exception"

    .line 203
    invoke-static {p2, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v0

    :catch_8
    move-exception p1

    const-string p2, "UserLogManager-"

    const-string v1, "makeLogFile - Checking Floder : Exception"

    .line 189
    invoke-static {p2, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const-string v0, "UserLogManager-"

    .line 311
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zipDir - inputFolderPath : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", outZipPath : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", zipFileName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 322
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 324
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "UserLogManager-"

    .line 325
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "zipDir - outZipPath doesn\'t exist : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 329
    :cond_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 330
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "UserLogManager-"

    .line 331
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "zipDir - zip file exist : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 335
    :cond_1
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 336
    :try_start_1
    new-instance p2, Ljava/util/zip/ZipOutputStream;

    invoke-direct {p2, v2}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 337
    :try_start_2
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 338
    invoke-virtual {p3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    const-string v3, "UserLogManager-"

    .line 340
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "zipDir - Zip directory: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v3, p3}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 342
    :goto_0
    array-length v3, p1

    if-ge p3, v3, :cond_3

    const-string v3, "UserLogManager-"

    .line 343
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "zipDir - Adding file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, p1, p3

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x400

    .line 345
    new-array v3, v3, [B

    .line 346
    new-instance v4, Ljava/io/FileInputStream;

    aget-object v5, p1, p3

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 347
    :try_start_3
    new-instance v1, Ljava/util/zip/ZipEntry;

    aget-object v5, p1, p3

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 349
    :goto_1
    invoke-virtual {v4, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_2

    .line 350
    invoke-virtual {p2, v3, v0, v1}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_1

    .line 352
    :cond_2
    invoke-virtual {p2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 353
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    add-int/lit8 p3, p3, 0x1

    move-object v1, v4

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    .line 355
    :cond_3
    :try_start_4
    invoke-virtual {p2}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    const/4 p1, 0x1

    return p1

    :catch_1
    move-exception p1

    move-object v4, v1

    :goto_2
    move-object v1, p2

    goto :goto_3

    :catch_2
    move-exception p1

    move-object v4, v1

    goto :goto_3

    :catch_3
    move-exception p1

    move-object v2, v1

    move-object v4, v2

    :goto_3
    const-string p2, "UserLogManager-"

    const-string p3, "zipDir - IOException"

    .line 359
    invoke-static {p2, p3}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    if-eqz v2, :cond_4

    .line 364
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception p1

    .line 366
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_4
    :goto_4
    if-eqz v1, :cond_5

    .line 372
    :try_start_6
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_5

    :catch_5
    move-exception p1

    .line 374
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_5
    :goto_5
    if-eqz v4, :cond_6

    .line 380
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_6

    :catch_6
    move-exception p1

    .line 382
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_6
    :goto_6
    return v0
.end method

.method public b()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 472
    new-instance v0, Lcom/samsung/android/app/music/util/UserLogManager$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/util/UserLogManager$5;-><init>(Lcom/samsung/android/app/music/util/UserLogManager;)V

    invoke-static {v0}, Lio/reactivex/Observable;->a(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2

    const-string v0, "UserLogManager-"

    const-string v1, "changeZipFilePermission"

    .line 555
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x1fd

    .line 559
    :try_start_0
    invoke-static {p1, v0}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "UserLogManager-"

    const-string v1, "changeZipFilePermission - Exception"

    .line 561
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 p1, 0x1

    .line 565
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const-string v0, "UserLogManager-"

    .line 391
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "copyFile - inputPath : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", inputFile : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", outputPath : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 398
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 399
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 400
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 403
    :cond_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 404
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    const-string p1, "UserLogManager-"

    const-string p2, "file not exist"

    .line 405
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 409
    :cond_1
    new-instance v2, Ljava/io/FileInputStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 410
    :try_start_1
    new-instance p1, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    const/16 p2, 0x400

    .line 412
    :try_start_2
    new-array p2, p2, [B

    .line 414
    :goto_0
    invoke-virtual {v2, p2}, Ljava/io/InputStream;->read([B)I

    move-result p3

    const/4 v0, -0x1

    if-eq p3, v0, :cond_2

    .line 415
    invoke-virtual {p1, p2, v1, p3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 417
    :cond_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 420
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 421
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return v3

    :catch_0
    move-exception p2

    move-object v0, v2

    move-object v5, p2

    move-object p2, p1

    move-object p1, v5

    goto :goto_1

    :catch_1
    move-exception p2

    move-object v0, v2

    move-object v5, p2

    move-object p2, p1

    move-object p1, v5

    goto :goto_4

    :catch_2
    move-exception p1

    move-object p2, v0

    move-object v0, v2

    goto :goto_1

    :catch_3
    move-exception p1

    move-object p2, v0

    move-object v0, v2

    goto :goto_4

    :catch_4
    move-exception p1

    move-object p2, v0

    :goto_1
    const-string p3, "UserLogManager-"

    const-string v2, "Exception"

    .line 447
    invoke-static {p3, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz v0, :cond_3

    .line 452
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    goto :goto_2

    :catch_5
    move-exception p1

    .line 454
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_2
    if-eqz p2, :cond_4

    .line 460
    :try_start_4
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 461
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    goto :goto_3

    :catch_6
    move-exception p1

    .line 463
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_4
    :goto_3
    return v1

    :catch_7
    move-exception p1

    move-object p2, v0

    :goto_4
    const-string p3, "UserLogManager-"

    const-string v2, "FileNotFoundException"

    .line 425
    invoke-static {p3, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    if-eqz v0, :cond_5

    .line 430
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8

    goto :goto_5

    :catch_8
    move-exception p1

    .line 432
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_5
    :goto_5
    if-eqz p2, :cond_6

    .line 438
    :try_start_6
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 439
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_9

    goto :goto_6

    :catch_9
    move-exception p1

    .line 441
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_6
    :goto_6
    return v1
.end method

.method public c()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 509
    new-instance v0, Lcom/samsung/android/app/music/util/UserLogManager$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/util/UserLogManager$7;-><init>(Lcom/samsung/android/app/music/util/UserLogManager;)V

    invoke-static {v0}, Lio/reactivex/Observable;->a(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public d()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "UserLogManager-"

    const-string v1, "makeLogZipFile"

    .line 522
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    invoke-virtual {p0}, Lcom/samsung/android/app/music/util/UserLogManager;->c()Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/util/UserLogManager$8;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/util/UserLogManager$8;-><init>(Lcom/samsung/android/app/music/util/UserLogManager;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public e()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "UserLogManager-"

    const-string v1, "makeLogZipFile"

    .line 613
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    invoke-virtual {p0}, Lcom/samsung/android/app/music/util/UserLogManager;->a()Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/util/UserLogManager$12;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/util/UserLogManager$12;-><init>(Lcom/samsung/android/app/music/util/UserLogManager;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public f()V
    .locals 2

    const-string v0, "UserLogManager-"

    const-string v1, "makeLogZipFileForSamsungMembers"

    .line 624
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    invoke-virtual {p0}, Lcom/samsung/android/app/music/util/UserLogManager;->e()Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/util/UserLogManager$13;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/util/UserLogManager$13;-><init>(Lcom/samsung/android/app/music/util/UserLogManager;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public g()V
    .locals 2

    const-string v0, "UserLogManager-"

    const-string v1, "sendLogToServer"

    .line 646
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    invoke-virtual {p0}, Lcom/samsung/android/app/music/util/UserLogManager;->e()Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/util/UserLogManager$15;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/util/UserLogManager$15;-><init>(Lcom/samsung/android/app/music/util/UserLogManager;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 660
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/util/UserLogManager$14;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/util/UserLogManager$14;-><init>(Lcom/samsung/android/app/music/util/UserLogManager;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
