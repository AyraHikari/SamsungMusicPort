.class public final Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyricsImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyrics;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyricsImpl$LyricLineImpl;,
        Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyricsImpl$LyricsLineIterator;
    }
.end annotation


# instance fields
.field private mCachedString:Ljava/lang/String;

.field private final mExtraInfo:Ljava/util/HashMap;
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

.field private mSize:I

.field private mTimeOffset:J


# direct methods
.method private varargs constructor <init>(Ljava/util/Map;[Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[",
            "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;",
            ")V"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyricsImpl;->mExtraInfo:Ljava/util/HashMap;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyricsImpl;->mLyricLines:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    .line 54
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyricsImpl;->mExtraInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 56
    :cond_0
    array-length p1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    aget-object v1, p2, v0

    .line 57
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyricsImpl;->mLyricLines:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyricsImpl;->mSize:I

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;->length()I

    move-result v1

    add-int/2addr v2, v1

    iput v2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyricsImpl;->mSize:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyricsImpl;)Ljava/util/ArrayList;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyricsImpl;->mLyricLines:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static varargs makeLyric(Ljava/util/Map;[Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyrics;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[",
            "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;",
            ")",
            "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyrics;"
        }
    .end annotation

    .line 24
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyricsImpl;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyricsImpl;-><init>(Ljava/util/Map;[Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;)V

    return-object v0
.end method

.method public static makeLyricLine(JLjava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;
    .locals 3

    .line 32
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyricsImpl$LyricLineImpl;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine$LyricsText;

    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyricsImpl;->makeLyricText(JLjava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine$LyricsText;

    move-result-object p2

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-direct {v0, p0, p1, v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyricsImpl$LyricLineImpl;-><init>(J[Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine$LyricsText;)V

    return-object v0
.end method

.method public static varargs makeLyricLine(J[Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine$LyricsText;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;
    .locals 1

    .line 28
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyricsImpl$LyricLineImpl;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyricsImpl$LyricLineImpl;-><init>(J[Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine$LyricsText;)V

    return-object v0
.end method

.method public static makeLyricText(JLjava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine$LyricsText;
    .locals 1

    .line 49
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyricsImpl$LyricLineImpl$LyricTextImpl;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyricsImpl$LyricLineImpl$LyricTextImpl;-><init>(JLjava/lang/String;)V

    return-object v0
.end method

.method public static mergeLyricLine(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;
    .locals 2

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    .line 39
    :cond_0
    instance-of v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyricsImpl$LyricLineImpl;

    if-eqz v0, :cond_1

    .line 40
    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyricsImpl$LyricLineImpl;

    .line 41
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine$LyricsText;

    .line 42
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyricsImpl$LyricLineImpl;->add(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine$LyricsText;)V

    goto :goto_0

    :cond_1
    return-object p0

    :cond_2
    :goto_1
    return-object p0
.end method


# virtual methods
.method public find(J)I
    .locals 10

    .line 123
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyricsImpl;->mLyricLines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    move v2, v0

    :goto_0
    if-gt v1, v2, :cond_4

    add-int v3, v1, v2

    .line 128
    div-int/lit8 v3, v3, 0x2

    .line 129
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyricsImpl;->mLyricLines:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;

    invoke-interface {v4}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;->getTime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyricsImpl;->mTimeOffset:J

    add-long/2addr v4, v6

    const-wide v6, 0x7fffffffffffffffL

    if-ge v3, v0, :cond_0

    .line 132
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyricsImpl;->mLyricLines:Ljava/util/ArrayList;

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;

    invoke-interface {v6}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;->getTime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyricsImpl;->mTimeOffset:J

    add-long/2addr v6, v8

    :cond_0
    cmp-long v4, p1, v4

    if-gez v4, :cond_1

    if-lez v3, :cond_1

    add-int/lit8 v3, v3, -0x1

    move v2, v3

    goto :goto_0

    :cond_1
    cmp-long v1, p1, v6

    if-ltz v1, :cond_2

    add-int/lit8 v3, v3, 0x1

    move v1, v3

    goto :goto_0

    :cond_2
    :goto_1
    if-lez v3, :cond_3

    .line 139
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyricsImpl;->mLyricLines:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;->length()I

    move-result p1

    if-nez p1, :cond_3

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_3
    return v3

    :cond_4
    const/4 p1, -0x1

    return p1
.end method

.method public getCount()I
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyricsImpl;->mLyricLines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getExtra(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyricsImpl;->mExtraInfo:Ljava/util/HashMap;

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

    .line 93
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyricsImpl;->mExtraInfo:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getLine(I)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;
    .locals 1

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyricsImpl;->mLyricLines:Ljava/util/ArrayList;

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

    const/4 v0, 0x1

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

    .line 178
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyricsImpl$LyricsLineIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyricsImpl$LyricsLineIterator;-><init>(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyricsImpl;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyricsImpl$1;)V

    return-object v0
.end method

.method public putExtra(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyricsImpl;->mExtraInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setTimeOffset(J)V
    .locals 0

    .line 118
    iput-wide p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyricsImpl;->mTimeOffset:J

    return-void
.end method

.method public size()I
    .locals 1

    .line 113
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyricsImpl;->mSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 64
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyricsImpl;->mCachedString:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyricsImpl;->mLyricLines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;

    .line 67
    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine$LyricsText;

    .line 68
    invoke-interface {v3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine$LyricsText;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const/16 v2, 0xa

    .line 70
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 72
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyricsImpl;->mCachedString:Ljava/lang/String;

    .line 74
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyricsImpl;->mCachedString:Ljava/lang/String;

    return-object v0
.end method

.method public trim()V
    .locals 5

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 151
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyricsImpl;->mLyricLines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 153
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyricsImpl;->mLyricLines:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;

    .line 154
    invoke-interface {v3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;->toString()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 155
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 156
    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_3

    .line 162
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyricsImpl;->mLyricLines:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;

    .line 163
    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 164
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    .line 165
    :cond_2
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 170
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 171
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyricsImpl;->mLyricLines:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    const/4 v0, 0x0

    .line 172
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyricsImpl;->mCachedString:Ljava/lang/String;

    :cond_4
    return-void
.end method
