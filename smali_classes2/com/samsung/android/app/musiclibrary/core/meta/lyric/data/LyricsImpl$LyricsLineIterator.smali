.class Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl$LyricsLineIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LyricsLineIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;",
        ">;"
    }
.end annotation


# instance fields
.field private mPos:I

.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl$LyricsLineIterator;->this$0:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 117
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl$LyricsLineIterator;->mPos:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl$1;)V
    .locals 0

    .line 115
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl$LyricsLineIterator;-><init>(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    .line 121
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl$LyricsLineIterator;->mPos:I

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl$LyricsLineIterator;->this$0:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl;->access$100(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public next()Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl$LyricsLineIterator;->this$0:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl;->access$100(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl$LyricsLineIterator;->mPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl$LyricsLineIterator;->mPos:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 115
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl$LyricsLineIterator;->next()Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;

    move-result-object v0

    return-object v0
.end method
