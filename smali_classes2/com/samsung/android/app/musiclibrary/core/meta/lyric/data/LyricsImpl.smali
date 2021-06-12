.class public final Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl$LyricLineImpl;,
        Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl$LyricsLineIterator;
    }
.end annotation


# instance fields
.field private mExtraInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLyricLines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;",
            ">;"
        }
    .end annotation
.end field

.field private mStringLyrics:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl;->mLyricLines:Ljava/util/ArrayList;

    if-nez p1, :cond_0

    const-string p1, ""

    .line 28
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl;->mExtraInfo:Ljava/util/HashMap;

    .line 29
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl;->buildLinesInternal(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl;)Ljava/util/ArrayList;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl;->mLyricLines:Ljava/util/ArrayList;

    return-object p0
.end method

.method private buildLinesInternal(Ljava/lang/String;)V
    .locals 5

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl;->mLyricLines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_2

    .line 35
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 36
    new-instance v1, Ljava/util/Scanner;

    invoke-direct {v1, p1}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 37
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 38
    invoke-virtual {v1}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 39
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 40
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl;->mLyricLines:Ljava/util/ArrayList;

    new-instance v4, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl$LyricLineImpl;

    invoke-direct {v4, v2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl$LyricLineImpl;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {v1}, Ljava/util/Scanner;->close()V

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 36
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz p1, :cond_1

    .line 42
    :try_start_2
    invoke-virtual {v1}, Ljava/util/Scanner;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_1
    invoke-virtual {v1}, Ljava/util/Scanner;->close()V

    :goto_2
    throw v0

    .line 44
    :cond_2
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl;->mStringLyrics:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 49
    instance-of v0, p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl;

    if-eqz v0, :cond_0

    .line 50
    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl;

    .line 51
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl;->mStringLyrics:Ljava/lang/String;

    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl;->mStringLyrics:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getCount()I
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl;->mLyricLines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getExtra(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl;->mExtraInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getExtras()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl;->mExtraInfo:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getLine(I)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;
    .locals 1

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl;->mLyricLines:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public isSyncable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;",
            ">;"
        }
    .end annotation

    .line 112
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl$LyricsLineIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl$LyricsLineIterator;-><init>(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl$1;)V

    return-object v0
.end method

.method public putExtra(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl;->mExtraInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public size()I
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl;->mStringLyrics:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl;->mStringLyrics:Ljava/lang/String;

    return-object v0
.end method

.method public trim()V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl;->mStringLyrics:Ljava/lang/String;

    .line 88
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl;->mStringLyrics:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl;->mStringLyrics:Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl;->mStringLyrics:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl;->buildLinesInternal(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
