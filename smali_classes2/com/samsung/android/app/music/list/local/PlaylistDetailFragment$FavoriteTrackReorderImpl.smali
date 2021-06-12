.class final Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$FavoriteTrackReorderImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$Reorderable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FavoriteTrackReorderImpl"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private final b:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<",
            "Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V
    .locals 1
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

    .line 1496
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$FavoriteTrackReorderImpl;->b:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    .line 1498
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$FavoriteTrackReorderImpl;->b:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v0, "fragment.activity!!"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$FavoriteTrackReorderImpl;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public moveItem(II)V
    .locals 3

    .line 1501
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$FavoriteTrackReorderImpl;->b:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->f(I)I

    move-result p1

    .line 1502
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$FavoriteTrackReorderImpl;->b:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;

    invoke-virtual {v0, p2}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->f(I)I

    move-result p2

    .line 1506
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$FavoriteTrackReorderImpl;->a:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites$Tracks;->a(Landroid/content/Context;II)Z

    const-string v0, "PlaylistDetailFragment"

    .line 1507
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveItem(from="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", to="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1508
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$FavoriteTrackReorderImpl;->a:Landroid/content/Context;

    new-instance p2, Landroid/content/Intent;

    const-string v0, "com.samsung.android.app.music.core.state.FAVORITE_CHANGED"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
