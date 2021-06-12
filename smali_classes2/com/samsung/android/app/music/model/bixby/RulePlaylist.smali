.class public Lcom/samsung/android/app/music/model/bixby/RulePlaylist;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private playlistId:Ljava/lang/String;

.field private playlistName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPlaylistId()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/samsung/android/app/music/model/bixby/RulePlaylist;->playlistId:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaylistName()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/samsung/android/app/music/model/bixby/RulePlaylist;->playlistName:Ljava/lang/String;

    return-object v0
.end method
