.class final Lcom/samsung/android/app/music/browse/list/BrowseItemClickImpls$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/list/BrowseItemClickImpls;->a(Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;Landroid/support/v4/app/Fragment;Ljava/lang/String;Z)Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Z

.field final synthetic d:Landroid/support/v4/app/Fragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;Ljava/lang/String;ZLandroid/support/v4/app/Fragment;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseItemClickImpls$6;->a:Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;

    iput-object p2, p0, Lcom/samsung/android/app/music/browse/list/BrowseItemClickImpls$6;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/samsung/android/app/music/browse/list/BrowseItemClickImpls$6;->c:Z

    iput-object p4, p0, Lcom/samsung/android/app/music/browse/list/BrowseItemClickImpls$6;->d:Landroid/support/v4/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;IJ)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 197
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseItemClickImpls$6;->a:Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "movePlaylistDetails"

    const-string p2, "onItemClick. activity is null"

    .line 198
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 201
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseItemClickImpls$6;->a:Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "movePlaylistDetails"

    .line 203
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "onItemClick. pos - "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", cursor null"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p2, "source_playlist_id"

    .line 207
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    .line 206
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "name"

    .line 209
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 210
    iget-object p4, p0, Lcom/samsung/android/app/music/browse/list/BrowseItemClickImpls$6;->b:Ljava/lang/String;

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p4

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 211
    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    const-string v0, "extra_thumbnail"

    .line 212
    invoke-virtual {p4, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "extra_show_blur_background"

    .line 213
    iget-boolean v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseItemClickImpls$6;->c:Z

    invoke-virtual {p4, p1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 p1, 0x5a

    .line 214
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/BrowseLauncher;->a(I)Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseItemClickImpls$6;->d:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;->a(Landroid/support/v4/app/Fragment;)Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;

    move-result-object p1

    .line 215
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;

    invoke-virtual {p1, p3}, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;

    .line 216
    invoke-virtual {p1, p4}, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;->a(Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;

    iget-object p2, p0, Lcom/samsung/android/app/music/browse/list/BrowseItemClickImpls$6;->a:Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;

    .line 217
    invoke-virtual {p2}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;->a(Landroid/support/v4/app/FragmentManager;)V

    return-void
.end method
