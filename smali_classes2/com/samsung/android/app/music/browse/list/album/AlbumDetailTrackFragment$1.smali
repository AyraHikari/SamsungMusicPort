.class Lcom/samsung/android/app/music/browse/list/album/AlbumDetailTrackFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/browse/list/PlaylistInfoGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/list/album/AlbumDetailTrackFragment;->o()Lcom/samsung/android/app/music/browse/list/PlaylistInfoGetter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/browse/list/album/AlbumDetailTrackFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/list/album/AlbumDetailTrackFragment;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailTrackFragment$1;->a:Lcom/samsung/android/app/music/browse/list/album/AlbumDetailTrackFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/samsung/android/app/music/model/AdInfo;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailTrackFragment$1;->a:Lcom/samsung/android/app/music/browse/list/album/AlbumDetailTrackFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailTrackFragment;->a(Lcom/samsung/android/app/music/browse/list/album/AlbumDetailTrackFragment;)Lcom/samsung/android/app/music/model/base/AlbumInfoModel;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailTrackFragment$1;->a:Lcom/samsung/android/app/music/browse/list/album/AlbumDetailTrackFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailTrackFragment;->a(Lcom/samsung/android/app/music/browse/list/album/AlbumDetailTrackFragment;)Lcom/samsung/android/app/music/model/base/AlbumInfoModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/base/AlbumInfoModel;->getAd()Lcom/samsung/android/app/music/model/AdInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailTrackFragment$1;->a:Lcom/samsung/android/app/music/browse/list/album/AlbumDetailTrackFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailTrackFragment;->a(Lcom/samsung/android/app/music/browse/list/album/AlbumDetailTrackFragment;)Lcom/samsung/android/app/music/model/base/AlbumInfoModel;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailTrackFragment$1;->a:Lcom/samsung/android/app/music/browse/list/album/AlbumDetailTrackFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailTrackFragment;->a(Lcom/samsung/android/app/music/browse/list/album/AlbumDetailTrackFragment;)Lcom/samsung/android/app/music/model/base/AlbumInfoModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/base/AlbumInfoModel;->getPlaylistId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailTrackFragment$1;->a:Lcom/samsung/android/app/music/browse/list/album/AlbumDetailTrackFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailTrackFragment;->a(Lcom/samsung/android/app/music/browse/list/album/AlbumDetailTrackFragment;)Lcom/samsung/android/app/music/model/base/AlbumInfoModel;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailTrackFragment$1;->a:Lcom/samsung/android/app/music/browse/list/album/AlbumDetailTrackFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailTrackFragment;->a(Lcom/samsung/android/app/music/browse/list/album/AlbumDetailTrackFragment;)Lcom/samsung/android/app/music/model/base/AlbumInfoModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/base/AlbumInfoModel;->getAlbumTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
