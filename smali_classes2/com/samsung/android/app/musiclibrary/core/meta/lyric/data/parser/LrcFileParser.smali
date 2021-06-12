.class public final Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LrcFileParser;
.super Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LrcFileParser$SyncedLyricsImpl2;,
        Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LrcFileParser$Tags;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final LOG_TAG:Ljava/lang/String; = "LyricsParser"

.field private static final TAGS:[Ljava/lang/String;


# instance fields
.field private final mBaseTime:Ljava/util/Date;

.field private final mPatternTag:Ljava/util/regex/Pattern;

.field private mReader:Ljava/io/BufferedReader;

.field private final mTimeFormatter:Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 41
    invoke-static {}, Lcom/samsung/android/app/music/support/android/os/DebugCompat;->isProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LrcFileParser;->DEBUG:Z

    const-string v1, "ar"

    const-string v2, "al"

    const-string v3, "ti"

    const-string v4, "au"

    const-string v5, "length"

    const-string v6, "by"

    const-string v7, "offset"

    const-string v8, "re"

    const-string v9, "ve"

    .line 43
    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LrcFileParser;->TAGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 55
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;-><init>()V

    const-string v0, "\\[[^\\[\\]]+\\]"

    .line 56
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LrcFileParser;->mPatternTag:Ljava/util/regex/Pattern;

    .line 57
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "mm:ss.SS"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LrcFileParser;->mTimeFormatter:Ljava/text/DateFormat;

    .line 59
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy:MM:dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v1, "1970:01:01"

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LrcFileParser;->mBaseTime:Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 61
    :catch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "LrcFileParser creation failed !"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static fromString(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;
    .locals 2

    .line 66
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 p0, 0x0

    .line 67
    :try_start_1
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LrcFileParser;

    invoke-direct {v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LrcFileParser;-><init>()V

    .line 68
    invoke-direct {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LrcFileParser;->parseLyrics(Ljava/io/BufferedReader;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 66
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    if-eqz p0, :cond_0

    .line 69
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_5
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    :goto_1
    throw v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 72
    :catch_2
    sget-object p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->EMPTY_LYRICS:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    return-object p0
.end method

.method private getTimeFromText(Ljava/lang/String;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 257
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LrcFileParser;->mTimeFormatter:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    .line 258
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LrcFileParser;->mBaseTime:Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private parseLyricLine(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 200
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 203
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5d

    if-eq v4, v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    add-int/2addr v3, v4

    add-int/lit8 v5, v3, -0x1

    .line 208
    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LrcFileParser;->getTimeFromText(Ljava/lang/String;)J

    move-result-wide v4

    .line 211
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 214
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    move-wide v10, v4

    move-object v9, v6

    move-object v6, v8

    :goto_1
    const/16 v12, 0x3c

    if-ge v3, v2, :cond_6

    add-int/lit8 v13, v3, 0x1

    .line 215
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v14, 0xd

    if-eq v3, v14, :cond_6

    const/16 v14, 0xa

    if-eq v3, v14, :cond_6

    if-ne v3, v12, :cond_2

    if-nez v6, :cond_1

    .line 218
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    move v3, v13

    goto :goto_1

    .line 220
    :cond_1
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    if-eqz v6, :cond_4

    const/16 v14, 0x3e

    if-ne v3, v14, :cond_4

    .line 224
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 226
    :try_start_0
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 227
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 229
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v11, v6}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyricsImpl;->makeLyricText(JLjava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine$LyricsText;

    move-result-object v6

    .line 228
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    :cond_3
    invoke-direct {v0, v3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LrcFileParser;->getTimeFromText(Ljava/lang/String;)J

    move-result-wide v15
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1

    .line 232
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v9, v6

    move-wide v10, v15

    goto :goto_3

    :catch_0
    move-wide v10, v15

    .line 234
    :catch_1
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_3
    move-object v6, v8

    goto :goto_2

    :cond_4
    if-eqz v6, :cond_5

    .line 240
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 242
    :cond_5
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_6
    if-eqz v6, :cond_7

    .line 245
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_7

    .line 246
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    :cond_7
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_8

    .line 249
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v11, v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyricsImpl;->makeLyricText(JLjava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine$LyricsText;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    :cond_8
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine$LyricsText;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine$LyricsText;

    .line 252
    invoke-static {v4, v5, v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyricsImpl;->makeLyricLine(J[Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine$LyricsText;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;

    move-result-object v1

    return-object v1
.end method

.method private parseLyrics(Ljava/io/BufferedReader;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;
    .locals 11

    if-nez p1, :cond_0

    .line 107
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->EMPTY_LYRICS:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    return-object p1

    .line 109
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 110
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 111
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v4, -0x1

    const/4 v6, 0x1

    move-wide v7, v4

    const/4 v4, 0x1

    .line 117
    :catch_0
    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 118
    iget-object v9, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LrcFileParser;->mPatternTag:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 119
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_1

    if-eqz v4, :cond_2

    .line 122
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LrcFileParser;->tryParseExtraInfo(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v4

    :cond_2
    if-nez v4, :cond_1

    .line 124
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->end()I

    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-lt v10, v9, :cond_1

    .line 126
    :try_start_1
    invoke-direct {p0, v5}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LrcFileParser;->parseLyricLine(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;

    move-result-object v5

    .line 127
    invoke-interface {v5}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;->getTime()J

    move-result-wide v9

    cmp-long v9, v7, v9

    if-nez v9, :cond_3

    .line 128
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v6

    if-ltz v9, :cond_1

    .line 130
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;

    .line 131
    invoke-static {v9, v5}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyricsImpl;->mergeLyricLine(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;

    move-result-object v9

    if-nez v9, :cond_1

    .line 133
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 137
    :cond_3
    invoke-interface {v5}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;->getTime()J

    move-result-wide v9
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 138
    :try_start_2
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_1
    move-wide v7, v9

    goto :goto_0

    .line 150
    :cond_4
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LrcFileParser$SyncedLyricsImpl2;

    .line 151
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;

    .line 150
    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyricsImpl;->makeLyric(Ljava/util/Map;[Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyrics;

    move-result-object v2

    invoke-direct {p1, v2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LrcFileParser$SyncedLyricsImpl2;-><init>(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyrics;)V

    .line 153
    sget-boolean v2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LrcFileParser;->DEBUG:Z

    if-eqz v2, :cond_5

    const-string v2, "LyricsParser"

    .line 154
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseFile : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "LyricsParser"

    .line 155
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseFile : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-object p1

    :catch_2
    move-exception p1

    const-string v0, "LyricsParser"

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LrcFileParser;->NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": parseLyrics() : failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 148
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->EMPTY_LYRICS:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    return-object p1
.end method

.method private tryParseExtraInfo(Ljava/util/Map;Ljava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 175
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    const-string v1, ":"

    .line 176
    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 177
    aget-object v1, p2, v0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 178
    aget-object p2, p2, v2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 180
    sget-object v3, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LrcFileParser;->TAGS:[Ljava/lang/String;

    .line 182
    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 183
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 185
    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_2

    const-string p1, "LyricsParser"

    .line 190
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Extra key : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", value : "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return v2

    :catch_0
    const-string p1, "LyricsParser"

    const-string p2, "trying to parse header\'s tag and value was failed!"

    .line 194
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method


# virtual methods
.method protected canParse()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LrcFileParser;->mReader:Ljava/io/BufferedReader;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected close()V
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LrcFileParser;->mReader:Ljava/io/BufferedReader;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 164
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LrcFileParser;->mReader:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 168
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LrcFileParser;->mReader:Ljava/io/BufferedReader;

    throw v1

    :catch_0
    :goto_0
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LrcFileParser;->mReader:Ljava/io/BufferedReader;

    :cond_0
    return-void
.end method

.method protected open(Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 78
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LrcFileParser;->close()V

    .line 80
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers;->LRC:Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 81
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/utils/CharsetDetector;->findCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-direct {v1, v3, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LrcFileParser;->mReader:Ljava/io/BufferedReader;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    return v2

    :cond_0
    return v2
.end method

.method protected parseLyrics()Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LrcFileParser;->mReader:Ljava/io/BufferedReader;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LrcFileParser;->parseLyrics(Ljava/io/BufferedReader;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    move-result-object v0

    return-object v0
.end method
