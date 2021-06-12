.class final Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LrcFileParser$SyncedLyricsImpl2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyrics;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LrcFileParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SyncedLyricsImpl2"
.end annotation


# instance fields
.field private final mImpl:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyrics;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyrics;)V
    .locals 0

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LrcFileParser$SyncedLyricsImpl2;->mImpl:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyrics;

    return-void
.end method


# virtual methods
.method public find(J)I
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LrcFileParser$SyncedLyricsImpl2;->mImpl:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyrics;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyrics;->find(J)I

    move-result p1

    return p1
.end method

.method public getCount()I
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LrcFileParser$SyncedLyricsImpl2;->mImpl:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyrics;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyrics;->getCount()I

    move-result v0

    return v0
.end method

.method public getExtra(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LrcFileParser$SyncedLyricsImpl2;->mImpl:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyrics;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyrics;->getExtra(Ljava/lang/String;)Ljava/lang/String;

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

    .line 325
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LrcFileParser$SyncedLyricsImpl2;->mImpl:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyrics;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyrics;->getExtras()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getLine(I)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LrcFileParser$SyncedLyricsImpl2;->mImpl:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyrics;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyrics;->getLine(I)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;

    move-result-object p1

    return-object p1
.end method

.method public isSyncable()Z
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LrcFileParser$SyncedLyricsImpl2;->mImpl:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyrics;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyrics;->isSyncable()Z

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

    .line 355
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LrcFileParser$SyncedLyricsImpl2;->mImpl:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyrics;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyrics;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public putExtra(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LrcFileParser$SyncedLyricsImpl2;->mImpl:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyrics;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyrics;->putExtra(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "offset"

    .line 314
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 316
    :try_start_0
    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LrcFileParser$SyncedLyricsImpl2;->setTimeOffset(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public setTimeOffset(J)V
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LrcFileParser$SyncedLyricsImpl2;->mImpl:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyrics;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyrics;->setTimeOffset(J)V

    return-void
.end method

.method public size()I
    .locals 1

    .line 350
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LrcFileParser$SyncedLyricsImpl2;->mImpl:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyrics;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyrics;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LrcFileParser$SyncedLyricsImpl2;->mImpl:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyrics;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trim()V
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LrcFileParser$SyncedLyricsImpl2;->mImpl:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyrics;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyrics;->trim()V

    return-void
.end method
