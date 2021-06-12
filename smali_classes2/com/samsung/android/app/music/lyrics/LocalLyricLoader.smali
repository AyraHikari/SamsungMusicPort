.class public final Lcom/samsung/android/app/music/lyrics/LocalLyricLoader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/meta/lyric/ILyricLoader;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mIsLyricCacheEnabled:Z

.field private final mOnLyricListener:Lcom/samsung/android/app/music/lyrics/LyricsCache$OnLyricsListener;

.field private mOnLyricLoadListener:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/ILyricLoader$OnLyricLoadListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/samsung/android/app/music/lyrics/LocalLyricLoader;->mIsLyricCacheEnabled:Z

    .line 44
    new-instance v0, Lcom/samsung/android/app/music/lyrics/LocalLyricLoader$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/lyrics/LocalLyricLoader$1;-><init>(Lcom/samsung/android/app/music/lyrics/LocalLyricLoader;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/lyrics/LocalLyricLoader;->mOnLyricListener:Lcom/samsung/android/app/music/lyrics/LyricsCache$OnLyricsListener;

    .line 18
    iput-object p1, p0, Lcom/samsung/android/app/music/lyrics/LocalLyricLoader;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/lyrics/LocalLyricLoader;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/ILyricLoader$OnLyricLoadListener;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/samsung/android/app/music/lyrics/LocalLyricLoader;->mOnLyricLoadListener:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/ILyricLoader$OnLyricLoadListener;

    return-object p0
.end method

.method private ensureLyricCacheEnabled()V
    .locals 1

    .line 37
    iget-boolean v0, p0, Lcom/samsung/android/app/music/lyrics/LocalLyricLoader;->mIsLyricCacheEnabled:Z

    if-nez v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LocalLyricLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/lyrics/LyricsCache;->init(Landroid/content/Context;)V

    .line 39
    invoke-static {}, Lcom/samsung/android/app/music/lyrics/LyricsCache;->getInstance()Lcom/samsung/android/app/music/lyrics/LyricsCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/lyrics/LyricsCache;->registerObserver()V

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lcom/samsung/android/app/music/lyrics/LocalLyricLoader;->mIsLyricCacheEnabled:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public release()V
    .locals 1

    .line 33
    invoke-static {}, Lcom/samsung/android/app/music/lyrics/LyricsCache;->getInstance()Lcom/samsung/android/app/music/lyrics/LyricsCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/lyrics/LyricsCache;->unregisterObserver()V

    return-void
.end method

.method public requestLyric(IJLcom/samsung/android/app/musiclibrary/core/meta/lyric/ILyricLoader$OnLyricLoadListener;Ljava/lang/Object;)V
    .locals 6

    .line 23
    instance-of v0, p5, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    if-eqz v0, :cond_0

    check-cast p5, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    goto :goto_0

    :cond_0
    const/4 p5, 0x0

    .line 25
    :goto_0
    iput-object p4, p0, Lcom/samsung/android/app/music/lyrics/LocalLyricLoader;->mOnLyricLoadListener:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/ILyricLoader$OnLyricLoadListener;

    .line 26
    invoke-direct {p0}, Lcom/samsung/android/app/music/lyrics/LocalLyricLoader;->ensureLyricCacheEnabled()V

    .line 27
    invoke-static {}, Lcom/samsung/android/app/music/lyrics/LyricsCache;->getInstance()Lcom/samsung/android/app/music/lyrics/LyricsCache;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/app/music/lyrics/LocalLyricLoader;->mOnLyricListener:Lcom/samsung/android/app/music/lyrics/LyricsCache$OnLyricsListener;

    .line 28
    invoke-static {p5}, Lcom/samsung/android/app/music/lyrics/LyricsExtra;->convertToExtra(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Landroid/os/Bundle;

    move-result-object v5

    move v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/lyrics/LyricsCache;->getLyrics(IJLcom/samsung/android/app/music/lyrics/LyricsCache$OnLyricsListener;Ljava/lang/Object;)V

    return-void
.end method
