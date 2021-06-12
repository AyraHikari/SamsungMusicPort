.class public final Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyPlayingItem;
.super Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
.source "SourceFile"


# static fields
.field private static volatile EMPTY_PLAYING_ITEM:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;


# instance fields
.field private final mMeta:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyPlayingItem;->mMeta:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
    .locals 3

    .line 11
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyPlayingItem;->EMPTY_PLAYING_ITEM:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    if-nez v0, :cond_1

    .line 12
    const-class v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyPlayingItem;

    monitor-enter v0

    .line 13
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyPlayingItem;->EMPTY_PLAYING_ITEM:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    if-nez v1, :cond_0

    .line 14
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyPlayingItem;

    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyMusicMetadata;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyPlayingItem;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    sput-object v1, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyPlayingItem;->EMPTY_PLAYING_ITEM:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    .line 16
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 18
    :cond_1
    :goto_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyPlayingItem;->EMPTY_PLAYING_ITEM:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 0

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 57
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    .line 58
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyPlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public getExtraData()Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyPlayingItem;->mMeta:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    return-object v0
.end method

.method public getPlayingUri(I)Landroid/net/Uri;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public reset()V
    .locals 0

    return-void
.end method
