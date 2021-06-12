.class Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$LastPlayedSong;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LastPlayedSong"
.end annotation


# instance fields
.field private final mPlayerSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;)V
    .locals 0

    .line 1389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1390
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$LastPlayedSong;->mPlayerSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    return-void
.end method


# virtual methods
.method getLastPlayedPosition(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)J
    .locals 2

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 1405
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getMediaId()J

    move-result-wide v0

    .line 1406
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$LastPlayedSong;->mPlayerSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->getLastPlayedSongPosition(J)J

    move-result-wide v0

    return-wide v0
.end method

.method saveLastPosition(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;J)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1397
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getMediaId()J

    move-result-wide v0

    .line 1398
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$LastPlayedSong;->mPlayerSettingManager:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-interface {p1, v0, v1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->setLastPlayedSongInfo(JJ)V

    return-void
.end method
