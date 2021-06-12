.class public Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/writer/LrcFileWriter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEBUG:Z = true

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "LrcFileWriter"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMUSIC-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/writer/LrcFileWriter;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/writer/LrcFileWriter;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static write(Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;)V
    .locals 23

    move-object/from16 v0, p0

    .line 29
    invoke-interface/range {p1 .. p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->isSyncable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 30
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/writer/LrcFileWriter;->LOG_TAG:Ljava/lang/String;

    const-string v1, "write() failed - lyrics is not syncable!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 34
    :cond_0
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/writer/LrcFileWriter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "write() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", lyrics : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 39
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 40
    :try_start_0
    new-instance v5, Ljava/io/OutputStreamWriter;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v0, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 43
    :try_start_1
    invoke-interface/range {p1 .. p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->getExtras()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eqz v6, :cond_1

    :try_start_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    const-string v10, "[%s:%s]"

    .line 44
    new-array v8, v8, [Ljava/lang/Object;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v8, v7

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v8, v9

    invoke-static {v10, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    const-string v6, "\n"

    .line 45
    invoke-virtual {v5, v6}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v3, v0

    move-object v10, v5

    goto/16 :goto_6

    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v10, v5

    goto/16 :goto_8

    .line 49
    :cond_1
    :try_start_3
    invoke-interface/range {p1 .. p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;

    .line 50
    invoke-interface {v3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;->getTime()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    .line 52
    div-long v14, v10, v12
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    const-wide/16 v16, 0x3c

    move-object/from16 v18, v5

    .line 53
    :try_start_4
    div-long v4, v14, v16

    long-to-int v4, v4

    .line 54
    rem-long v14, v14, v16

    long-to-int v5, v14

    const-string v6, "[%02d:%02d.%02d] "

    const/4 v14, 0x3

    .line 56
    new-array v15, v14, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v15, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v15, v9

    rem-long/2addr v10, v12

    const-wide/16 v4, 0xa

    div-long/2addr v10, v4

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v15, v8

    invoke-static {v6, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object/from16 v10, v18

    :try_start_5
    invoke-virtual {v10, v6}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 58
    invoke-interface {v3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;->size()I

    move-result v6

    if-le v6, v9, :cond_3

    .line 60
    invoke-interface {v3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine$LyricsText;

    .line 61
    invoke-interface {v6}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine$LyricsText;->getTime()J

    move-result-wide v19

    .line 62
    div-long v21, v19, v12

    .line 63
    div-long v4, v21, v16

    long-to-int v4, v4

    .line 64
    rem-long v12, v21, v16

    long-to-int v5, v12

    const-string v11, "<%02d:%02d.%02d> "

    .line 65
    new-array v12, v14, [Ljava/lang/Object;

    .line 66
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v12, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v12, v9

    const-wide/16 v4, 0x3e8

    rem-long v19, v19, v4

    const-wide/16 v21, 0xa

    div-long v19, v19, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v12, v8

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 65
    invoke-virtual {v10, v11}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 68
    invoke-interface {v6}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine$LyricsText;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    const-string v6, " "

    .line 69
    invoke-virtual {v10, v6}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    move-wide v12, v4

    move-wide/from16 v4, v21

    goto :goto_2

    :cond_2
    const-string v3, "\n"

    .line 71
    invoke-virtual {v10, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    goto :goto_4

    :cond_3
    if-lez v6, :cond_4

    .line 73
    invoke-interface {v3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine$LyricsText;

    .line 74
    invoke-interface {v4}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine$LyricsText;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    const-string v4, "\n"

    .line 75
    invoke-virtual {v10, v4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    :cond_4
    :goto_4
    move-object v5, v10

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object/from16 v10, v18

    goto :goto_5

    :catch_2
    move-exception v0

    move-object/from16 v10, v18

    goto :goto_7

    :cond_5
    move-object v10, v5

    .line 79
    :try_start_6
    invoke-virtual {v10}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 83
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/writer/LrcFileWriter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_b

    :catchall_3
    move-exception v0

    move-object v10, v5

    :goto_5
    move-object v3, v0

    :goto_6
    const/4 v4, 0x0

    goto :goto_9

    :catch_3
    move-exception v0

    move-object v10, v5

    :goto_7
    move-object v4, v0

    .line 40
    :goto_8
    :try_start_7
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :catchall_4
    move-exception v0

    move-object v3, v0

    :goto_9
    if-eqz v4, :cond_6

    .line 79
    :try_start_8
    invoke-virtual {v10}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto :goto_a

    :catch_4
    move-exception v0

    move-object v5, v0

    :try_start_9
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_a

    :cond_6
    invoke-virtual {v10}, Ljava/io/OutputStreamWriter;->close()V

    :goto_a
    throw v3
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    :catchall_5
    move-exception v0

    goto :goto_c

    :catch_5
    move-exception v0

    .line 80
    :try_start_a
    sget-object v3, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/writer/LrcFileWriter;->LOG_TAG:Ljava/lang/String;

    const-string v4, "write() : exception occurs "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 83
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/writer/LrcFileWriter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_b
    const-string v4, "write() takes : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :goto_c
    sget-object v3, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/writer/LrcFileWriter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "write() takes : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method
