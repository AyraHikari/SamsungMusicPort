.class public Lcom/samsung/android/app/music/browse/list/BrowseTrackActionModeMenuImpl;
.super Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenuImpl;
.source "SourceFile"


# instance fields
.field private final a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<",
            "+",
            "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/samsung/android/app/music/download/DownloadableChecker;

.field private final d:Lcom/samsung/android/app/music/browse/list/PlaylistInfoGetter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Lcom/samsung/android/app/music/download/DownloadableChecker;Lcom/samsung/android/app/music/browse/list/PlaylistInfoGetter;)V
    .locals 0
    .param p2    # Lcom/samsung/android/app/music/download/DownloadableChecker;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/app/music/browse/list/PlaylistInfoGetter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<",
            "+",
            "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;",
            ">;",
            "Lcom/samsung/android/app/music/download/DownloadableChecker;",
            "Lcom/samsung/android/app/music/browse/list/PlaylistInfoGetter;",
            ")V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenuImpl;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackActionModeMenuImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    .line 45
    iput-object p2, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackActionModeMenuImpl;->c:Lcom/samsung/android/app/music/download/DownloadableChecker;

    .line 46
    iput-object p3, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackActionModeMenuImpl;->d:Lcom/samsung/android/app/music/browse/list/PlaylistInfoGetter;

    return-void
.end method

.method private a()V
    .locals 9

    .line 94
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackActionModeMenuImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    .line 95
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getScreenId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1023"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackActionModeMenuImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(I)[J

    move-result-object v0

    .line 97
    invoke-static {v0}, Lcom/samsung/android/app/music/util/CollectionsUtils;->a([J)Ljava/util/List;

    move-result-object v0

    .line 98
    iget-object v2, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackActionModeMenuImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;

    .line 99
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->getItemCount()I

    move-result v3

    .line 101
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    .line 104
    invoke-virtual {v2, v5}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->e(I)J

    move-result-wide v6

    .line 105
    invoke-virtual {v2, v5}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->isEnabled(I)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 106
    invoke-virtual {v2, v5}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 108
    invoke-static {v6}, Lcom/samsung/android/app/music/model/PlayTrackInfo;->fromCursor(Landroid/database/Cursor;)Lcom/samsung/android/app/music/model/PlayTrackInfo;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 110
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackActionModeMenuImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/app/music/model/PlayTrackInfo;->PLAY_TRACK_INFO_CONVERTER:Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter;

    invoke-static {v0, v4, v2}, Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter;->a(Landroid/content/Context;Ljava/util/List;Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter;)[J

    move-result-object v0

    const-string v2, "BrowseTrackActionModeMenuImpl"

    .line 119
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addToPlaylist. ids - "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    .line 120
    invoke-static {v0}, Lcom/samsung/android/app/music/util/CollectionsUtils;->a([J)Ljava/util/List;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 119
    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 123
    iget-object v3, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackActionModeMenuImpl;->d:Lcom/samsung/android/app/music/browse/list/PlaylistInfoGetter;

    if-eqz v3, :cond_3

    .line 124
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "key_playlist_id"

    .line 125
    iget-object v5, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackActionModeMenuImpl;->d:Lcom/samsung/android/app/music/browse/list/PlaylistInfoGetter;

    invoke-interface {v5}, Lcom/samsung/android/app/music/browse/list/PlaylistInfoGetter;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "is_selected_all"

    .line 126
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackActionModeMenuImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v5}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->w_()I

    move-result v5

    if-ne v4, v5, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_3
    if-eqz v0, :cond_4

    .line 130
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackActionModeMenuImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0, v2}, Lcom/samsung/android/app/music/activity/AddToPlaylistActivity;->b(Landroid/app/Activity;[JLandroid/os/Bundle;)V

    goto :goto_1

    :cond_4
    const-string v0, "BrowseTrackActionModeMenuImpl"

    const-string v1, "addToPlaylist. realAudioIds is null!"

    .line 132
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackActionModeMenuImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->K()V

    return-void
.end method

.method private a(Landroid/view/Menu;)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackActionModeMenuImpl;->c:Lcom/samsung/android/app/music/download/DownloadableChecker;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f1305ae

    .line 66
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackActionModeMenuImpl;->c:Lcom/samsung/android/app/music/download/DownloadableChecker;

    invoke-interface {v0}, Lcom/samsung/android/app/music/download/DownloadableChecker;->w()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)V
    .locals 0

    .line 58
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenuImpl;->a(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)V

    .line 59
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/browse/list/BrowseTrackActionModeMenuImpl;->a(Landroid/view/Menu;)V

    return-void
.end method

.method public a(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 51
    new-instance p1, Lcom/samsung/android/app/music/menu/ListMenuGroup;

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackActionModeMenuImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    const v1, 0x7f140009

    invoke-direct {p1, v0, v1}, Lcom/samsung/android/app/music/menu/ListMenuGroup;-><init>(Landroid/support/v4/app/Fragment;I)V

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackActionModeMenuImpl;->b:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 53
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackActionModeMenuImpl;->b:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    invoke-interface {p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public a(Landroid/support/v7/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1

    .line 75
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/browse/list/BrowseTrackActionModeMenuImpl;->b(Landroid/support/v7/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenuImpl;->a(Landroid/support/v7/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method protected b(Landroid/support/v7/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 0

    .line 79
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 81
    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackActionModeMenuImpl;->a()V

    const/4 p1, 0x1

    return p1

    :goto_0
    :pswitch_1
    const/4 p1, 0x0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x7f1305ab
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
