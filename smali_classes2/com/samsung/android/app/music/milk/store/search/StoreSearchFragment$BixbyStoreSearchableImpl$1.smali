.class Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchableImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchableImpl;->a(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/RecyclerView;

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:I

.field final synthetic e:Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchableImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchableImpl;Landroid/support/v7/widget/RecyclerView;ILjava/lang/String;I)V
    .locals 0

    .line 718
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchableImpl$1;->e:Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchableImpl;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchableImpl$1;->a:Landroid/support/v7/widget/RecyclerView;

    iput p3, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchableImpl$1;->b:I

    iput-object p4, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchableImpl$1;->c:Ljava/lang/String;

    iput p5, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchableImpl$1;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 722
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchableImpl$1;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1, p0}, Landroid/support/v7/widget/RecyclerView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 723
    iget p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchableImpl$1;->b:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    .line 724
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchableImpl$1;->e:Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchableImpl;

    iget-object p1, p1, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchableImpl;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;

    .line 725
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->e(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchableImpl$1;->e:Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchableImpl;

    iget-object p2, p2, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchableImpl;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;

    .line 726
    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p2

    iget-object p3, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchableImpl$1;->e:Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchableImpl;

    iget-object p3, p3, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchableImpl;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;

    .line 727
    invoke-static {p3}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->c(Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;)Ljava/lang/String;

    move-result-object p3

    iget-object p4, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchableImpl$1;->c:Ljava/lang/String;

    iget-object p5, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchableImpl$1;->e:Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchableImpl;

    iget-object p5, p5, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchableImpl;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;

    invoke-static {p5}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->d(Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;)Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    move-result-object p5

    invoke-static {p3, p4, p5}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->a(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/music/search/SearchConstants$SearchType;)Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;

    move-result-object p3

    const/4 p4, 0x0

    .line 724
    invoke-static {p1, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentManagerExtensionKt;->a(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 729
    :cond_0
    iget p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchableImpl$1;->b:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    const-string p1, "2"

    .line 730
    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchableImpl$1;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 731
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchableImpl$1;->e:Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchableImpl;

    iget-object p1, p1, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchableImpl;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;

    iget p2, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchableImpl$1;->d:I

    .line 732
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->a(Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;I)Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/model/milksearch/SearchAlbum;

    .line 733
    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchableImpl$1;->e:Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchableImpl;

    iget-object p2, p2, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchableImpl;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;

    const/16 p3, 0x64

    .line 734
    invoke-static {p3}, Lcom/samsung/android/app/music/browse/BrowseLauncher;->a(I)Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;

    move-result-object p3

    iget-object p4, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchableImpl$1;->e:Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchableImpl;

    iget-object p4, p4, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchableImpl;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;

    .line 735
    invoke-virtual {p4}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;->a(Landroid/support/v4/app/Fragment;)Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;

    move-result-object p3

    .line 736
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/milksearch/SearchAlbum;->getAlbumId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;

    .line 733
    invoke-static {p2, p1}, Lcom/samsung/android/app/music/search/SearchUtils;->a(Landroid/support/v4/app/Fragment;Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;)V

    goto :goto_0

    :cond_1
    const-string p1, "5"

    .line 737
    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchableImpl$1;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 738
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchableImpl$1;->e:Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchableImpl;

    iget-object p1, p1, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchableImpl;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;

    iget p2, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchableImpl$1;->d:I

    .line 739
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->a(Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;I)Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/model/milksearch/SearchPlaylist;

    .line 740
    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchableImpl$1;->e:Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchableImpl;

    iget-object p2, p2, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchableImpl;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;

    const/16 p3, 0x5a

    .line 741
    invoke-static {p3}, Lcom/samsung/android/app/music/browse/BrowseLauncher;->a(I)Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;

    move-result-object p3

    iget-object p4, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchableImpl$1;->e:Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchableImpl;

    iget-object p4, p4, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchableImpl;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;

    .line 742
    invoke-virtual {p4}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;->a(Landroid/support/v4/app/Fragment;)Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;

    move-result-object p3

    iget-object p4, p1, Lcom/samsung/android/app/music/model/milksearch/SearchPlaylist;->playlistId:Ljava/lang/String;

    .line 743
    invoke-virtual {p3, p4}, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;

    iget-object p1, p1, Lcom/samsung/android/app/music/model/milksearch/SearchPlaylist;->playlistName:Ljava/lang/String;

    .line 744
    invoke-virtual {p3, p1}, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;

    .line 740
    invoke-static {p2, p1}, Lcom/samsung/android/app/music/search/SearchUtils;->a(Landroid/support/v4/app/Fragment;Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;)V

    :cond_2
    :goto_0
    return-void
.end method
