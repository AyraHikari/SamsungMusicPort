.class final Lcom/samsung/android/app/music/list/common/ListHeaderManager$initCreatePlaylist$$inlined$apply$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/common/ListHeaderManager;->c(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/common/ListHeaderManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/common/ListHeaderManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager$initCreatePlaylist$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 177
    iget-object p1, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager$initCreatePlaylist$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->d()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->isResumed()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 179
    iget-object p1, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager$initCreatePlaylist$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->b(Lcom/samsung/android/app/music/list/common/ListHeaderManager;)Lcom/samsung/android/app/music/list/analytics/ListHeaderAnalytics;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/list/analytics/ListHeaderAnalytics;->a(I)V

    .line 181
    iget-object p1, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager$initCreatePlaylist$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->d()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    if-nez p1, :cond_0

    .line 182
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v0, "Playlist-CreatePlaylist"

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_1

    .line 184
    new-instance v0, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistDialogFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistDialogFragment;-><init>()V

    .line 186
    iget-object v1, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager$initCreatePlaylist$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->d()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    const/16 v2, 0x7bf

    .line 185
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistDialogFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    const-string v1, "Playlist-CreatePlaylist"

    .line 189
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/app/music/list/playlist/CreatePlaylistDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
