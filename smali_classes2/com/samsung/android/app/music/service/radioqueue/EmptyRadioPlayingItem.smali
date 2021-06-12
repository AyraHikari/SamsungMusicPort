.class public Lcom/samsung/android/app/music/service/radioqueue/EmptyRadioPlayingItem;
.super Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
.source "SourceFile"


# static fields
.field private static volatile a:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;


# instance fields
.field private final b:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/samsung/android/app/music/service/radioqueue/EmptyRadioPlayingItem;->b:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    return-void
.end method

.method public static a()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
    .locals 3

    .line 14
    sget-object v0, Lcom/samsung/android/app/music/service/radioqueue/EmptyRadioPlayingItem;->a:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    if-nez v0, :cond_1

    .line 15
    const-class v0, Lcom/samsung/android/app/music/service/radioqueue/EmptyRadioPlayingItem;

    monitor-enter v0

    .line 16
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/music/service/radioqueue/EmptyRadioPlayingItem;->a:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    if-nez v1, :cond_0

    .line 17
    new-instance v1, Lcom/samsung/android/app/music/service/radioqueue/EmptyRadioPlayingItem;

    .line 18
    invoke-static {}, Lcom/samsung/android/app/music/service/radioqueue/EmptyRadioMetadata;->a()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/app/music/service/radioqueue/EmptyRadioPlayingItem;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    sput-object v1, Lcom/samsung/android/app/music/service/radioqueue/EmptyRadioPlayingItem;->a:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    .line 20
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 22
    :cond_1
    :goto_0
    sget-object v0, Lcom/samsung/android/app/music/service/radioqueue/EmptyRadioPlayingItem;->a:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 0

    return-void
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

    .line 33
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/EmptyRadioPlayingItem;->b:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

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
