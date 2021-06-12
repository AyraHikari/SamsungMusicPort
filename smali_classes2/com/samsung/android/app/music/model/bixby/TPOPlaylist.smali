.class public Lcom/samsung/android/app/music/model/bixby/TPOPlaylist;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/model/bixby/TPOPlaylist$FirstTrack;
    }
.end annotation


# instance fields
.field private description:Ljava/lang/String;

.field private firstTrackInfo:Lcom/samsung/android/app/music/model/bixby/TPOPlaylist$FirstTrack;

.field private playlistId:Ljava/lang/String;

.field private playlistName:Ljava/lang/String;

.field private tpoMessage:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/samsung/android/app/music/model/bixby/TPOPlaylist;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstTrackInfo()Lcom/samsung/android/app/music/model/bixby/TPOPlaylist$FirstTrack;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/samsung/android/app/music/model/bixby/TPOPlaylist;->firstTrackInfo:Lcom/samsung/android/app/music/model/bixby/TPOPlaylist$FirstTrack;

    return-object v0
.end method

.method public getPlaylistId()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/samsung/android/app/music/model/bixby/TPOPlaylist;->playlistId:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaylistName()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/samsung/android/app/music/model/bixby/TPOPlaylist;->playlistName:Ljava/lang/String;

    return-object v0
.end method

.method public getTpoMessage()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/music/model/bixby/TPOPlaylist;->tpoMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/samsung/android/app/music/model/bixby/TPOPlaylist;->type:I

    return v0
.end method
