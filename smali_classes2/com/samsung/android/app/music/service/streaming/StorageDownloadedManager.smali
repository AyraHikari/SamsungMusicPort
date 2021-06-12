.class public final Lcom/samsung/android/app/music/service/streaming/StorageDownloadedManager;
.super Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileChain;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/service/streaming/StorageDownloadedManager$DcfFile;,
        Lcom/samsung/android/app/music/service/streaming/StorageDownloadedManager$StorageFile;,
        Lcom/samsung/android/app/music/service/streaming/StorageDownloadedManager$Milk;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/samsung/android/app/music/service/streaming/StorageDownloadedManager;

.field private static final b:Lcom/samsung/android/app/music/service/streaming/StorageDownloadedManager$Milk;


# instance fields
.field private final c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 58
    new-instance v0, Lcom/samsung/android/app/music/service/streaming/StorageDownloadedManager$Milk;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/service/streaming/StorageDownloadedManager$Milk;-><init>(Lcom/samsung/android/app/music/service/streaming/StorageDownloadedManager$1;)V

    sput-object v0, Lcom/samsung/android/app/music/service/streaming/StorageDownloadedManager;->b:Lcom/samsung/android/app/music/service/streaming/StorageDownloadedManager$Milk;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileChain;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/samsung/android/app/music/service/streaming/StorageDownloadedManager;->c:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/streaming/StorageDownloadedManager;
    .locals 2

    .line 63
    sget-object v0, Lcom/samsung/android/app/music/service/streaming/StorageDownloadedManager;->a:Lcom/samsung/android/app/music/service/streaming/StorageDownloadedManager;

    if-nez v0, :cond_1

    .line 64
    const-class v0, Lcom/samsung/android/app/music/service/streaming/StorageDownloadedManager;

    monitor-enter v0

    .line 65
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/music/service/streaming/StorageDownloadedManager;->a:Lcom/samsung/android/app/music/service/streaming/StorageDownloadedManager;

    if-nez v1, :cond_0

    .line 66
    new-instance v1, Lcom/samsung/android/app/music/service/streaming/StorageDownloadedManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/service/streaming/StorageDownloadedManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/app/music/service/streaming/StorageDownloadedManager;->a:Lcom/samsung/android/app/music/service/streaming/StorageDownloadedManager;

    .line 68
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 70
    :cond_1
    :goto_0
    sget-object p0, Lcom/samsung/android/app/music/service/streaming/StorageDownloadedManager;->a:Lcom/samsung/android/app/music/service/streaming/StorageDownloadedManager;

    return-object p0
.end method

.method private a(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 98
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->id:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->parseCp(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 99
    new-instance v0, Lcom/samsung/android/app/music/service/streaming/StorageDownloadedManager$StorageFile;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/service/streaming/StorageDownloadedManager$StorageFile;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 102
    :cond_0
    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->id:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/streaming/StorageDownloadedManager;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 103
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    const-string v0, "http"

    .line 107
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 108
    new-instance v0, Lcom/samsung/android/app/music/service/streaming/StorageDownloadedManager$DcfFile;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/service/streaming/StorageDownloadedManager$DcfFile;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 111
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    return-object v1

    .line 115
    :cond_3
    new-instance v0, Lcom/samsung/android/app/music/service/streaming/StorageDownloadedManager$StorageFile;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/service/streaming/StorageDownloadedManager$StorageFile;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StorageManager> LifeCycle: [id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 52
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "%-50s | %-20s | %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    const/4 p1, 0x2

    aput-object p3, v2, p1

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "SMUSIC-SV-PlayerServer"

    .line 53
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)Z
    .locals 0

    .line 30
    invoke-static {p0}, Lcom/samsung/android/app/music/service/streaming/StorageDownloadedManager;->c(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "1"

    .line 122
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->parseFullSong(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 126
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->parseCp(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    return-object v1

    .line 129
    :cond_1
    sget-object v0, Lcom/samsung/android/app/music/service/streaming/StorageDownloadedManager;->b:Lcom/samsung/android/app/music/service/streaming/StorageDownloadedManager$Milk;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/streaming/StorageDownloadedManager;->c:Landroid/content/Context;

    invoke-static {v0, v1, p1}, Lcom/samsung/android/app/music/service/streaming/StorageDownloadedManager$Milk;->a(Lcom/samsung/android/app/music/service/streaming/StorageDownloadedManager$Milk;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static c(Ljava/lang/String;)Z
    .locals 1

    .line 136
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 140
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected request(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;
    .locals 3

    .line 86
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/streaming/StorageDownloadedManager;->a(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->id:Ljava/lang/String;

    const-string v1, "find!"

    const-string v2, ""

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/app/music/service/streaming/StorageDownloadedManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method
