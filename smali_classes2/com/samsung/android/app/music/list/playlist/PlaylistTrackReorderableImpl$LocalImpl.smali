.class final Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$LocalImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$Reorderable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LocalImpl"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private final fragment:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<",
            "Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private playlistId:J


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<",
            "Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;",
            ">;)V"
        }
    .end annotation

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$LocalImpl;->fragment:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    .line 45
    iget-object p1, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$LocalImpl;->fragment:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v0, "fragment.activity!!"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$LocalImpl;->context:Landroid/content/Context;

    .line 46
    iget-object p1, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$LocalImpl;->fragment:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    const-string v0, "key_playlist_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$LocalImpl;->playlistId:J

    return-void
.end method


# virtual methods
.method public final getFragment()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<",
            "Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$LocalImpl;->fragment:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    return-object v0
.end method

.method public moveItem(II)V
    .locals 3

    .line 49
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$LocalImpl;->fragment:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->f(I)I

    move-result p1

    .line 50
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$LocalImpl;->fragment:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;

    invoke-virtual {v0, p2}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->f(I)I

    move-result p2

    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$LocalImpl;->context:Landroid/content/Context;

    iget-wide v1, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl$LocalImpl;->playlistId:J

    invoke-static {v0, v1, v2, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists$Members;->a(Landroid/content/Context;JII)Z

    .line 53
    sget-object p1, Lcom/samsung/android/app/music/main/LocalSyncTask;->a:Lcom/samsung/android/app/music/main/LocalSyncTask$Companion;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/main/LocalSyncTask$Companion;->a(I)V

    return-void
.end method
