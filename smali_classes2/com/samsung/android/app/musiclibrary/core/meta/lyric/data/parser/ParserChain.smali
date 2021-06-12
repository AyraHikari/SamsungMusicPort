.class public abstract Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "LyricsParser"


# instance fields
.field protected final NAME:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mNextParser:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    invoke-static {}, Lcom/samsung/android/app/music/support/android/os/DebugCompat;->isProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;->NAME:Ljava/lang/String;

    return-void
.end method

.method private canParseInternal()Z
    .locals 4

    .line 70
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;->canParse()Z

    move-result v0

    .line 71
    sget-boolean v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "LyricsParser"

    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;->NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": canParseInternal ? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return v0

    :catch_0
    move-exception v0

    .line 76
    sget-boolean v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "LyricsParser"

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;->NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": Not support this Tag chain. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private openInternal(Ljava/lang/String;)Z
    .locals 3

    .line 55
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;->open(Ljava/lang/String;)Z

    move-result p1

    .line 56
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LyricsParser"

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;->NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": canOpen ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return p1

    :catch_0
    nop

    .line 61
    sget-boolean p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;->DEBUG:Z

    if-eqz p1, :cond_1

    const-string p1, "LyricsParser"

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;->NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": open failed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private parsingLyricInternal()Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;
    .locals 4

    .line 85
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;->parseLyrics()Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 87
    sget-boolean v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "LyricsParser"

    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;->NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": Fail to read lyric in this Tag chain."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 90
    :cond_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->EMPTY_LYRICS:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    return-object v0
.end method


# virtual methods
.method protected abstract canParse()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract close()V
.end method

.method protected final getContext()Landroid/content/Context;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method final getLyric(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 38
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->EMPTY_LYRICS:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    .line 39
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;->openInternal(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;->canParseInternal()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;->parsingLyricInternal()Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    move-result-object v0

    .line 42
    sget-boolean v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "LyricsParser"

    .line 43
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;->NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": getLyric "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;->close()V

    if-eqz v0, :cond_2

    .line 47
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->EMPTY_LYRICS:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    return-object v0

    .line 48
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;->mNextParser:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;

    if-nez v0, :cond_3

    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->EMPTY_LYRICS:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;->mNextParser:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;->getLyric(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method protected abstract open(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract parseLyrics()Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method final setContext(Landroid/content/Context;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;->mContext:Landroid/content/Context;

    return-void
.end method

.method final setNext(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;->mNextParser:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;

    .line 33
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;->mNextParser:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;

    return-object p1
.end method
