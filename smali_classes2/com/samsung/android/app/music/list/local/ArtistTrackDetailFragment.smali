.class public final Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment;
.super Lcom/samsung/android/app/music/list/local/PlayableUiFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment$ActionModeOptionsMenu;,
        Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/list/local/PlayableUiFragment<",
        "Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment$Companion;


# instance fields
.field private final b:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment;->a:Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;-><init>()V

    .line 49
    new-instance v0, Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment$onItemClickListener$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment$onItemClickListener$1;-><init>(Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment;)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    return-void
.end method


# virtual methods
.method public synthetic A()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment;->c()Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    return-object v0
.end method

.method public a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .line 91
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    .line 93
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment;->a(Landroid/database/Cursor;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    return-void
.end method

.method protected b(I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 3

    .line 113
    new-instance p1, Lcom/samsung/android/app/music/list/local/query/ArtistTrackDetailQueryArgs;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v2, "key_group_type"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p1, v0, v1}, Lcom/samsung/android/app/music/list/local/query/ArtistTrackDetailQueryArgs;-><init>(Ljava/lang/String;I)V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    return-object p1
.end method

.method protected c()Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter;
    .locals 2

    .line 97
    new-instance v0, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$Builder;

    move-object v1, p0

    check-cast v1, Landroid/support/v4/app/Fragment;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$Builder;-><init>(Landroid/support/v4/app/Fragment;)V

    const-string v1, "title"

    .line 98
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$Builder;->setText1Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    const-string v1, "album"

    .line 99
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$Builder;->setText2Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    const-string v1, "duration"

    .line 100
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$Builder;->setText3Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    const-string v1, "album_id"

    .line 101
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$Builder;->setThumbnailKey(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    const-string v1, "_id"

    .line 102
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$Builder;->d(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;

    const-string v1, "track"

    .line 103
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$Builder;->e(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;

    const/4 v1, 0x1

    .line 104
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$Builder;->setPrivateIconEnabled(Z)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    .line 105
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$Builder;->c()Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter;

    move-result-object v0

    return-object v0
.end method

.method public g()I
    .locals 1

    const v0, 0x110027

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 2

    .line 121
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v1, "key_keyword"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 54
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onAttach(Landroid/app/Activity;)V

    const-string p1, "209"

    const-string v0, "211"

    .line 55
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 7

    .line 151
    new-instance v6, Lcom/samsung/android/app/music/menu/ListMenuGroup;

    move-object v1, p0

    check-cast v1, Landroid/support/v4/app/Fragment;

    const v2, 0x7f140008

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/menu/ListMenuGroup;-><init>(Landroid/support/v4/app/Fragment;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v6, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    iput-object v6, p0, Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment;->contextMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    if-nez p1, :cond_0

    .line 152
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter;->getText1(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 153
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .line 125
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment;->b(I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    move-result-object v2

    .line 126
    new-instance p1, Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment$onCreateLoader$cl$1;

    .line 127
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    if-nez p2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v0, "activity!!"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string p2, "activity!!.applicationContext"

    invoke-static {v3, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    iget-object v4, v2, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->uri:Landroid/net/Uri;

    .line 129
    iget-object v5, v2, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    .line 130
    iget-object v6, v2, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selection:Ljava/lang/String;

    .line 131
    iget-object v7, v2, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selectionArgs:[Ljava/lang/String;

    .line 132
    iget-object v8, v2, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->orderBy:Ljava/lang/String;

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment$onCreateLoader$cl$1;-><init>(Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    const/16 p2, 0x7d0

    int-to-long v0, p2

    .line 141
    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment$onCreateLoader$cl$1;->setUpdateThrottle(J)V

    .line 142
    check-cast p1, Landroid/support/v4/content/Loader;

    return-object p1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflater"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    new-instance v0, Lcom/samsung/android/app/music/menu/ListMenuGroup;

    move-object v2, p0

    check-cast v2, Landroid/support/v4/app/Fragment;

    const v3, 0x7f14001e

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/music/menu/ListMenuGroup;-><init>(Landroid/support/v4/app/Fragment;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment;->musicMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 147
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 47
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 11

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 61
    invoke-static {p0, p2, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;IILjava/lang/Object;)V

    .line 63
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;)V

    .line 66
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v3, "activity!!"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/app/Activity;

    const v3, 0x7f0b0350

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;-><init>(Landroid/app/Activity;I)V

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;)V

    .line 67
    sget v1, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->e:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment;->b_(I)V

    .line 68
    new-instance v1, Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment$ActionModeOptionsMenu;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment$ActionModeOptionsMenu;-><init>(Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment;)V

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenu;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenu;)V

    .line 69
    new-instance v1, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;

    move-object v3, p0

    check-cast v3, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-direct {v1, v3}, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListAnalytics;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListAnalytics;)V

    .line 71
    new-instance v1, Lcom/samsung/android/app/music/list/ListDeleteableImpl;

    move-object v2, p0

    check-cast v2, Landroid/support/v4/app/Fragment;

    const v6, 0x7f0d0028

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xc

    const/4 v10, 0x0

    move-object v4, v1

    move-object v5, v2

    invoke-direct/range {v4 .. v10}, Lcom/samsung/android/app/music/list/ListDeleteableImpl;-><init>(Landroid/support/v4/app/Fragment;IIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/Deleteable;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/Deleteable;)V

    .line 72
    new-instance v1, Lcom/samsung/android/app/music/list/ListPlayableImpl;

    invoke-direct {v1, v2}, Lcom/samsung/android/app/music/list/ListPlayableImpl;-><init>(Landroid/support/v4/app/Fragment;)V

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/Playable;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/Playable;)V

    .line 73
    new-instance v1, Lcom/samsung/android/app/music/list/ListShareableImpl;

    const/4 v9, 0x2

    invoke-direct {v1, v2, p2, v9, v0}, Lcom/samsung/android/app/music/list/ListShareableImpl;-><init>(Landroid/support/v4/app/Fragment;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/Shareable;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/Shareable;)V

    .line 74
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/Favoriteable;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/Favoriteable;)V

    .line 76
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;

    new-instance v4, Lcom/samsung/android/app/musiclibrary/ui/list/Divider;

    const v5, 0x7f020220

    invoke-direct {v4, v5, v0, v9, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/Divider;-><init>(ILcom/samsung/android/app/musiclibrary/ui/list/DividerChecker;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Lcom/samsung/android/app/musiclibrary/ui/list/Divider;)V

    check-cast v2, Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 78
    new-instance v1, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;

    invoke-direct {v1, v3}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V

    .line 79
    invoke-virtual {v1, p2}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->a(I)Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;

    .line 80
    invoke-virtual {v1, p1}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->a(I)Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;

    .line 82
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter;

    const/4 v4, -0x5

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->i()Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->a()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v2, v4, v1}, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter;->addHeaderView(ILandroid/view/View;)V

    .line 84
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/DefaultEmptyViewCreator;

    const v4, 0x7f0b02c4

    const v2, 0x7f0b02b9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/DefaultEmptyViewCreator;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;ILjava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;)V

    .line 86
    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment;->a(ZI)V

    .line 87
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment;->g()I

    move-result p1

    invoke-static {p0, p1, v0, v9, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;ILandroid/os/Bundle;ILjava/lang/Object;)V

    return-void

    .line 74
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.samsung.android.app.musiclibrary.ui.Favoriteable"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected u()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 3

    .line 109
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v2, "activity!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "activity!!.applicationContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;-><init>(Landroid/content/Context;)V

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutManager;

    return-object v0
.end method
