.class Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTrackFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/browse/list/PlaylistInfoGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTrackFragment;->o()Lcom/samsung/android/app/music/browse/list/PlaylistInfoGetter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTrackFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTrackFragment;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTrackFragment$1;->a:Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTrackFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/samsung/android/app/music/model/AdInfo;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTrackFragment$1;->a:Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTrackFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTrackFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/app/music/browse/list/PlaylistAdGetter;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTrackFragment$1;->a:Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTrackFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTrackFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/browse/list/PlaylistAdGetter;

    invoke-interface {v0}, Lcom/samsung/android/app/music/browse/list/PlaylistAdGetter;->a()Lcom/samsung/android/app/music/model/AdInfo;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTrackFragment$1;->a:Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTrackFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTrackFragment;->a(Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTrackFragment;)Lcom/samsung/android/app/music/model/contents/ArtistDetailTracksModel;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTrackFragment$1;->a:Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTrackFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTrackFragment;->a(Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTrackFragment;)Lcom/samsung/android/app/music/model/contents/ArtistDetailTracksModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/contents/ArtistDetailTracksModel;->getPlaylistId()Ljava/lang/String;

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

    .line 108
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTrackFragment$1;->a:Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTrackFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTrackFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/app/music/browse/list/PlaylistNameGetter;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTrackFragment$1;->a:Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTrackFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTrackFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/browse/list/PlaylistNameGetter;

    invoke-interface {v0}, Lcom/samsung/android/app/music/browse/list/PlaylistNameGetter;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
