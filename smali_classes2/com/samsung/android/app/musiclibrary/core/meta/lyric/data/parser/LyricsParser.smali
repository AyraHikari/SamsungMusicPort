.class public final Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LyricsParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LyricsParser$Type;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-LyricsParser"

.field private static final TAG:Ljava/lang/String; = "LyricsParser"


# instance fields
.field private final mParserChains:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ThreadLocal<",
            "+",
            "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    invoke-static {}, Lcom/samsung/android/app/music/support/android/os/DebugCompat;->isProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LyricsParser;->DEBUG:Z

    return-void
.end method

.method private varargs constructor <init>(Landroid/content/Context;[Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Ljava/lang/Class<",
            "+",
            "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LyricsParser;->mParserChains:Ljava/util/List;

    .line 57
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    .line 58
    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LyricsParser;->obtainThreadLocal(Ljava/lang/Class;)Ljava/lang/ThreadLocal;

    move-result-object v2

    .line 59
    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;

    invoke-virtual {v3, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;->setContext(Landroid/content/Context;)V

    .line 61
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LyricsParser;->mParserChains:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static varargs obtain(Landroid/content/Context;[Ljava/lang/Class;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LyricsParser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Ljava/lang/Class<",
            "+",
            "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;",
            ">;)",
            "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LyricsParser;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 52
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LyricsParser;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LyricsParser;-><init>(Landroid/content/Context;[Ljava/lang/Class;)V

    return-object v0
.end method

.method private obtainParserChain()Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;
    .locals 4

    .line 99
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LyricsParser;->mParserChains:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    move-object v2, v1

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ThreadLocal;

    if-nez v1, :cond_0

    .line 101
    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;

    goto :goto_0

    .line 104
    :cond_0
    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;->setNext(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;

    move-result-object v2

    goto :goto_1

    :cond_1
    return-object v1
.end method

.method private static obtainThreadLocal(Ljava/lang/Class;)Ljava/lang/ThreadLocal;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/lang/ThreadLocal<",
            "TT;>;"
        }
    .end annotation

    .line 114
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LyricsParser$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LyricsParser$1;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public getLyric(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;
    .locals 6
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    if-nez p1, :cond_1

    .line 68
    sget-boolean p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LyricsParser;->DEBUG:Z

    if-eqz p1, :cond_0

    const-string p1, "LyricsParser"

    const-string v0, "getLyric but filePath is null."

    .line 69
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_0
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->EMPTY_LYRICS:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    return-object p1

    :cond_1
    const-wide/16 v0, 0x0

    .line 74
    sget-boolean v2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LyricsParser;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 75
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 78
    :cond_2
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LyricsParser;->obtainParserChain()Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;

    move-result-object v2

    if-nez v2, :cond_4

    .line 80
    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->EMPTY_LYRICS:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    sget-boolean v3, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LyricsParser;->DEBUG:Z

    if-eqz v3, :cond_3

    .line 89
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v0

    const-string v0, "SMUSIC-LyricsParser"

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLyric Lyric parser takes: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms path: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object v2

    .line 82
    :cond_4
    :try_start_1
    invoke-virtual {v2, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;->getLyric(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    sget-boolean v3, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LyricsParser;->DEBUG:Z

    if-eqz v3, :cond_5

    .line 89
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v0

    const-string v0, "SMUSIC-LyricsParser"

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLyric Lyric parser takes: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms path: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-object v2

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_0
    move-exception v2

    .line 84
    :try_start_2
    sget-boolean v3, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LyricsParser;->DEBUG:Z

    if-eqz v3, :cond_6

    const-string v3, "LyricsParser"

    .line 85
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLyric but error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 88
    :cond_6
    sget-boolean v2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LyricsParser;->DEBUG:Z

    if-eqz v2, :cond_7

    .line 89
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-string v0, "SMUSIC-LyricsParser"

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLyric Lyric parser takes: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_7
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->EMPTY_LYRICS:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    return-object p1

    .line 88
    :goto_0
    sget-boolean v3, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LyricsParser;->DEBUG:Z

    if-eqz v3, :cond_8

    .line 89
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v0

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getLyric Lyric parser takes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SMUSIC-LyricsParser"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_8
    throw v2
.end method
