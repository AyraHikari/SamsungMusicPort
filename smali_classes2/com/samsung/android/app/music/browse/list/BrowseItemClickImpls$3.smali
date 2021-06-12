.class final Lcom/samsung/android/app/music/browse/list/BrowseItemClickImpls$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/list/BrowseItemClickImpls;->a(Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;Landroid/support/v4/app/Fragment;)Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;

.field final synthetic b:Landroid/support/v4/app/Fragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;Landroid/support/v4/app/Fragment;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseItemClickImpls$3;->a:Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;

    iput-object p2, p0, Lcom/samsung/android/app/music/browse/list/BrowseItemClickImpls$3;->b:Landroid/support/v4/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;IJ)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 106
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseItemClickImpls$3;->a:Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "moveArtistDetails"

    const-string p2, "onItemClick. activity is null"

    .line 107
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 110
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseItemClickImpls$3;->a:Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "moveArtistDetails"

    .line 112
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
    const-string p2, "source_artist_id"

    .line 117
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    .line 116
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 119
    iget-object p2, p0, Lcom/samsung/android/app/music/browse/list/BrowseItemClickImpls$3;->b:Landroid/support/v4/app/Fragment;

    const/16 p3, 0x6e

    if-eqz p2, :cond_2

    .line 120
    invoke-static {p3}, Lcom/samsung/android/app/music/browse/BrowseLauncher;->a(I)Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;

    iget-object p2, p0, Lcom/samsung/android/app/music/browse/list/BrowseItemClickImpls$3;->b:Landroid/support/v4/app/Fragment;

    .line 121
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;->a(Landroid/support/v4/app/Fragment;)Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/music/browse/list/BrowseItemClickImpls$3;->a:Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;

    .line 122
    invoke-virtual {p2}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;->a(Landroid/support/v4/app/FragmentManager;)V

    goto :goto_0

    .line 124
    :cond_2
    invoke-static {p3}, Lcom/samsung/android/app/music/browse/BrowseLauncher;->b(I)Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;

    iget-object p2, p0, Lcom/samsung/android/app/music/browse/list/BrowseItemClickImpls$3;->a:Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;

    .line 125
    invoke-virtual {p2}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;->a(Landroid/app/Activity;)V

    :goto_0
    return-void
.end method
