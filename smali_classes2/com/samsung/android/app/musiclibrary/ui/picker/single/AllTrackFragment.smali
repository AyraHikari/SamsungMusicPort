.class public final Lcom/samsung/android/app/musiclibrary/ui/picker/single/AllTrackFragment;
.super Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/picker/single/AllTrackFragment$Companion;
    }
.end annotation


# static fields
.field public static final b:Lcom/samsung/android/app/musiclibrary/ui/picker/single/AllTrackFragment$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AllTrackFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AllTrackFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AllTrackFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/picker/single/AllTrackFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic A()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AllTrackFragment;->m()Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    return-object v0
.end method

.method protected b(I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 1

    .line 64
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/soundpicker/SoundPickerAllTrackQueryArgs;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/soundpicker/SoundPickerAllTrackQueryArgs;-><init>(Z)V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    return-object p1
.end method

.method public g()I
    .locals 1

    const v0, 0x110001

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected m()Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;
    .locals 4

    .line 43
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$Builder;

    move-object v1, p0

    check-cast v1, Landroid/support/v4/app/Fragment;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$Builder;-><init>(Landroid/support/v4/app/Fragment;)V

    const-string v1, "_id"

    .line 44
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$Builder;->d(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;

    const-string v1, "title"

    .line 45
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$Builder;->setText1Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    const-string v1, "artist"

    .line 46
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$Builder;->setText2Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    const-string v1, "album_id"

    .line 49
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$AlbumArt;->a:Landroid/net/Uri;

    const-string v3, "MediaContents.AlbumArt.MEDIA_PROVIDER_CONTENT_URI"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$Builder;->setThumbnailKey(Ljava/lang/String;Landroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    const/4 v1, 0x1

    .line 51
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$Builder;->setWinsetUiEnabled(Z)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    .line 52
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$Builder;->b(Z)Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;

    .line 53
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$Builder;->setPrivateIconEnabled(Z)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    .line 54
    sget v2, Lcom/samsung/android/app/musiclibrary/R$layout;->mu_list_item_single_choice:I

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$Builder;->a(I)Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$AbsBuilder;

    .line 55
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$Builder;->a(Z)Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$AbsBuilder;

    .line 56
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$Builder;->d()Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;

    move-result-object v0

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 21
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->onAttach(Landroid/app/Activity;)V

    const-string p1, "501"

    const/4 v0, 0x0

    .line 22
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AllTrackFragment;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 10

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 28
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable$BasicIndexViewable;

    sget-object p2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->e:Ljava/lang/String;

    const-string v0, "MediaContents.Tracks.DEFAULT_SORT_ORDER"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p1, p2, v1, v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable$BasicIndexViewable;-><init>(Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AllTrackFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable;)V

    .line 29
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    move-object p2, p0

    check-cast p2, Landroid/support/v4/app/Fragment;

    invoke-direct {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;-><init>(Landroid/support/v4/app/Fragment;)V

    .line 30
    sget p2, Lcom/samsung/android/app/musiclibrary/R$dimen;->mu_list_divider_inset_single_picker:I

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->b(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    .line 31
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->a()Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;

    move-result-object p1

    .line 32
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AllTrackFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p2

    move-object v3, p1

    check-cast v3, Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    invoke-virtual {p2, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    const-string p2, "dividerItemDecoration"

    .line 33
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AllTrackFragment;->addFragmentLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V

    .line 35
    sget p1, Lcom/samsung/android/app/musiclibrary/R$dimen;->mu_list_spacing_top:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AllTrackFragment;->h(I)Landroid/view/View;

    .line 36
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/DefaultEmptyViewCreator;

    move-object v4, p0

    check-cast v4, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    sget v5, Lcom/samsung/android/app/musiclibrary/R$string;->no_tracks:I

    sget p2, Lcom/samsung/android/app/musiclibrary/R$string;->no_item_guide:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v3, p1

    invoke-direct/range {v3 .. v9}, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/DefaultEmptyViewCreator;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;ILjava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AllTrackFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;)V

    .line 38
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AllTrackFragment;->c(Z)V

    .line 39
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AllTrackFragment;->g()I

    move-result p1

    invoke-static {p0, p1, v2, v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;ILandroid/os/Bundle;ILjava/lang/Object;)V

    return-void
.end method

.method protected u()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 3

    .line 60
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AllTrackFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

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
