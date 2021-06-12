.class final Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadedFileScanner;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadedFileScanner$OnDownloadedFileScanListener;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private b:Landroid/media/MediaScannerConnection;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadedFileScanner;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadedFileScanner;)Landroid/media/MediaScannerConnection;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadedFileScanner;->b:Landroid/media/MediaScannerConnection;

    return-object p0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadedFileScanner;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadedFileScanner;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "track"

    const-string v1, "_size"

    const-string v2, "duration"

    .line 63
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "_data = ?"

    const/4 v0, 0x1

    .line 66
    new-array v7, v0, [Ljava/lang/String;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v7, v1

    .line 68
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadedFileScanner;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    .line 69
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    .line 71
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-eq v3, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "track"

    .line 76
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "_size"

    .line 77
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "duration"

    .line 78
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 80
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "%s@%s@%s"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v3, v8, v1

    aput-object v4, v8, v0

    const/4 v0, 0x2

    aput-object v5, v8, v0

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SV"

    .line 81
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DownloadQueue_DownloadedFileScanner | getLocalTrackExt() - localTrackExt: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 83
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v2, v0

    goto :goto_1

    :cond_2
    :goto_0
    :try_start_1
    const-string v0, "SV"

    const-string v1, "DownloadQueue_DownloadedFileScanner | getTrackId() - Empty cursor."

    .line 72
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_3

    .line 83
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v2

    .line 68
    :goto_1
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    if-eqz p1, :cond_5

    if-eqz v2, :cond_4

    .line 83
    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    invoke-virtual {v2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_4
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_5
    :goto_3
    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadedFileScanner$OnDownloadedFileScanListener;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadedFileScanner$OnDownloadedFileScanListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 38
    invoke-virtual {p0, p1, v0, p2}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadedFileScanner;->a(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadedFileScanner$OnDownloadedFileScanListener;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadedFileScanner$OnDownloadedFileScanListener;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadedFileScanner$OnDownloadedFileScanListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 43
    new-instance v0, Landroid/media/MediaScannerConnection;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadedFileScanner;->a:Landroid/content/Context;

    new-instance v2, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadedFileScanner$1;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadedFileScanner$1;-><init>(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadedFileScanner;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadedFileScanner$OnDownloadedFileScanListener;)V

    invoke-direct {v0, v1, v2}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadedFileScanner;->b:Landroid/media/MediaScannerConnection;

    .line 59
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadedFileScanner;->b:Landroid/media/MediaScannerConnection;

    invoke-virtual {p1}, Landroid/media/MediaScannerConnection;->connect()V

    return-void
.end method
