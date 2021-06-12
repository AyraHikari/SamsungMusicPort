.class public final Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/Deleteable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$LocalImpl;,
        Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$SyncImpl;,
        Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$IDeleteTrack;,
        Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$Companion;

.field public static final TAG:Ljava/lang/String; = "Playlist-RemovePlaylistTracks"


# instance fields
.field private final fragment:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<",
            "*>;"
        }
    .end annotation
.end field

.field private final impl:Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$IDeleteTrack;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl;->Companion:Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;[J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<",
            "*>;[J)V"
        }
    .end annotation

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl;->fragment:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    .line 34
    sget-boolean p1, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl;->fragment:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v0, "key_playlist_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/list/playlist/PlaylistKt;->isUserPlaylist(J)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 35
    new-instance p1, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$SyncImpl;

    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl;->fragment:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-direct {p1, v0, p2}, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$SyncImpl;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;[J)V

    check-cast p1, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$IDeleteTrack;

    goto :goto_0

    .line 37
    :cond_1
    new-instance p1, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$LocalImpl;

    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl;->fragment:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-direct {p1, v0, p2}, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$LocalImpl;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;[J)V

    check-cast p1, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$IDeleteTrack;

    .line 34
    :goto_0
    iput-object p1, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl;->impl:Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$IDeleteTrack;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;[JILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 30
    check-cast p2, [J

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;[J)V

    return-void
.end method


# virtual methods
.method public deleteItems()V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl;->impl:Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$IDeleteTrack;

    invoke-interface {v0}, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl$IDeleteTrack;->deleteTracks()V

    .line 43
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl;->fragment:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    .line 44
    instance-of v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;->c()V

    :cond_1
    return-void
.end method
