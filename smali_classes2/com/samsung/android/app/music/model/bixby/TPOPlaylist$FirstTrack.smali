.class public Lcom/samsung/android/app/music/model/bixby/TPOPlaylist$FirstTrack;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/model/bixby/TPOPlaylist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FirstTrack"
.end annotation


# instance fields
.field private albumArtUrl:Ljava/lang/String;

.field private albumId:Ljava/lang/String;

.field private albumTitle:Ljava/lang/String;

.field private trackId:Ljava/lang/String;

.field private trackTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlbumArturl()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/samsung/android/app/music/model/bixby/TPOPlaylist$FirstTrack;->albumArtUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumId()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/samsung/android/app/music/model/bixby/TPOPlaylist$FirstTrack;->albumId:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumTitle()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/samsung/android/app/music/model/bixby/TPOPlaylist$FirstTrack;->albumTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackId()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/music/model/bixby/TPOPlaylist$FirstTrack;->trackId:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackTitle()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/samsung/android/app/music/model/bixby/TPOPlaylist$FirstTrack;->trackTitle:Ljava/lang/String;

    return-object v0
.end method
