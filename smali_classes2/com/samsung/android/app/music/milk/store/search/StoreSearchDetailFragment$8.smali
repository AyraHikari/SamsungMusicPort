.class Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;)V
    .locals 0

    .line 798
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$8;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;IJ)V
    .locals 11

    .line 801
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$8;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;

    invoke-virtual {v0, p2}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "SMUSIC-UiList"

    .line 803
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid item selected id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " position "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 807
    :cond_0
    iget-object p3, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$8;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;

    invoke-virtual {p3}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;

    invoke-virtual {p3, v0}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->a(Landroid/database/Cursor;)I

    move-result p3

    .line 808
    iget-object p4, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$8;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;

    invoke-static {p4, p2}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->a(Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;I)Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;

    move-result-object p4

    .line 809
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$8;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;

    invoke-virtual {v0, p2}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->getModifiedPosition(I)I

    move-result v0

    .line 811
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$8;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/16 v2, 0x64

    const v3, 0x7f130043

    const/4 v4, 0x0

    packed-switch p3, :pswitch_data_0

    :goto_0
    :pswitch_0
    move-object p1, v4

    goto/16 :goto_4

    .line 872
    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$8;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->f(Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;)V

    .line 873
    invoke-virtual {p4}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/model/milksearch/SearchPlaylist;

    .line 874
    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$8;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;

    const/16 p3, 0x5a

    .line 875
    invoke-static {p3}, Lcom/samsung/android/app/music/browse/BrowseLauncher;->a(I)Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;

    move-result-object p3

    iget-object p4, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$8;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;

    .line 876
    invoke-virtual {p3, p4}, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;->a(Landroid/support/v4/app/Fragment;)Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;

    move-result-object p3

    iget-object p4, p1, Lcom/samsung/android/app/music/model/milksearch/SearchPlaylist;->playlistId:Ljava/lang/String;

    .line 877
    invoke-virtual {p3, p4}, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;

    iget-object p1, p1, Lcom/samsung/android/app/music/model/milksearch/SearchPlaylist;->playlistName:Ljava/lang/String;

    invoke-virtual {p3, p1}, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;

    .line 874
    invoke-static {p2, p1}, Lcom/samsung/android/app/music/search/SearchUtils;->a(Landroid/support/v4/app/Fragment;Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;)V

    goto :goto_0

    .line 922
    :pswitch_2
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$8;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->i(Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;)V

    .line 924
    invoke-virtual {p4}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylist;

    .line 925
    invoke-static {v1, p1}, Lcom/samsung/android/app/music/search/SearchUtils;->a(Landroid/content/Context;Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylist;)V

    goto :goto_0

    .line 889
    :pswitch_3
    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$8;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;

    invoke-static {p2}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->h(Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;)V

    .line 890
    invoke-virtual {p4}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->b()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/music/model/milksearch/SearchLyrics;

    .line 891
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p3

    const p4, 0x7f13013a

    if-ne p3, p4, :cond_1

    .line 892
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$8;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;

    .line 893
    invoke-static {v2}, Lcom/samsung/android/app/music/browse/BrowseLauncher;->a(I)Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;

    move-result-object p3

    iget-object p4, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$8;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;

    .line 894
    invoke-virtual {p3, p4}, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;->a(Landroid/support/v4/app/Fragment;)Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;

    move-result-object p3

    .line 895
    invoke-virtual {p2}, Lcom/samsung/android/app/music/model/milksearch/SearchLyrics;->getAlbumId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;

    .line 892
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/search/SearchUtils;->a(Landroid/support/v4/app/Fragment;Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;)V

    .line 896
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p1

    const-string p2, "969"

    const-string p3, "9702"

    .line 897
    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 899
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    if-ne p1, v3, :cond_3

    .line 900
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$8;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 902
    invoke-virtual {p2}, Lcom/samsung/android/app/music/model/milksearch/SearchLyrics;->getTrackId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;

    move-result-object p2

    const-string p3, "trackDetail"

    .line 903
    invoke-virtual {p2, p1, p3}, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 905
    :cond_2
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p1

    const-string p2, "969"

    const-string p3, "9703"

    .line 906
    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 909
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$8;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v6

    if-eqz v6, :cond_4

    const-string v5, "969"

    .line 913
    invoke-virtual {p2}, Lcom/samsung/android/app/music/model/milksearch/SearchLyrics;->getTrackId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Lcom/samsung/android/app/music/model/milksearch/SearchLyrics;->getTrackTitle()Ljava/lang/String;

    move-result-object v8

    .line 914
    invoke-virtual {p2}, Lcom/samsung/android/app/music/model/milksearch/SearchLyrics;->getArtistsName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    .line 912
    invoke-static/range {v5 .. v10}, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->a(Ljava/lang/String;Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    :cond_4
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p1

    const-string p2, "969"

    const-string p3, "9704"

    .line 917
    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 880
    :pswitch_4
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$8;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->g(Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;)V

    .line 881
    invoke-virtual {p4}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/model/milksearch/SearchMusicVideo;

    .line 882
    invoke-static {v1, p1}, Lcom/samsung/android/app/music/search/SearchUtils;->a(Landroid/content/Context;Lcom/samsung/android/app/music/model/milksearch/SearchMusicVideo;)V

    .line 884
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p1

    const-string p2, "968"

    const-string p3, "9693"

    .line 885
    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 816
    :pswitch_5
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$8;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->c(Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;)V

    .line 817
    invoke-virtual {p4}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/model/milksearch/SearchArtist;

    .line 818
    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$8;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;

    invoke-static {p2}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->d(Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;)Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    move-result-object p2

    sget-object p3, Lcom/samsung/android/app/music/search/SearchConstants$SearchType;->SPOTIFY_STORE:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    if-ne p2, p3, :cond_5

    .line 819
    invoke-static {v1, p1}, Lcom/samsung/android/app/music/search/SearchUtils;->a(Landroid/content/Context;Lcom/samsung/android/app/music/model/milksearch/SearchArtist;)V

    goto :goto_1

    .line 821
    :cond_5
    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$8;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;

    const/16 p3, 0x6e

    .line 822
    invoke-static {p3}, Lcom/samsung/android/app/music/browse/BrowseLauncher;->a(I)Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;

    move-result-object p3

    iget-object p4, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$8;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;

    .line 823
    invoke-virtual {p3, p4}, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;->a(Landroid/support/v4/app/Fragment;)Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;

    move-result-object p3

    .line 824
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/milksearch/SearchArtist;->getArtistId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;

    .line 821
    invoke-static {p2, p1}, Lcom/samsung/android/app/music/search/SearchUtils;->a(Landroid/support/v4/app/Fragment;Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;)V

    .line 826
    :goto_1
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p1

    const-string p2, "966"

    const-string p3, "9672"

    .line 827
    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 831
    :pswitch_6
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$8;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->e(Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;)V

    .line 832
    invoke-virtual {p4}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/model/milksearch/SearchAlbum;

    .line 833
    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$8;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;

    invoke-static {p2}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->d(Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;)Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    move-result-object p2

    sget-object p3, Lcom/samsung/android/app/music/search/SearchConstants$SearchType;->SPOTIFY_STORE:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    if-ne p2, p3, :cond_6

    .line 834
    invoke-static {v1, p1}, Lcom/samsung/android/app/music/search/SearchUtils;->a(Landroid/content/Context;Lcom/samsung/android/app/music/model/milksearch/SearchAlbum;)V

    goto :goto_2

    .line 836
    :cond_6
    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$8;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;

    .line 837
    invoke-static {v2}, Lcom/samsung/android/app/music/browse/BrowseLauncher;->a(I)Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;

    move-result-object p3

    iget-object p4, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$8;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;

    .line 838
    invoke-virtual {p3, p4}, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;->a(Landroid/support/v4/app/Fragment;)Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;

    move-result-object p3

    .line 839
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/milksearch/SearchAlbum;->getAlbumId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;

    .line 836
    invoke-static {p2, p1}, Lcom/samsung/android/app/music/search/SearchUtils;->a(Landroid/support/v4/app/Fragment;Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;)V

    .line 841
    :goto_2
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p1

    const-string p2, "965"

    const-string p3, "9662"

    .line 842
    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 848
    :pswitch_7
    iget-object p3, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$8;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;

    invoke-static {p3}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->d(Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;)Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    move-result-object p3

    sget-object v2, Lcom/samsung/android/app/music/search/SearchConstants$SearchType;->SPOTIFY_STORE:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    if-ne p3, v2, :cond_7

    .line 849
    invoke-virtual {p4}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/model/milksearch/SearchTrack;

    if-eqz p1, :cond_9

    .line 851
    invoke-static {v1, p1}, Lcom/samsung/android/app/music/search/SearchUtils;->a(Landroid/content/Context;Lcom/samsung/android/app/music/model/milksearch/SearchTrack;)V

    goto :goto_3

    .line 854
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    if-ne p1, v3, :cond_8

    .line 855
    invoke-virtual {p4}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/model/base/TrackModel;

    .line 856
    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$8;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;

    .line 857
    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->e(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentManager;

    move-result-object p2

    if-eqz p1, :cond_9

    if-eqz p2, :cond_9

    .line 859
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/TrackModel;->getTrackId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;

    move-result-object p1

    const-string p3, "trackDetail"

    .line 860
    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_3

    .line 863
    :cond_8
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$8;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->a(II)V

    .line 864
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$8;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;

    iget-object p1, p1, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->a:Landroid/content/Context;

    const-string p2, "SCPY"

    const-string p3, "Samsung Music"

    .line 865
    invoke-static {p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_3
    const-string v4, "1304"

    const-string p1, "Local"

    :goto_4
    if-eqz v4, :cond_b

    if-eqz p1, :cond_a

    .line 932
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p2

    iget-object p3, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$8;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;

    .line 933
    invoke-virtual {p3}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->getScreenId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3, v4, p1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 935
    :cond_a
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$8;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;

    .line 936
    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->getScreenId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v4}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
