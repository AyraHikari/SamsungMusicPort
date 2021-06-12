.class public final Lcom/samsung/android/app/musiclibrary/ui/picker/single/FolderDetailFragment;
.super Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/picker/single/FolderDetailFragment$Companion;
    }
.end annotation


# static fields
.field public static final b:Lcom/samsung/android/app/musiclibrary/ui/picker/single/FolderDetailFragment$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/FolderDetailFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/FolderDetailFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/FolderDetailFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/picker/single/FolderDetailFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic A()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/FolderDetailFragment;->m()Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    return-object v0
.end method

.method protected b(I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 2

    .line 73
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/soundpicker/SoundPickerFolderTrackQueryArgs;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/FolderDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v1, "key_bucket_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/query/soundpicker/SoundPickerFolderTrackQueryArgs;-><init>(Ljava/lang/String;Z)V

    .line 74
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/DefaultFeatures;->g:Z

    if-eqz v0, :cond_1

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Folders$Members;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " COLLATE LOCALIZED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/soundpicker/SoundPickerFolderTrackQueryArgs;->orderBy:Ljava/lang/String;

    .line 78
    :cond_1
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    return-object p1
.end method

.method public g()I
    .locals 1

    const v0, 0x100007

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected m()Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;
    .locals 4

    .line 52
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$Builder;

    move-object v1, p0

    check-cast v1, Landroid/support/v4/app/Fragment;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$Builder;-><init>(Landroid/support/v4/app/Fragment;)V

    const-string v1, "_display_name"

    .line 53
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$Builder;->setText1Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    const-string v1, "artist"

    .line 54
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$Builder;->setText2Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    const-string v1, "album_id"

    .line 57
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$AlbumArt;->a:Landroid/net/Uri;

    const-string v3, "MediaContents.AlbumArt.MEDIA_PROVIDER_CONTENT_URI"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$Builder;->setThumbnailKey(Ljava/lang/String;Landroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    const-string v1, "_id"

    .line 59
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$Builder;->d(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;

    const/4 v1, 0x1

    .line 60
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$Builder;->setWinsetUiEnabled(Z)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    .line 61
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$Builder;->setPrivateIconEnabled(Z)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    .line 62
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$Builder;->b(Z)Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;

    .line 63
    sget v2, Lcom/samsung/android/app/musiclibrary/R$layout;->mu_list_item_single_choice:I

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$Builder;->a(I)Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$AbsBuilder;

    .line 64
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$Builder;->a(Z)Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$AbsBuilder;

    .line 65
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$Builder;->d()Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;

    move-result-object v0

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 24
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->onAttach(Landroid/app/Activity;)V

    const-string p1, "507"

    const/4 v0, 0x0

    .line 25
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/FolderDetailFragment;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 32
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable$BasicIndexViewable;

    .line 33
    sget-object p2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Folders$Members;->a:Ljava/lang/String;

    const-string v0, "MediaContents.Folders.Members.DEFAULT_SORT_ORDER"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 32
    invoke-direct {p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable$BasicIndexViewable;-><init>(Ljava/lang/String;I)V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable;

    .line 31
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/FolderDetailFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable;)V

    .line 38
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    move-object p2, p0

    check-cast p2, Landroid/support/v4/app/Fragment;

    invoke-direct {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;-><init>(Landroid/support/v4/app/Fragment;)V

    .line 39
    sget p2, Lcom/samsung/android/app/musiclibrary/R$dimen;->mu_list_divider_inset_single_picker:I

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->b(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    .line 40
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->a()Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;

    move-result-object p1

    .line 41
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/FolderDetailFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p2

    move-object v0, p1

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    invoke-virtual {p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    const-string p2, "dividerItemDecoration"

    .line 42
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/FolderDetailFragment;->addFragmentLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V

    .line 44
    sget p1, Lcom/samsung/android/app/musiclibrary/R$dimen;->mu_list_spacing_top:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/FolderDetailFragment;->h(I)Landroid/view/View;

    .line 45
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/DefaultEmptyViewCreator;

    move-object v1, p0

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    sget v2, Lcom/samsung/android/app/musiclibrary/R$string;->no_tracks:I

    sget p2, Lcom/samsung/android/app/musiclibrary/R$string;->no_item_guide:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/DefaultEmptyViewCreator;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;ILjava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/FolderDetailFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;)V

    const/4 p1, 0x0

    .line 47
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/FolderDetailFragment;->c(Z)V

    .line 48
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/FolderDetailFragment;->g()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x2

    invoke-static {p0, p1, p2, v0, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;ILandroid/os/Bundle;ILjava/lang/Object;)V

    return-void
.end method

.method protected u()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 3

    .line 69
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/FolderDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

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
