.class Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyricsImpl$LyricLineImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyricsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LyricLineImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyricsImpl$LyricLineImpl$LyricTextImpl;,
        Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyricsImpl$LyricLineImpl$LyricTextIterator;
    }
.end annotation


# instance fields
.field private mLength:I

.field private mLineString:Ljava/lang/String;

.field private final mTexts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine$LyricsText;",
            ">;"
        }
    .end annotation
.end field

.field private final mTimeStamp:J


# direct methods
.method varargs constructor <init>(J[Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine$LyricsText;)V
    .locals 3

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyricsImpl$LyricLineImpl;->mTexts:Ljava/util/ArrayList;

    .line 207
    iput-wide p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyricsImpl$LyricLineImpl;->mTimeStamp:J

    .line 208
    array-length p1, p3

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    aget-object v0, p3, p2

    .line 209
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyricsImpl$LyricLineImpl;->mLength:I

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine$LyricsText;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyricsImpl$LyricLineImpl;->mLength:I

    .line 210
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyricsImpl$LyricLineImpl;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyricsImpl$LyricLineImpl;)Ljava/util/ArrayList;
    .locals 0

    .line 196
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyricsImpl$LyricLineImpl;->mTexts:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public add(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine$LyricsText;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 218
    :cond_0
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine$LyricsText;->getText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 220
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyricsImpl$LyricLineImpl;->mLength:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyricsImpl$LyricLineImpl;->mLength:I

    .line 221
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyricsImpl$LyricLineImpl;->mTexts:Ljava/util/ArrayList;

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyricsImpl$LyricLineImpl$LyricTextImpl;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine$LyricsText;->getTime()J

    move-result-wide v3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\n"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v3, v4, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyricsImpl$LyricLineImpl$LyricTextImpl;-><init>(JLjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public compareTo(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;)I
    .locals 4
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 254
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyricsImpl$LyricLineImpl;->mTimeStamp:J

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int p1, v0

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 196
    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyricsImpl$LyricLineImpl;->compareTo(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;)I

    move-result p1

    return p1
.end method

.method public getTime()J
    .locals 2

    .line 237
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyricsImpl$LyricLineImpl;->mTimeStamp:J

    return-wide v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine$LyricsText;",
            ">;"
        }
    .end annotation

    .line 259
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyricsImpl$LyricLineImpl$LyricTextIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyricsImpl$LyricLineImpl$LyricTextIterator;-><init>(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyricsImpl$LyricLineImpl;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyricsImpl$1;)V

    return-object v0
.end method

.method public length()I
    .locals 1

    .line 227
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyricsImpl$LyricLineImpl;->mLength:I

    return v0
.end method

.method public size()I
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyricsImpl$LyricLineImpl;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 242
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyricsImpl$LyricLineImpl;->mLineString:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 244
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyricsImpl$LyricLineImpl;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine$LyricsText;

    .line 245
    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine$LyricsText;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 247
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyricsImpl$LyricLineImpl;->mLineString:Ljava/lang/String;

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyricsImpl$LyricLineImpl;->mLineString:Ljava/lang/String;

    return-object v0
.end method
