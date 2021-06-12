.class public final Lcom/samsung/android/app/music/list/local/GenreDetailFragment;
.super Lcom/samsung/android/app/music/list/local/PlayableUiFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/local/GenreDetailFragment$ActionModeOptionsMenu;,
        Lcom/samsung/android/app/music/list/local/GenreDetailFragment$GenreDetailFilterableImpl;,
        Lcom/samsung/android/app/music/list/local/GenreDetailFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/list/local/PlayableUiFragment<",
        "Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/list/local/GenreDetailFragment$Companion;


# instance fields
.field private b:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

.field private final c:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/list/local/GenreDetailFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/list/local/GenreDetailFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/list/local/GenreDetailFragment;->a:Lcom/samsung/android/app/music/list/local/GenreDetailFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;-><init>()V

    .line 59
    new-instance v0, Lcom/samsung/android/app/music/list/local/GenreDetailFragment$onItemClickListener$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/GenreDetailFragment$onItemClickListener$1;-><init>(Lcom/samsung/android/app/music/list/local/GenreDetailFragment;)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/GenreDetailFragment;->c:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    return-void
.end method


# virtual methods
.method public synthetic A()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .line 55
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/GenreDetailFragment;->c()Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter;

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

    .line 115
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    .line 117
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/GenreDetailFragment;->a(Landroid/database/Cursor;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    return-void
.end method

.method protected b(I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 2

    .line 146
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/GenreTrackQueryArgs;

    .line 147
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/GenreDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v1, "key_genre_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 148
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/GenreDetailFragment;->b:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    if-nez v1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->b()I

    move-result v1

    .line 146
    invoke-direct {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/query/GenreTrackQueryArgs;-><init>(Ljava/lang/String;I)V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    return-object p1
.end method

.method protected c()Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter;
    .locals 4

    .line 129
    new-instance v0, Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter$Builder;

    move-object v1, p0

    check-cast v1, Landroid/support/v4/app/Fragment;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter$Builder;-><init>(Landroid/support/v4/app/Fragment;)V

    const-string v1, "title"

    .line 130
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter$Builder;->setText1Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    const-string v1, "artist"

    .line 131
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter$Builder;->setText2Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    const-string v1, "album_id"

    .line 132
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter$Builder;->setThumbnailKey(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    const-string v1, "_id"

    .line 133
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter$Builder;->d(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;

    const/4 v1, 0x1

    .line 134
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter$Builder;->setPrivateIconEnabled(Z)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    .line 135
    sget-boolean v1, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    .line 136
    invoke-static {v1}, Lcom/samsung/android/app/music/provider/DrmType;->a(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "DrmType.getDisplayName(DrmType.MILK)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter$Builder;->b(ILjava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;

    .line 138
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter$Builder;->b()Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter;

    move-result-object v0

    return-object v0
.end method

.method public g()I
    .locals 1

    const v0, 0x100006

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 2

    .line 125
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/GenreDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v1, "key_genre_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 64
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onAttach(Landroid/app/Activity;)V

    const-string p1, "215"

    const-string v0, "216"

    .line 65
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/music/list/local/GenreDetailFragment;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 7

    .line 158
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

    iput-object v6, p0, Lcom/samsung/android/app/music/list/local/GenreDetailFragment;->contextMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    if-nez p1, :cond_0

    .line 159
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/GenreDetailFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/GenreDetailFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter;->getText1(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 160
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflater"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
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

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/GenreDetailFragment;->musicMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 154
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f040183

    const/4 v0, 0x0

    .line 73
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "inflater.inflate(R.layou\u2026oolbar, container, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 55
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/GenreDetailFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 19

    move-object/from16 v0, p0

    const-string v1, "view"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-super/range {p0 .. p2}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 79
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->b(Landroid/support/v4/app/Fragment;)Lcom/samsung/android/app/musiclibrary/ui/AppBar;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 80
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->c(Landroid/support/v4/app/Fragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->a(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->a(Z)V

    :cond_0
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 84
    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;IILjava/lang/Object;)V

    .line 86
    iget-object v4, v0, Lcom/samsung/android/app/music/list/local/GenreDetailFragment;->c:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    invoke-virtual {v0, v4}, Lcom/samsung/android/app/music/list/local/GenreDetailFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;)V

    .line 88
    new-instance v4, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/list/local/GenreDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    if-nez v5, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    const-string v6, "activity!!"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroid/app/Activity;

    const v6, 0x7f0b0350

    invoke-direct {v4, v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;-><init>(Landroid/app/Activity;I)V

    check-cast v4, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

    invoke-virtual {v0, v4}, Lcom/samsung/android/app/music/list/local/GenreDetailFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;)V

    .line 89
    sget v4, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->e:I

    invoke-virtual {v0, v4}, Lcom/samsung/android/app/music/list/local/GenreDetailFragment;->b_(I)V

    .line 90
    new-instance v4, Lcom/samsung/android/app/music/list/local/GenreDetailFragment$ActionModeOptionsMenu;

    invoke-direct {v4, v0}, Lcom/samsung/android/app/music/list/local/GenreDetailFragment$ActionModeOptionsMenu;-><init>(Lcom/samsung/android/app/music/list/local/GenreDetailFragment;)V

    check-cast v4, Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenu;

    invoke-virtual {v0, v4}, Lcom/samsung/android/app/music/list/local/GenreDetailFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenu;)V

    .line 91
    new-instance v4, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;

    move-object v6, v0

    check-cast v6, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-direct {v4, v6}, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V

    check-cast v4, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListAnalytics;

    invoke-virtual {v0, v4}, Lcom/samsung/android/app/music/list/local/GenreDetailFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListAnalytics;)V

    .line 93
    new-instance v4, Lcom/samsung/android/app/music/list/ListDeleteableImpl;

    move-object v5, v0

    check-cast v5, Landroid/support/v4/app/Fragment;

    const v9, 0x7f0d0028

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xc

    const/4 v13, 0x0

    move-object v7, v4

    move-object v8, v5

    invoke-direct/range {v7 .. v13}, Lcom/samsung/android/app/music/list/ListDeleteableImpl;-><init>(Landroid/support/v4/app/Fragment;IIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v4, Lcom/samsung/android/app/musiclibrary/ui/Deleteable;

    invoke-virtual {v0, v4}, Lcom/samsung/android/app/music/list/local/GenreDetailFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/Deleteable;)V

    .line 94
    new-instance v4, Lcom/samsung/android/app/music/list/ListPlayableImpl;

    invoke-direct {v4, v5}, Lcom/samsung/android/app/music/list/ListPlayableImpl;-><init>(Landroid/support/v4/app/Fragment;)V

    check-cast v4, Lcom/samsung/android/app/musiclibrary/ui/list/Playable;

    invoke-virtual {v0, v4}, Lcom/samsung/android/app/music/list/local/GenreDetailFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/Playable;)V

    .line 95
    new-instance v4, Lcom/samsung/android/app/music/list/ListShareableImpl;

    const/4 v12, 0x2

    invoke-direct {v4, v5, v1, v12, v3}, Lcom/samsung/android/app/music/list/ListShareableImpl;-><init>(Landroid/support/v4/app/Fragment;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v4, Lcom/samsung/android/app/musiclibrary/ui/list/Shareable;

    invoke-virtual {v0, v4}, Lcom/samsung/android/app/music/list/local/GenreDetailFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/Shareable;)V

    .line 96
    new-instance v4, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable$MusicIndexViewable;

    sget-object v7, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->e:Ljava/lang/String;

    const-string v8, "MediaContents.Tracks.DEFAULT_SORT_ORDER"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v4, v7, v1, v12, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable$MusicIndexViewable;-><init>(Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v4, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable;

    invoke-virtual {v0, v4}, Lcom/samsung/android/app/music/list/local/GenreDetailFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable;)V

    .line 97
    new-instance v4, Lcom/samsung/android/app/music/list/ListFavoriteableImpl;

    new-instance v7, Lcom/samsung/android/app/music/list/favorite/LocalCategory;

    const v14, 0x10006

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/list/local/GenreDetailFragment;->h()Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    const/16 v16, 0x0

    const/16 v17, 0x4

    const/16 v18, 0x0

    move-object v13, v7

    invoke-direct/range {v13 .. v18}, Lcom/samsung/android/app/music/list/favorite/LocalCategory;-><init>(ILjava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v7, Lcom/samsung/android/app/music/list/favorite/Category;

    invoke-direct {v4, v5, v7}, Lcom/samsung/android/app/music/list/ListFavoriteableImpl;-><init>(Landroid/support/v4/app/Fragment;Lcom/samsung/android/app/music/list/favorite/Category;)V

    check-cast v4, Lcom/samsung/android/app/musiclibrary/ui/Favoriteable;

    invoke-virtual {v0, v4}, Lcom/samsung/android/app/music/list/local/GenreDetailFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/Favoriteable;)V

    .line 99
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/list/local/GenreDetailFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;

    new-instance v7, Lcom/samsung/android/app/musiclibrary/ui/list/Divider;

    const v8, 0x7f020220

    invoke-direct {v7, v8, v3, v12, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/Divider;-><init>(ILcom/samsung/android/app/musiclibrary/ui/list/DividerChecker;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v5, v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Lcom/samsung/android/app/musiclibrary/ui/list/Divider;)V

    check-cast v5, Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 101
    new-instance v4, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;

    invoke-direct {v4, v6}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V

    .line 102
    new-instance v5, Lcom/samsung/android/app/music/list/local/GenreDetailFragment$GenreDetailFilterableImpl;

    invoke-direct {v5}, Lcom/samsung/android/app/music/list/local/GenreDetailFragment$GenreDetailFilterableImpl;-><init>()V

    check-cast v5, Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->a(Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;)Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;

    .line 103
    invoke-virtual {v4, v1}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->a(I)Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;

    .line 104
    invoke-virtual {v4, v2}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->a(I)Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;

    .line 105
    invoke-virtual {v4}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->i()Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    move-result-object v4

    iput-object v4, v0, Lcom/samsung/android/app/music/list/local/GenreDetailFragment;->b:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    .line 106
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/list/local/GenreDetailFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter;

    const/4 v5, -0x5

    iget-object v7, v0, Lcom/samsung/android/app/music/list/local/GenreDetailFragment;->b:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    if-nez v7, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_3
    invoke-virtual {v7}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->a()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter;->addHeaderView(ILandroid/view/View;)V

    .line 108
    new-instance v4, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/DefaultEmptyViewCreator;

    const v7, 0x7f0b02c4

    const v5, 0x7f0b02b9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    const/16 v10, 0x8

    const/4 v11, 0x0

    move-object v5, v4

    invoke-direct/range {v5 .. v11}, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/DefaultEmptyViewCreator;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;ILjava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v4, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;

    invoke-virtual {v0, v4}, Lcom/samsung/android/app/music/list/local/GenreDetailFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;)V

    .line 110
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/list/local/GenreDetailFragment;->a(ZI)V

    .line 111
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/list/local/GenreDetailFragment;->g()I

    move-result v1

    invoke-static {v0, v1, v3, v12, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;ILandroid/os/Bundle;ILjava/lang/Object;)V

    return-void
.end method

.method protected u()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 2

    .line 142
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;

    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->a(Landroid/support/v4/app/Fragment;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;-><init>(Landroid/content/Context;)V

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutManager;

    return-object v0
.end method
