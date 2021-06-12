.class public final Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment$ActionModeOptionsMenu;,
        Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment$ArtistAlbumDetailAdapter;,
        Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment$AlbumCheckableList;,
        Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment$ArtistAlbumDetailFilterableImpl;,
        Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<",
        "Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment$ArtistAlbumDetailAdapter;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment$Companion;


# instance fields
.field private b:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

.field private final c:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;->a:Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;-><init>()V

    .line 64
    new-instance v0, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment$onItemClickListener$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment$onItemClickListener$1;-><init>(Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;->c:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    return-void
.end method


# virtual methods
.method public synthetic A()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .line 60
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;->c()Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment$ArtistAlbumDetailAdapter;

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

    .line 110
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    .line 112
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;->a(Landroid/database/Cursor;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    return-void
.end method

.method protected b(I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 4

    .line 126
    new-instance p1, Lcom/samsung/android/app/music/list/local/query/ArtistAlbumDetailQueryArgs;

    .line 127
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;->h()Ljava/lang/String;

    move-result-object v0

    .line 128
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;->b:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->b()I

    move-result v1

    .line 129
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    const-string v3, "key_group_type"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 126
    invoke-direct {p1, v0, v1, v2}, Lcom/samsung/android/app/music/list/local/query/ArtistAlbumDetailQueryArgs;-><init>(Ljava/lang/String;II)V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    return-object p1
.end method

.method protected c()Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment$ArtistAlbumDetailAdapter;
    .locals 2

    .line 116
    new-instance v0, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment$ArtistAlbumDetailAdapter$Builder;

    move-object v1, p0

    check-cast v1, Landroid/support/v4/app/Fragment;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment$ArtistAlbumDetailAdapter$Builder;-><init>(Landroid/support/v4/app/Fragment;)V

    const-string v1, "album"

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment$ArtistAlbumDetailAdapter$Builder;->setText1Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment$ArtistAlbumDetailAdapter$Builder;

    const-string v1, "maxyear"

    .line 117
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment$ArtistAlbumDetailAdapter$Builder;->setText2Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment$ArtistAlbumDetailAdapter$Builder;

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment$ArtistAlbumDetailAdapter$Builder;->setKeywordCol(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment$ArtistAlbumDetailAdapter$Builder;

    const-string v1, "_id"

    .line 118
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment$ArtistAlbumDetailAdapter$Builder;->setThumbnailKey(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment$ArtistAlbumDetailAdapter$Builder;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment$ArtistAlbumDetailAdapter$Builder;->b()Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment$ArtistAlbumDetailAdapter;

    move-result-object v0

    return-object v0
.end method

.method public g()I
    .locals 1

    const v0, 0x10027

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 2

    .line 138
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;->getArguments()Landroid/os/Bundle;

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

    .line 72
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onAttach(Landroid/app/Activity;)V

    const-string p1, "210"

    const-string v0, "212"

    .line 73
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 7

    .line 147
    new-instance v6, Lcom/samsung/android/app/music/menu/ListMenuGroup;

    move-object v1, p0

    check-cast v1, Landroid/support/v4/app/Fragment;

    const v2, 0x7f140005

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/menu/ListMenuGroup;-><init>(Landroid/support/v4/app/Fragment;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v6, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    iput-object v6, p0, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;->contextMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    if-nez p1, :cond_0

    .line 148
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment$ArtistAlbumDetailAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment$ArtistAlbumDetailAdapter;->getText1(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 149
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflater"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
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

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;->musicMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 143
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 60
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 11

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 79
    invoke-static {p0, p2, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;IILjava/lang/Object;)V

    .line 81
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;->c:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;)V

    .line 84
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v3, "activity!!"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/app/Activity;

    const v3, 0x7f0b0344

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;-><init>(Landroid/app/Activity;I)V

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;)V

    .line 85
    sget v1, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->e:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;->b_(I)V

    .line 86
    new-instance v1, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment$ActionModeOptionsMenu;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment$ActionModeOptionsMenu;-><init>(Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;)V

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenu;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenu;)V

    .line 87
    new-instance v1, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;

    move-object v3, p0

    check-cast v3, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-direct {v1, v3}, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListAnalytics;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListAnalytics;)V

    .line 89
    new-instance v1, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment$AlbumCheckableList;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment$AlbumCheckableList;-><init>(Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;)V

    .line 90
    new-instance v1, Lcom/samsung/android/app/music/list/ListDeleteableImpl;

    move-object v2, p0

    check-cast v2, Landroid/support/v4/app/Fragment;

    const v6, 0x7f0d0011

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xc

    const/4 v10, 0x0

    move-object v4, v1

    move-object v5, v2

    invoke-direct/range {v4 .. v10}, Lcom/samsung/android/app/music/list/ListDeleteableImpl;-><init>(Landroid/support/v4/app/Fragment;IIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/Deleteable;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/Deleteable;)V

    .line 91
    new-instance v1, Lcom/samsung/android/app/music/list/ListPlayableImpl;

    invoke-direct {v1, v2}, Lcom/samsung/android/app/music/list/ListPlayableImpl;-><init>(Landroid/support/v4/app/Fragment;)V

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/Playable;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/Playable;)V

    .line 92
    new-instance v1, Lcom/samsung/android/app/music/list/ListShareableImpl;

    const/4 v9, 0x2

    invoke-direct {v1, v2, p2, v9, v0}, Lcom/samsung/android/app/music/list/ListShareableImpl;-><init>(Landroid/support/v4/app/Fragment;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/Shareable;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/Shareable;)V

    .line 93
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable$MusicIndexViewable;

    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Albums;->c:Ljava/lang/String;

    const-string v4, "MediaContents.Albums.DEFAULT_SORT_ORDER"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2, p2, v9, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable$MusicIndexViewable;-><init>(Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable;)V

    .line 94
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_2

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/Favoriteable;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/Favoriteable;)V

    .line 96
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;

    new-instance v4, Lcom/samsung/android/app/musiclibrary/ui/list/Divider;

    const v5, 0x7f020220

    invoke-direct {v4, v5, v0, v9, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/Divider;-><init>(ILcom/samsung/android/app/musiclibrary/ui/list/DividerChecker;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Lcom/samsung/android/app/musiclibrary/ui/list/Divider;)V

    check-cast v2, Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 98
    new-instance v1, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;

    invoke-direct {v1, v3}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V

    .line 99
    new-instance v2, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment$ArtistAlbumDetailFilterableImpl;

    invoke-direct {v2}, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment$ArtistAlbumDetailFilterableImpl;-><init>()V

    check-cast v2, Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->a(Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;)Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;

    .line 100
    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->i()Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;->b:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    .line 101
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment$ArtistAlbumDetailAdapter;

    const/4 v2, -0x5

    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;->b:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    if-nez v4, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    invoke-virtual {v4}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->a()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment$ArtistAlbumDetailAdapter;->addHeaderView(ILandroid/view/View;)V

    .line 103
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/DefaultEmptyViewCreator;

    const v4, 0x7f0b02ae

    const v2, 0x7f0b02b9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/DefaultEmptyViewCreator;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;ILjava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;)V

    .line 105
    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;->a(ZI)V

    .line 106
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;->g()I

    move-result p1

    invoke-static {p0, p1, v0, v9, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;ILandroid/os/Bundle;ILjava/lang/Object;)V

    return-void

    .line 94
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.samsung.android.app.musiclibrary.ui.Favoriteable"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setUserVisibleHint(Z)V
    .locals 2

    .line 153
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->setUserVisibleHint(Z)V

    .line 154
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;->b:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    if-eqz p1, :cond_4

    .line 155
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;->b:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->b()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 157
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    const-string v0, "activity!!"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "AADS"

    const-string v1, "Sort by release"

    .line 156
    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 163
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_3
    const-string v0, "activity!!"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "AADS"

    const-string v1, "Sort by name"

    .line 162
    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method protected u()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 3

    .line 122
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

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
