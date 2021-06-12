.class public interface abstract Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi$DefaultImpls;,
        Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi$Companion;->$$INSTANCE:Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi$Companion;

    sput-object v0, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi;->Companion:Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi$Companion;

    return-void
.end method


# virtual methods
.method public abstract addPlaylistTracks(Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/app/music/list/playlist/AddPlaylistTrackRequest;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            a = "playlistId"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            a = "updateDate"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit2/http/Query;
            a = "addType"
        .end annotation
    .end param
    .param p4    # Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrackRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrackRequest;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrackResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        a = "/usm/user/playlist/{playlistId}/tracks"
    .end annotation
.end method

.method public abstract createPlaylist(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            a = "playlistTitle"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            a = "registDate"
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/samsung/android/app/music/list/playlist/CreatePlaylistResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        a = "/usm/user/playlist"
    .end annotation
.end method

.method public abstract deletePlaylistTracks(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            a = "playlistId"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            a = "trackSeqIds"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            a = "updateDate"
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/samsung/android/app/music/list/playlist/DeletePlaylistTracksResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/DELETE;
        a = "/usm/user/playlist/{playlistId}/tracks"
    .end annotation
.end method

.method public abstract deletePlaylists(Lcom/samsung/android/app/music/list/playlist/DeletePlaylistRequest;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Lcom/samsung/android/app/music/list/playlist/DeletePlaylistRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            a = "playlistIds"
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/list/playlist/DeletePlaylistRequest;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/samsung/android/app/music/list/playlist/DeletePlaylistResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/HTTP;
        a = "DELETE"
        b = "/usm/user/playlists"
        c = true
    .end annotation
.end method

.method public abstract getPlaylistTracks(Ljava/lang/String;Ljava/lang/String;I)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            a = "playlistId"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            a = "updateDate"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit2/http/Query;
            a = "order"
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Lretrofit2/Call<",
            "Lcom/samsung/android/app/music/list/playlist/ServerTracksResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        a = "/usm/user/playlist/{playlistId}/tracks"
    .end annotation
.end method

.method public abstract getPlaylists(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            a = "latestUpdateDate"
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/samsung/android/app/music/list/playlist/ServerPlaylistResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        a = "/usm/user/playlists"
    .end annotation
.end method

.method public abstract getRecommendPlaylist(Lcom/samsung/android/app/music/list/playlist/RecommendPlaylistRequest;)Lretrofit2/Call;
    .param p1    # Lcom/samsung/android/app/music/list/playlist/RecommendPlaylistRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/list/playlist/RecommendPlaylistRequest;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/samsung/android/app/music/list/playlist/RecommendedPlaylistResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        a = "/usm/recommend/user/playlist"
    .end annotation
.end method

.method public abstract reorderPlaylistTracks(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/music/list/playlist/ReorderTracksRequest;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            a = "playlistId"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            a = "updateDate"
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/app/music/list/playlist/ReorderTracksRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/music/list/playlist/ReorderTracksRequest;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/samsung/android/app/music/list/playlist/ReorderTracksResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/PUT;
        a = "/usm/user/playlist/{playlistId}/tracks/order"
    .end annotation
.end method

.method public abstract syncUpPlaylist(Ljava/lang/String;Lcom/samsung/android/app/music/list/playlist/SyncUpRequest;I)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            a = "playlistId"
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/app/music/list/playlist/SyncUpRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit2/http/Query;
            a = "type"
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/music/list/playlist/SyncUpRequest;",
            "I)",
            "Lretrofit2/Call<",
            "Lcom/samsung/android/app/music/list/playlist/SyncUpResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/PUT;
        a = "/usm/user/playlist/{playlistId}/sync"
    .end annotation
.end method

.method public abstract updatePlaylist(Lcom/samsung/android/app/music/list/playlist/UpdatePlaylistRequest;)Lretrofit2/Call;
    .param p1    # Lcom/samsung/android/app/music/list/playlist/UpdatePlaylistRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/list/playlist/UpdatePlaylistRequest;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/samsung/android/app/music/list/playlist/UpdatePlaylistResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/PUT;
        a = "/usm/user/playlists"
    .end annotation
.end method
