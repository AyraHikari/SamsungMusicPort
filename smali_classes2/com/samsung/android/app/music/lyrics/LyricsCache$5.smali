.class Lcom/samsung/android/app/music/lyrics/LyricsCache$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/lyrics/LyricsCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final DataColumnIdx:I = 0x1

.field private static final IdColumnIdx:I


# instance fields
.field private final mProjection:[Ljava/lang/String;

.field private sortOrder:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/android/app/music/lyrics/LyricsCache;

.field private where:Ljava/lang/String;

.field private final whereArgs:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/lyrics/LyricsCache;)V
    .locals 1

    .line 320
    iput-object p1, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache$5;->this$0:Lcom/samsung/android/app/music/lyrics/LyricsCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "_id"

    const-string v0, "_data"

    .line 322
    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache$5;->mProjection:[Ljava/lang/String;

    const/4 p1, 0x0

    .line 330
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache$5;->whereArgs:[Ljava/lang/String;

    .line 332
    iput-object p1, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache$5;->where:Ljava/lang/String;

    .line 334
    iput-object p1, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache$5;->sortOrder:Ljava/lang/String;

    return-void
.end method

.method private getAudioId(Landroid/database/Cursor;)J
    .locals 2

    const/4 v0, 0x0

    .line 406
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private getPath(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 410
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private requestSyncedLyric(ILcom/samsung/android/app/music/lyrics/LyricsCache$LyricsHolder;J)V
    .locals 7

    .line 371
    invoke-virtual {p0, p1, p3, p4}, Lcom/samsung/android/app/music/lyrics/LyricsCache$5;->getFilename(IJ)Ljava/lang/String;

    move-result-object v4

    .line 382
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->EMPTY_LYRICS:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    iput-object p1, p2, Lcom/samsung/android/app/music/lyrics/LyricsCache$LyricsHolder;->lyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    .line 386
    iget-object p1, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache$5;->this$0:Lcom/samsung/android/app/music/lyrics/LyricsCache;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/lyrics/LyricsCache;->ensureLyricsLoader()V

    .line 387
    iget-object p1, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache$5;->this$0:Lcom/samsung/android/app/music/lyrics/LyricsCache;

    invoke-static {p1}, Lcom/samsung/android/app/music/lyrics/LyricsCache;->access$1000(Lcom/samsung/android/app/music/lyrics/LyricsCache;)Lcom/samsung/android/app/music/lyrics/SyncLyricsLoader;

    move-result-object v0

    invoke-static {p2}, Lcom/samsung/android/app/music/lyrics/LyricsCache$LyricsHolder;->access$700(Lcom/samsung/android/app/music/lyrics/LyricsCache$LyricsHolder;)I

    move-result v1

    iget-wide v2, p2, Lcom/samsung/android/app/music/lyrics/LyricsCache$LyricsHolder;->audioId:J

    new-instance v5, Lcom/samsung/android/app/music/lyrics/LyricsCache$5$1;

    invoke-direct {v5, p0, p2, p3, p4}, Lcom/samsung/android/app/music/lyrics/LyricsCache$5$1;-><init>(Lcom/samsung/android/app/music/lyrics/LyricsCache$5;Lcom/samsung/android/app/music/lyrics/LyricsCache$LyricsHolder;J)V

    .line 402
    invoke-static {p2}, Lcom/samsung/android/app/music/lyrics/LyricsCache$LyricsHolder;->access$600(Lcom/samsung/android/app/music/lyrics/LyricsCache$LyricsHolder;)Ljava/lang/Object;

    move-result-object v6

    .line 387
    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/app/music/lyrics/SyncLyricsLoader;->requestLyric(IJLjava/lang/String;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/ILyricsLoader2$OnLyricsLoadFinishedListener;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method getFilename(IJ)Ljava/lang/String;
    .locals 6

    .line 421
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 426
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache$5;->this$0:Lcom/samsung/android/app/music/lyrics/LyricsCache;

    invoke-static {v2}, Lcom/samsung/android/app/music/lyrics/LyricsCache;->access$1200(Lcom/samsung/android/app/music/lyrics/LyricsCache;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache$5;->this$0:Lcom/samsung/android/app/music/lyrics/LyricsCache;

    .line 427
    invoke-static {v2}, Lcom/samsung/android/app/music/lyrics/LyricsCache;->access$1300(Lcom/samsung/android/app/music/lyrics/LyricsCache;)Landroid/database/Cursor;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache$5;->this$0:Lcom/samsung/android/app/music/lyrics/LyricsCache;

    invoke-static {v2}, Lcom/samsung/android/app/music/lyrics/LyricsCache;->access$300(Lcom/samsung/android/app/music/lyrics/LyricsCache;)J

    move-result-wide v2

    const/4 v4, 0x0

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1388

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    .line 428
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache$5;->this$0:Lcom/samsung/android/app/music/lyrics/LyricsCache;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/lyrics/LyricsCache;->access$1402(Lcom/samsung/android/app/music/lyrics/LyricsCache;Z)Z

    .line 429
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/lyrics/LyricsCache$5;->getFilenameCursor(IJ)Ljava/lang/String;

    move-result-object v2

    .line 430
    iget-object v3, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache$5;->this$0:Lcom/samsung/android/app/music/lyrics/LyricsCache;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/lyrics/LyricsCache;->access$1402(Lcom/samsung/android/app/music/lyrics/LyricsCache;Z)Z

    .line 431
    iget-object v3, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache$5;->this$0:Lcom/samsung/android/app/music/lyrics/LyricsCache;

    invoke-static {v3}, Lcom/samsung/android/app/music/lyrics/LyricsCache;->access$1500(Lcom/samsung/android/app/music/lyrics/LyricsCache;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 432
    iget-object v3, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache$5;->this$0:Lcom/samsung/android/app/music/lyrics/LyricsCache;

    invoke-static {v3}, Lcom/samsung/android/app/music/lyrics/LyricsCache;->access$400(Lcom/samsung/android/app/music/lyrics/LyricsCache;)V

    :cond_1
    if-eqz v2, :cond_2

    .line 434
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    return-object v2

    .line 437
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache$5;->this$0:Lcom/samsung/android/app/music/lyrics/LyricsCache;

    invoke-static {v2, v0, v1}, Lcom/samsung/android/app/music/lyrics/LyricsCache;->access$302(Lcom/samsung/android/app/music/lyrics/LyricsCache;J)J

    .line 441
    :cond_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/lyrics/LyricsCache$5;->getFilenameDirect(IJ)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 443
    throw p1
.end method

.method getFilenameCursor(IJ)Ljava/lang/String;
    .locals 12

    .line 499
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache$5;->this$0:Lcom/samsung/android/app/music/lyrics/LyricsCache;

    invoke-static {v0}, Lcom/samsung/android/app/music/lyrics/LyricsCache;->access$1300(Lcom/samsung/android/app/music/lyrics/LyricsCache;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache$5;->this$0:Lcom/samsung/android/app/music/lyrics/LyricsCache;

    invoke-static {v0}, Lcom/samsung/android/app/music/lyrics/LyricsCache;->access$1300(Lcom/samsung/android/app/music/lyrics/LyricsCache;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache$5;->this$0:Lcom/samsung/android/app/music/lyrics/LyricsCache;

    invoke-static {v0}, Lcom/samsung/android/app/music/lyrics/LyricsCache;->access$1800(Lcom/samsung/android/app/music/lyrics/LyricsCache;)I

    move-result v0

    if-eq v0, p1, :cond_3

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache$5;->sortOrder:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "%s ASC"

    .line 504
    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "_id"

    aput-object v5, v4, v2

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache$5;->sortOrder:Ljava/lang/String;

    .line 506
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache$5;->this$0:Lcom/samsung/android/app/music/lyrics/LyricsCache;

    invoke-static {v0}, Lcom/samsung/android/app/music/lyrics/LyricsCache;->access$1600(Lcom/samsung/android/app/music/lyrics/LyricsCache;)Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;->getMatchedUri(I)Landroid/net/Uri;

    move-result-object v5

    .line 507
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache$5;->this$0:Lcom/samsung/android/app/music/lyrics/LyricsCache;

    iget-object v4, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache$5;->this$0:Lcom/samsung/android/app/music/lyrics/LyricsCache;

    .line 508
    invoke-static {v4}, Lcom/samsung/android/app/music/lyrics/LyricsCache;->access$1700(Lcom/samsung/android/app/music/lyrics/LyricsCache;)Landroid/content/Context;

    move-result-object v4

    iget-object v6, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache$5;->mProjection:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache$5;->sortOrder:Ljava/lang/String;

    invoke-static/range {v4 .. v9}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 507
    invoke-static {v0, v4}, Lcom/samsung/android/app/music/lyrics/LyricsCache;->access$1302(Lcom/samsung/android/app/music/lyrics/LyricsCache;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 509
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache$5;->this$0:Lcom/samsung/android/app/music/lyrics/LyricsCache;

    invoke-static {v0}, Lcom/samsung/android/app/music/lyrics/LyricsCache;->access$1300(Lcom/samsung/android/app/music/lyrics/LyricsCache;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache$5;->this$0:Lcom/samsung/android/app/music/lyrics/LyricsCache;

    invoke-static {v0}, Lcom/samsung/android/app/music/lyrics/LyricsCache;->access$1300(Lcom/samsung/android/app/music/lyrics/LyricsCache;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_6

    .line 512
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache$5;->this$0:Lcom/samsung/android/app/music/lyrics/LyricsCache;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/lyrics/LyricsCache;->access$1802(Lcom/samsung/android/app/music/lyrics/LyricsCache;I)I

    .line 514
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache$5;->this$0:Lcom/samsung/android/app/music/lyrics/LyricsCache;

    invoke-static {p1}, Lcom/samsung/android/app/music/lyrics/LyricsCache;->access$1300(Lcom/samsung/android/app/music/lyrics/LyricsCache;)Landroid/database/Cursor;

    move-result-object p1

    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result p1

    if-gez p1, :cond_4

    .line 516
    iget-object p1, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache$5;->this$0:Lcom/samsung/android/app/music/lyrics/LyricsCache;

    invoke-static {p1}, Lcom/samsung/android/app/music/lyrics/LyricsCache;->access$1300(Lcom/samsung/android/app/music/lyrics/LyricsCache;)Landroid/database/Cursor;

    move-result-object p1

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    goto :goto_0

    .line 517
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache$5;->this$0:Lcom/samsung/android/app/music/lyrics/LyricsCache;

    invoke-static {v0}, Lcom/samsung/android/app/music/lyrics/LyricsCache;->access$1300(Lcom/samsung/android/app/music/lyrics/LyricsCache;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_5

    .line 518
    iget-object p1, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache$5;->this$0:Lcom/samsung/android/app/music/lyrics/LyricsCache;

    invoke-static {p1}, Lcom/samsung/android/app/music/lyrics/LyricsCache;->access$1300(Lcom/samsung/android/app/music/lyrics/LyricsCache;)Landroid/database/Cursor;

    move-result-object p1

    invoke-interface {p1}, Landroid/database/Cursor;->moveToLast()Z

    .line 520
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache$5;->this$0:Lcom/samsung/android/app/music/lyrics/LyricsCache;

    invoke-static {p1}, Lcom/samsung/android/app/music/lyrics/LyricsCache;->access$1300(Lcom/samsung/android/app/music/lyrics/LyricsCache;)Landroid/database/Cursor;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/lyrics/LyricsCache$5;->getAudioId(Landroid/database/Cursor;)J

    move-result-wide v4

    sub-long v4, p2, v4

    .line 521
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/16 v8, 0x400

    const-wide/16 v10, 0x0

    cmp-long p1, v6, v8

    if-lez p1, :cond_8

    cmp-long p1, v4, v10

    if-lez p1, :cond_6

    .line 531
    iget-object p1, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache$5;->this$0:Lcom/samsung/android/app/music/lyrics/LyricsCache;

    invoke-static {p1}, Lcom/samsung/android/app/music/lyrics/LyricsCache;->access$1300(Lcom/samsung/android/app/music/lyrics/LyricsCache;)Landroid/database/Cursor;

    move-result-object p1

    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    .line 532
    iget-object p1, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache$5;->this$0:Lcom/samsung/android/app/music/lyrics/LyricsCache;

    invoke-static {p1}, Lcom/samsung/android/app/music/lyrics/LyricsCache;->access$1300(Lcom/samsung/android/app/music/lyrics/LyricsCache;)Landroid/database/Cursor;

    move-result-object p1

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p1

    sub-int/2addr p1, v3

    goto :goto_1

    .line 535
    :cond_6
    iget-object p1, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache$5;->this$0:Lcom/samsung/android/app/music/lyrics/LyricsCache;

    invoke-static {p1}, Lcom/samsung/android/app/music/lyrics/LyricsCache;->access$1300(Lcom/samsung/android/app/music/lyrics/LyricsCache;)Landroid/database/Cursor;

    move-result-object p1

    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result p1

    :goto_1
    if-gt v2, p1, :cond_d

    add-int v0, v2, p1

    ushr-int/2addr v0, v3

    .line 540
    iget-object v4, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache$5;->this$0:Lcom/samsung/android/app/music/lyrics/LyricsCache;

    invoke-static {v4}, Lcom/samsung/android/app/music/lyrics/LyricsCache;->access$1300(Lcom/samsung/android/app/music/lyrics/LyricsCache;)Landroid/database/Cursor;

    move-result-object v4

    invoke-interface {v4, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 541
    iget-object v4, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache$5;->this$0:Lcom/samsung/android/app/music/lyrics/LyricsCache;

    invoke-static {v4}, Lcom/samsung/android/app/music/lyrics/LyricsCache;->access$1300(Lcom/samsung/android/app/music/lyrics/LyricsCache;)Landroid/database/Cursor;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/samsung/android/app/music/lyrics/LyricsCache$5;->getAudioId(Landroid/database/Cursor;)J

    move-result-wide v4

    cmp-long v4, v4, p2

    if-gez v4, :cond_7

    add-int/lit8 v0, v0, 0x1

    move v2, v0

    goto :goto_1

    :cond_7
    if-lez v4, :cond_d

    add-int/lit8 v0, v0, -0x1

    move p1, v0

    goto :goto_1

    :cond_8
    :goto_2
    int-to-long v8, v2

    cmp-long p1, v8, v6

    if-gez p1, :cond_d

    cmp-long p1, v4, v10

    if-lez p1, :cond_9

    .line 561
    iget-object p1, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache$5;->this$0:Lcom/samsung/android/app/music/lyrics/LyricsCache;

    invoke-static {p1}, Lcom/samsung/android/app/music/lyrics/LyricsCache;->access$1300(Lcom/samsung/android/app/music/lyrics/LyricsCache;)Landroid/database/Cursor;

    move-result-object p1

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_3

    .line 563
    :cond_9
    iget-object p1, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache$5;->this$0:Lcom/samsung/android/app/music/lyrics/LyricsCache;

    invoke-static {p1}, Lcom/samsung/android/app/music/lyrics/LyricsCache;->access$1300(Lcom/samsung/android/app/music/lyrics/LyricsCache;)Landroid/database/Cursor;

    move-result-object p1

    invoke-interface {p1}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 565
    :goto_3
    iget-object p1, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache$5;->this$0:Lcom/samsung/android/app/music/lyrics/LyricsCache;

    invoke-static {p1}, Lcom/samsung/android/app/music/lyrics/LyricsCache;->access$1300(Lcom/samsung/android/app/music/lyrics/LyricsCache;)Landroid/database/Cursor;

    move-result-object p1

    invoke-interface {p1}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result p1

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache$5;->this$0:Lcom/samsung/android/app/music/lyrics/LyricsCache;

    invoke-static {p1}, Lcom/samsung/android/app/music/lyrics/LyricsCache;->access$1300(Lcom/samsung/android/app/music/lyrics/LyricsCache;)Landroid/database/Cursor;

    move-result-object p1

    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_4

    .line 568
    :cond_a
    iget-object p1, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache$5;->this$0:Lcom/samsung/android/app/music/lyrics/LyricsCache;

    invoke-static {p1}, Lcom/samsung/android/app/music/lyrics/LyricsCache;->access$1300(Lcom/samsung/android/app/music/lyrics/LyricsCache;)Landroid/database/Cursor;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/lyrics/LyricsCache$5;->getAudioId(Landroid/database/Cursor;)J

    move-result-wide v8

    cmp-long p1, v8, p2

    if-nez p1, :cond_b

    goto :goto_5

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_c
    :goto_4
    return-object v1

    .line 584
    :cond_d
    :goto_5
    iget-object p1, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache$5;->this$0:Lcom/samsung/android/app/music/lyrics/LyricsCache;

    invoke-static {p1}, Lcom/samsung/android/app/music/lyrics/LyricsCache;->access$1300(Lcom/samsung/android/app/music/lyrics/LyricsCache;)Landroid/database/Cursor;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/lyrics/LyricsCache$5;->getAudioId(Landroid/database/Cursor;)J

    move-result-wide v2

    cmp-long p1, v2, p2

    if-eqz p1, :cond_e

    .line 586
    invoke-static {}, Lcom/samsung/android/app/music/lyrics/LyricsCache;->access$200()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Incorrect audioId: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " expected audioId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 589
    :cond_e
    iget-object p1, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache$5;->this$0:Lcom/samsung/android/app/music/lyrics/LyricsCache;

    invoke-static {p1}, Lcom/samsung/android/app/music/lyrics/LyricsCache;->access$1300(Lcom/samsung/android/app/music/lyrics/LyricsCache;)Landroid/database/Cursor;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/lyrics/LyricsCache$5;->getPath(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_f
    :goto_6
    return-object v1
.end method

.method getFilenameDirect(IJ)Ljava/lang/String;
    .locals 6

    .line 463
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache$5;->where:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "%s == ?"

    const/4 v2, 0x1

    .line 464
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "_id"

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache$5;->where:Ljava/lang/String;

    .line 467
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache$5;->whereArgs:[Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v1

    .line 469
    iget-object p2, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache$5;->this$0:Lcom/samsung/android/app/music/lyrics/LyricsCache;

    invoke-static {p2}, Lcom/samsung/android/app/music/lyrics/LyricsCache;->access$1600(Lcom/samsung/android/app/music/lyrics/LyricsCache;)Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;->getMatchedUri(I)Landroid/net/Uri;

    move-result-object v1

    .line 470
    iget-object p1, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache$5;->this$0:Lcom/samsung/android/app/music/lyrics/LyricsCache;

    .line 471
    invoke-static {p1}, Lcom/samsung/android/app/music/lyrics/LyricsCache;->access$1700(Lcom/samsung/android/app/music/lyrics/LyricsCache;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache$5;->mProjection:[Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache$5;->where:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache$5;->whereArgs:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 473
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 474
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/lyrics/LyricsCache$5;->getPath(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    if-eqz p1, :cond_1

    .line 478
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    throw p2

    :cond_2
    const/4 p2, 0x0

    :goto_0
    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object p2
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 10

    .line 342
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/app/music/lyrics/LyricsCache$LyricsHolder;

    .line 343
    iget-wide v0, p1, Lcom/samsung/android/app/music/lyrics/LyricsCache$LyricsHolder;->audioId:J

    .line 344
    invoke-static {p1}, Lcom/samsung/android/app/music/lyrics/LyricsCache$LyricsHolder;->access$700(Lcom/samsung/android/app/music/lyrics/LyricsCache$LyricsHolder;)I

    move-result v2

    .line 345
    iget-object v3, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache$5;->this$0:Lcom/samsung/android/app/music/lyrics/LyricsCache;

    invoke-static {v3}, Lcom/samsung/android/app/music/lyrics/LyricsCache;->access$800(Lcom/samsung/android/app/music/lyrics/LyricsCache;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 346
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache$5;->this$0:Lcom/samsung/android/app/music/lyrics/LyricsCache;

    invoke-static {v4}, Lcom/samsung/android/app/music/lyrics/LyricsCache;->access$900(Lcom/samsung/android/app/music/lyrics/LyricsCache;)Landroid/util/LruCache;

    move-result-object v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    iput-object v4, p1, Lcom/samsung/android/app/music/lyrics/LyricsCache$LyricsHolder;->lyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    .line 347
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 349
    iget-object v3, p1, Lcom/samsung/android/app/music/lyrics/LyricsCache$LyricsHolder;->lyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    if-eqz v3, :cond_2

    iget-object v3, p1, Lcom/samsung/android/app/music/lyrics/LyricsCache$LyricsHolder;->lyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    sget-object v4, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->EMPTY_LYRICS:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    if-ne v3, v4, :cond_0

    goto :goto_0

    .line 352
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache$5;->this$0:Lcom/samsung/android/app/music/lyrics/LyricsCache;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/lyrics/LyricsCache;->ensureLyricsLoader()V

    .line 353
    iget-object v3, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache$5;->this$0:Lcom/samsung/android/app/music/lyrics/LyricsCache;

    invoke-static {v3}, Lcom/samsung/android/app/music/lyrics/LyricsCache;->access$1000(Lcom/samsung/android/app/music/lyrics/LyricsCache;)Lcom/samsung/android/app/music/lyrics/SyncLyricsLoader;

    move-result-object v4

    iget-object v5, p1, Lcom/samsung/android/app/music/lyrics/LyricsCache$LyricsHolder;->lyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    .line 354
    invoke-static {p1}, Lcom/samsung/android/app/music/lyrics/LyricsCache$LyricsHolder;->access$700(Lcom/samsung/android/app/music/lyrics/LyricsCache$LyricsHolder;)I

    move-result v6

    iget-wide v7, p1, Lcom/samsung/android/app/music/lyrics/LyricsCache$LyricsHolder;->audioId:J

    invoke-static {p1}, Lcom/samsung/android/app/music/lyrics/LyricsCache$LyricsHolder;->access$600(Lcom/samsung/android/app/music/lyrics/LyricsCache$LyricsHolder;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual/range {v4 .. v9}, Lcom/samsung/android/app/music/lyrics/SyncLyricsLoader;->isExpired(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;IJLjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 355
    iget-object v3, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache$5;->this$0:Lcom/samsung/android/app/music/lyrics/LyricsCache;

    invoke-static {v3}, Lcom/samsung/android/app/music/lyrics/LyricsCache;->access$800(Lcom/samsung/android/app/music/lyrics/LyricsCache;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 356
    :try_start_1
    iget-object v4, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache$5;->this$0:Lcom/samsung/android/app/music/lyrics/LyricsCache;

    invoke-static {v4}, Lcom/samsung/android/app/music/lyrics/LyricsCache;->access$900(Lcom/samsung/android/app/music/lyrics/LyricsCache;)Landroid/util/LruCache;

    move-result-object v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 358
    sget-object v3, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->EMPTY_LYRICS:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    iput-object v3, p1, Lcom/samsung/android/app/music/lyrics/LyricsCache$LyricsHolder;->lyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    .line 359
    invoke-direct {p0, v2, p1, v0, v1}, Lcom/samsung/android/app/music/lyrics/LyricsCache$5;->requestSyncedLyric(ILcom/samsung/android/app/music/lyrics/LyricsCache$LyricsHolder;J)V

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 357
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 361
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache$5;->this$0:Lcom/samsung/android/app/music/lyrics/LyricsCache;

    invoke-static {v0}, Lcom/samsung/android/app/music/lyrics/LyricsCache;->access$1100(Lcom/samsung/android/app/music/lyrics/LyricsCache;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 362
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 350
    :cond_2
    :goto_0
    invoke-direct {p0, v2, p1, v0, v1}, Lcom/samsung/android/app/music/lyrics/LyricsCache$5;->requestSyncedLyric(ILcom/samsung/android/app/music/lyrics/LyricsCache$LyricsHolder;J)V

    :goto_1
    const/4 p1, 0x1

    return p1

    :catchall_1
    move-exception p1

    .line 347
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method
