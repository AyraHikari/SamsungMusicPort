.class Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;)V
    .locals 0

    .line 433
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$5;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;IJ)V
    .locals 6

    .line 436
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$5;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/search/SearchableAdapter;

    invoke-virtual {v0, p2}, Lcom/samsung/android/app/music/search/SearchableAdapter;->getItemViewType(I)I

    move-result v0

    const/16 v1, -0xc8

    if-ne v0, v1, :cond_0

    .line 438
    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$5;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;

    .line 439
    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->e(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentManager;

    move-result-object p2

    iget-object p3, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$5;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;

    invoke-virtual {p3}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p3

    iget-object p4, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$5;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;

    .line 440
    invoke-static {p4}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->c(Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;)Ljava/lang/String;

    move-result-object p4

    const v0, 0x7f130062

    .line 441
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$5;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->d(Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;)Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    move-result-object v0

    .line 440
    invoke-static {p4, p1, v0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->a(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/music/search/SearchConstants$SearchType;)Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;

    move-result-object p1

    const/4 p4, 0x0

    .line 438
    invoke-static {p2, p3, p1, p4}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentManagerExtensionKt;->a(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    return-void

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$5;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/search/SearchableAdapter;

    invoke-virtual {v0, p2}, Lcom/samsung/android/app/music/search/SearchableAdapter;->getModifiedPosition(I)I

    move-result p2

    .line 445
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$5;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/search/SearchableAdapter;

    invoke-virtual {v0, p2}, Lcom/samsung/android/app/music/search/SearchableAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;

    if-nez v0, :cond_1

    const-string p1, "SMUSIC-UiList"

    .line 447
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

    .line 451
    :cond_1
    iget-object p3, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$5;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;

    invoke-virtual {p3}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    .line 452
    iget-object p4, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$5;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;

    invoke-virtual {p4}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p4

    check-cast p4, Lcom/samsung/android/app/music/search/SearchableAdapter;

    invoke-virtual {p4, v0}, Lcom/samsung/android/app/music/search/SearchableAdapter;->a(Landroid/database/Cursor;)I

    move-result p4

    .line 453
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$5;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/search/SearchableAdapter;

    invoke-virtual {v1, p4}, Lcom/samsung/android/app/music/search/SearchableAdapter;->e(I)I

    move-result v1

    sub-int v1, p2, v1

    .line 454
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;->b()Landroid/database/Cursor;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;

    const/16 v2, 0x64

    const v3, 0x7f130043

    packed-switch p4, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_3

    .line 518
    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$5;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->h(Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;)V

    .line 519
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/model/milksearch/SearchPlaylist;

    if-nez p1, :cond_2

    return-void

    .line 523
    :cond_2
    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$5;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;

    const/16 p3, 0x5a

    .line 524
    invoke-static {p3}, Lcom/samsung/android/app/music/browse/BrowseLauncher;->a(I)Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;

    move-result-object p3

    iget-object p4, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$5;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;

    .line 525
    invoke-virtual {p4}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;->a(Landroid/support/v4/app/Fragment;)Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;

    move-result-object p3

    iget-object p4, p1, Lcom/samsung/android/app/music/model/milksearch/SearchPlaylist;->playlistId:Ljava/lang/String;

    invoke-virtual {p3, p4}, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;

    iget-object p1, p1, Lcom/samsung/android/app/music/model/milksearch/SearchPlaylist;->playlistName:Ljava/lang/String;

    .line 526
    invoke-virtual {p3, p1}, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;

    .line 523
    invoke-static {p2, p1}, Lcom/samsung/android/app/music/search/SearchUtils;->a(Landroid/support/v4/app/Fragment;Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;)V

    goto/16 :goto_3

    .line 576
    :pswitch_2
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$5;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->k(Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;)V

    .line 578
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylist;

    if-nez p1, :cond_3

    return-void

    .line 582
    :cond_3
    invoke-static {p3, p1}, Lcom/samsung/android/app/music/search/SearchUtils;->a(Landroid/content/Context;Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylist;)V

    goto/16 :goto_3

    .line 540
    :pswitch_3
    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$5;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;

    invoke-static {p2}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->j(Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;)V

    .line 541
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->b()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/music/model/milksearch/SearchLyrics;

    if-nez p2, :cond_4

    return-void

    .line 545
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p3

    const p4, 0x7f13013a

    if-ne p3, p4, :cond_5

    .line 546
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$5;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;

    .line 547
    invoke-static {v2}, Lcom/samsung/android/app/music/browse/BrowseLauncher;->a(I)Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;

    move-result-object p3

    iget-object p4, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$5;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;

    .line 548
    invoke-virtual {p4}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;->a(Landroid/support/v4/app/Fragment;)Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;

    move-result-object p3

    invoke-virtual {p2}, Lcom/samsung/android/app/music/model/milksearch/SearchLyrics;->getAlbumId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;

    .line 546
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/search/SearchUtils;->a(Landroid/support/v4/app/Fragment;Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;)V

    .line 549
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p1

    const-string p2, "969"

    const-string p3, "9702"

    .line 550
    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 552
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    if-ne p1, v3, :cond_7

    .line 553
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$5;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;

    .line 554
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->e(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 556
    invoke-virtual {p2}, Lcom/samsung/android/app/music/model/milksearch/SearchLyrics;->getTrackId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;

    move-result-object p2

    const-string p3, "trackDetail"

    .line 557
    invoke-virtual {p2, p1, p3}, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 559
    :cond_6
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p1

    const-string p2, "969"

    const-string p3, "9703"

    .line 560
    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 563
    :cond_7
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$5;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    if-eqz v1, :cond_8

    const-string v0, "969"

    .line 567
    invoke-virtual {p2}, Lcom/samsung/android/app/music/model/milksearch/SearchLyrics;->getTrackId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/samsung/android/app/music/model/milksearch/SearchLyrics;->getTrackTitle()Ljava/lang/String;

    move-result-object v3

    .line 568
    invoke-virtual {p2}, Lcom/samsung/android/app/music/model/milksearch/SearchLyrics;->getArtistsName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 566
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->a(Ljava/lang/String;Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    :cond_8
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p1

    const-string p2, "969"

    const-string p3, "9704"

    .line 571
    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 529
    :pswitch_4
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$5;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->i(Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;)V

    .line 530
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/model/milksearch/SearchMusicVideo;

    if-nez p1, :cond_9

    return-void

    .line 534
    :cond_9
    invoke-static {p3, p1}, Lcom/samsung/android/app/music/search/SearchUtils;->a(Landroid/content/Context;Lcom/samsung/android/app/music/model/milksearch/SearchMusicVideo;)V

    .line 535
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p1

    const-string p2, "968"

    const-string p3, "9693"

    .line 536
    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 458
    :pswitch_5
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$5;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->e(Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;)V

    .line 459
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/model/milksearch/SearchArtist;

    if-nez p1, :cond_a

    return-void

    .line 463
    :cond_a
    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$5;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;

    invoke-static {p2}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->d(Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;)Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    move-result-object p2

    sget-object p4, Lcom/samsung/android/app/music/search/SearchConstants$SearchType;->SPOTIFY_STORE:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    if-ne p2, p4, :cond_b

    .line 464
    invoke-static {p3, p1}, Lcom/samsung/android/app/music/search/SearchUtils;->a(Landroid/content/Context;Lcom/samsung/android/app/music/model/milksearch/SearchArtist;)V

    goto :goto_0

    .line 465
    :cond_b
    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$5;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;

    invoke-static {p2}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->d(Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;)Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    move-result-object p2

    sget-object p3, Lcom/samsung/android/app/music/search/SearchConstants$SearchType;->MILK_STORE:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    if-ne p2, p3, :cond_c

    .line 466
    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$5;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;

    const/16 p3, 0x6e

    .line 467
    invoke-static {p3}, Lcom/samsung/android/app/music/browse/BrowseLauncher;->a(I)Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;

    move-result-object p3

    iget-object p4, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$5;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;

    .line 468
    invoke-virtual {p4}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;->a(Landroid/support/v4/app/Fragment;)Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;

    move-result-object p3

    .line 469
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/milksearch/SearchArtist;->getArtistId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;

    .line 466
    invoke-static {p2, p1}, Lcom/samsung/android/app/music/search/SearchUtils;->a(Landroid/support/v4/app/Fragment;Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;)V

    .line 471
    :cond_c
    :goto_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p1

    const-string p2, "966"

    const-string p3, "9672"

    .line 472
    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 476
    :pswitch_6
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$5;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->f(Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;)V

    .line 477
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/model/milksearch/SearchAlbum;

    if-nez p1, :cond_d

    return-void

    .line 481
    :cond_d
    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$5;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;

    invoke-static {p2}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->d(Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;)Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    move-result-object p2

    sget-object p4, Lcom/samsung/android/app/music/search/SearchConstants$SearchType;->SPOTIFY_STORE:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    if-ne p2, p4, :cond_e

    .line 482
    invoke-static {p3, p1}, Lcom/samsung/android/app/music/search/SearchUtils;->a(Landroid/content/Context;Lcom/samsung/android/app/music/model/milksearch/SearchAlbum;)V

    goto :goto_1

    .line 484
    :cond_e
    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$5;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;

    .line 485
    invoke-static {v2}, Lcom/samsung/android/app/music/browse/BrowseLauncher;->a(I)Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;

    move-result-object p3

    iget-object p4, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$5;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;

    .line 486
    invoke-virtual {p4}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;->a(Landroid/support/v4/app/Fragment;)Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;

    move-result-object p3

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/milksearch/SearchAlbum;->getAlbumId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;

    .line 484
    invoke-static {p2, p1}, Lcom/samsung/android/app/music/search/SearchUtils;->a(Landroid/support/v4/app/Fragment;Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;)V

    .line 488
    :goto_1
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p1

    const-string p2, "965"

    const-string p3, "9662"

    .line 489
    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 493
    :pswitch_7
    iget-object p4, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$5;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;

    invoke-static {p4}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->d(Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;)Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    move-result-object p4

    sget-object v2, Lcom/samsung/android/app/music/search/SearchConstants$SearchType;->SPOTIFY_STORE:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    if-ne p4, v2, :cond_f

    .line 494
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/model/milksearch/SearchTrack;

    if-eqz p1, :cond_11

    .line 496
    invoke-static {p3, p1}, Lcom/samsung/android/app/music/search/SearchUtils;->a(Landroid/content/Context;Lcom/samsung/android/app/music/model/milksearch/SearchTrack;)V

    goto :goto_2

    .line 499
    :cond_f
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    if-ne p1, v3, :cond_10

    .line 500
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/model/base/TrackModel;

    .line 501
    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$5;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;

    .line 502
    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->e(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentManager;

    move-result-object p2

    if-eqz p2, :cond_11

    if-eqz p1, :cond_11

    .line 504
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/TrackModel;->getTrackId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;

    move-result-object p1

    const-string p3, "trackDetail"

    .line 505
    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_2

    .line 508
    :cond_10
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$5;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;

    invoke-virtual {p1, p2, v1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->a(II)V

    .line 509
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$5;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;

    .line 510
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->g(Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;)Landroid/content/Context;

    move-result-object p1

    const-string p2, "SCPY"

    const-string p3, "Samsung Music"

    invoke-static {p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    :cond_11
    :goto_2
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p1

    const-string p2, "964"

    const-string p3, "9630"

    .line 514
    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
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
