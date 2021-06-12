.class Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector$CollectedEventsArgs;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CollectedEventsArgs"
.end annotation


# instance fields
.field a:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

.field b:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

.field c:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyMusicMetadata;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector$CollectedEventsArgs;->a:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .line 339
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyPlaybackState;->getState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector$CollectedEventsArgs;->b:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    return-void
.end method
