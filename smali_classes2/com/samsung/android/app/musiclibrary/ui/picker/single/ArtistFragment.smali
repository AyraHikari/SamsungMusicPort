.class public final Lcom/samsung/android/app/musiclibrary/ui/picker/single/ArtistFragment;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<",
        "Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;-><init>()V

    .line 30
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/ArtistFragment$onItemClickListener$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/ArtistFragment$onItemClickListener$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/picker/single/ArtistFragment;)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/ArtistFragment;->a:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    return-void
.end method


# virtual methods
.method public synthetic A()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/ArtistFragment;->c()Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    return-object v0
.end method

.method protected b(I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 0

    .line 92
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/soundpicker/SoundPickerArtistQueryArgs;

    invoke-direct {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/query/soundpicker/SoundPickerArtistQueryArgs;-><init>()V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    return-object p1
.end method

.method protected c()Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter;
    .locals 4

    .line 74
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter$Builder;

    move-object v1, p0

    check-cast v1, Landroid/support/v4/app/Fragment;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter$Builder;-><init>(Landroid/support/v4/app/Fragment;)V

    const-string v1, "artist"

    .line 75
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter$Builder;->setText1Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    const-string v1, "number_of_albums"

    .line 76
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter$Builder;->setText2Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    const-string v1, "number_of_tracks"

    .line 77
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter$Builder;->setText3Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    const-string v1, "album_id"

    .line 80
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$AlbumArt;->a:Landroid/net/Uri;

    const-string v3, "MediaContents.AlbumArt.MEDIA_PROVIDER_CONTENT_URI"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter$Builder;->setThumbnailKey(Ljava/lang/String;Landroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    .line 82
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/ArtistFragment;->h()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter$Builder;->setKeywordCol(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    const/4 v1, 0x1

    .line 83
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter$Builder;->setWinsetUiEnabled(Z)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    .line 84
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter$Builder;->b()Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter;

    move-result-object v0

    const-string v1, "ArtistAdapter.Builder(th\u2026d(true)\n        }.build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public g()I
    .locals 1

    const v0, 0x10003

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    const-string v0, "_id"

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 49
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onAttach(Landroid/app/Activity;)V

    const-string p1, "504"

    const/4 v0, 0x0

    .line 50
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/ArtistFragment;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflater"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/ArtistFragment;->getUserVisibleHint()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 106
    :cond_0
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/menu/PickerMenuGroup;

    move-object v1, p0

    check-cast v1, Landroid/support/v4/app/Fragment;

    sget v2, Lcom/samsung/android/app/musiclibrary/R$menu;->single_item_picker:I

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/menu/PickerMenuGroup;-><init>(Landroid/support/v4/app/Fragment;I)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/ArtistFragment;->musicMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 107
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 10

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 56
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/ArtistFragment;->a:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/ArtistFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;)V

    .line 58
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable$BasicIndexViewable;

    sget-object p2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Artists;->c:Ljava/lang/String;

    const-string v0, "MediaContents.Artists.DEFAULT_SORT_ORDER"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p1, p2, v1, v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable$BasicIndexViewable;-><init>(Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/ArtistFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable;)V

    .line 60
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    move-object p2, p0

    check-cast p2, Landroid/support/v4/app/Fragment;

    invoke-direct {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;-><init>(Landroid/support/v4/app/Fragment;)V

    .line 61
    sget p2, Lcom/samsung/android/app/musiclibrary/R$dimen;->mu_list_divider_inset_album:I

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->b(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    .line 62
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->a()Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;

    move-result-object p1

    .line 63
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/ArtistFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p2

    move-object v3, p1

    check-cast v3, Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    invoke-virtual {p2, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    const-string p2, "dividerItemDecoration"

    .line 64
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/ArtistFragment;->addFragmentLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V

    .line 66
    sget p1, Lcom/samsung/android/app/musiclibrary/R$dimen;->mu_list_spacing_top:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/ArtistFragment;->h(I)Landroid/view/View;

    .line 67
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/DefaultEmptyViewCreator;

    move-object v4, p0

    check-cast v4, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    sget v5, Lcom/samsung/android/app/musiclibrary/R$string;->no_artists:I

    sget p2, Lcom/samsung/android/app/musiclibrary/R$string;->no_item_guide:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v3, p1

    invoke-direct/range {v3 .. v9}, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/DefaultEmptyViewCreator;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;ILjava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/ArtistFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;)V

    .line 69
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/ArtistFragment;->c(Z)V

    .line 70
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/ArtistFragment;->g()I

    move-result p1

    invoke-static {p0, p1, v2, v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;ILandroid/os/Bundle;ILjava/lang/Object;)V

    return-void
.end method

.method protected u()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 3

    .line 88
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/ArtistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

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
