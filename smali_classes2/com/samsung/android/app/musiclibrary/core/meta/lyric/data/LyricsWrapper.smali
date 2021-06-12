.class public final Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;


# instance fields
.field private final mHeaderCount:I

.field private final mLyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;I)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsWrapper;->mLyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    .line 15
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsWrapper;->mHeaderCount:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 20
    instance-of v0, p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsWrapper;->mLyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getCount()I
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsWrapper;->mLyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->getCount()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsWrapper;->mHeaderCount:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getExtra(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsWrapper;->mLyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

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

    .line 30
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsWrapper;->mLyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->getExtras()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getLine(I)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;
    .locals 1

    .line 55
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsWrapper;->mHeaderCount:I

    sub-int/2addr p1, v0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsWrapper;->mLyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->getLine(I)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsWrapper;->mLyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isSyncable()Z
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsWrapper;->mLyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->isSyncable()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;",
            ">;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsWrapper;->mLyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public putExtra(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsWrapper;->mLyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->putExtra(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public size()I
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsWrapper;->mLyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsWrapper;->mLyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trim()V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsWrapper;->mLyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->trim()V

    return-void
.end method
