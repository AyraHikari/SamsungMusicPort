.class public final Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;
.super Landroid/media/MediaPlayer;
.source "SourceFile"


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-PlayerMedia"

.field private static final TAG:Ljava/lang/String; = "SV-PlayerMedia"


# instance fields
.field private mIsPrepared:Z

.field private mSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Landroid/media/MediaPlayer;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;->mIsPrepared:Z

    return-void
.end method

.method private obtainDebugMetaInformation(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)Ljava/lang/String;
    .locals 0

    .line 57
    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object p1

    .line 61
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getTitle()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getDataSource()Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;->mSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;->mSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getFilePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isPrepared()Z
    .locals 1

    .line 85
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;->mIsPrepared:Z

    return v0
.end method

.method public prepare()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 67
    invoke-super {p0}, Landroid/media/MediaPlayer;->prepare()V

    .line 68
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;->setPrepared()V

    return-void
.end method

.method public setDataSource(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;Landroid/net/Uri;)V
    .locals 3
    .param p2    # Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;->mIsPrepared:Z

    .line 49
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;->mSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    const-string v0, "SMUSIC-SV-PlayerMedia"

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NextMediaPlayer setDataSource source id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    .line 51
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getSourceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;->obtainDebugMetaInformation(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 50
    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-super {p0, p1, p3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method public setPrepared()V
    .locals 1

    const/4 v0, 0x1

    .line 81
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;->mIsPrepared:Z

    return-void
.end method
