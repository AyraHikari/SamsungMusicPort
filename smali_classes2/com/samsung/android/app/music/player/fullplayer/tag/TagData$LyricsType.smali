.class final Lcom/samsung/android/app/music/player/fullplayer/tag/TagData$LyricsType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/player/fullplayer/tag/TagData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LyricsType"
.end annotation


# instance fields
.field final a:I


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput p1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagData$LyricsType;->a:I

    return-void
.end method

.method static a(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;)Lcom/samsung/android/app/music/player/fullplayer/tag/TagData$LyricsType;
    .locals 1

    .line 135
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$Utils;->isEmpty(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 138
    :cond_0
    invoke-interface {p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->isSyncable()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    .line 140
    :goto_0
    new-instance v0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagData$LyricsType;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagData$LyricsType;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 149
    instance-of v0, p1, Lcom/samsung/android/app/music/player/fullplayer/tag/TagData$LyricsType;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/samsung/android/app/music/player/fullplayer/tag/TagData$LyricsType;

    iget p1, p1, Lcom/samsung/android/app/music/player/fullplayer/tag/TagData$LyricsType;->a:I

    iget v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagData$LyricsType;->a:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LyricsType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagData$LyricsType;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
