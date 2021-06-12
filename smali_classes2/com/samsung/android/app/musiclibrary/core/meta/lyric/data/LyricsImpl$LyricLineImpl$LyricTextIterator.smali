.class Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl$LyricLineImpl$LyricTextIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl$LyricLineImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LyricTextIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine$LyricsText;",
        ">;"
    }
.end annotation


# instance fields
.field private mPos:I

.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl$LyricLineImpl;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl$LyricLineImpl;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl$LyricLineImpl$LyricTextIterator;->this$0:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl$LyricLineImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 169
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl$LyricLineImpl$LyricTextIterator;->mPos:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl$LyricLineImpl;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl$1;)V
    .locals 0

    .line 168
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl$LyricLineImpl$LyricTextIterator;-><init>(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl$LyricLineImpl;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 178
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl$LyricLineImpl$LyricTextIterator;->mPos:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine$LyricsText;
    .locals 1

    .line 183
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl$LyricLineImpl$LyricTextIterator;->mPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl$LyricLineImpl$LyricTextIterator;->mPos:I

    .line 184
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl$LyricLineImpl$LyricTextIterator;->this$0:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl$LyricLineImpl;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl$LyricLineImpl;->access$300(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl$LyricLineImpl;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine$LyricsText;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 168
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl$LyricLineImpl$LyricTextIterator;->next()Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine$LyricsText;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 173
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
