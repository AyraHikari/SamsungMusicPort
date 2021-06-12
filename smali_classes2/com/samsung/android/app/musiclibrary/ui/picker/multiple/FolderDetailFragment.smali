.class public final Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderDetailFragment;
.super Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderDetailFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment<",
        "Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/PickerAdapter;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic b:[Lkotlin/reflect/KProperty;

.field public static final c:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderDetailFragment$Companion;


# instance fields
.field private final d:Lkotlin/Lazy;

.field private final e:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderDetailFragment$onBackPressedListener$1;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderDetailFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "isSoundPicker"

    const-string v4, "isSoundPicker()Z"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderDetailFragment;->b:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderDetailFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderDetailFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderDetailFragment;->c:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderDetailFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment;-><init>()V

    .line 27
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderDetailFragment$isSoundPicker$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderDetailFragment$isSoundPicker$2;-><init>(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderDetailFragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderDetailFragment;->d:Lkotlin/Lazy;

    .line 29
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderDetailFragment$onBackPressedListener$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderDetailFragment$onBackPressedListener$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderDetailFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderDetailFragment;->e:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderDetailFragment$onBackPressedListener$1;

    return-void
.end method

.method private final f()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderDetailFragment;->d:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderDetailFragment;->b:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public synthetic A()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderDetailFragment;->d()Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/PickerAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    return-object v0
.end method

.method protected b(I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 2

    .line 117
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v0, "key_bucket_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 119
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderDetailFragment;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/soundpicker/SoundPickerFolderTrackQueryArgs;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/query/soundpicker/SoundPickerFolderTrackQueryArgs;-><init>(Ljava/lang/String;Z)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    goto :goto_0

    .line 122
    :cond_1
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/FolderTrackQueryArgs;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/query/FolderTrackQueryArgs;-><init>(Ljava/lang/String;)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    .line 124
    :goto_0
    sget-boolean p1, Lcom/samsung/android/app/musiclibrary/ui/feature/DefaultFeatures;->g:Z

    if-eqz p1, :cond_2

    .line 125
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Folders$Members;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " COLLATE LOCALIZED"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->orderBy:Ljava/lang/String;

    :cond_2
    return-object v0
.end method

.method protected d()Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/PickerAdapter;
    .locals 4

    .line 96
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/PickerAdapter$Builder;

    move-object v1, p0

    check-cast v1, Landroid/support/v4/app/Fragment;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/PickerAdapter$Builder;-><init>(Landroid/support/v4/app/Fragment;)V

    const-string v1, "_display_name"

    .line 97
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/PickerAdapter$Builder;->setText1Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    const-string v1, "artist"

    .line 98
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/PickerAdapter$Builder;->setText2Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    const/4 v1, 0x1

    .line 99
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/PickerAdapter$Builder;->setPrivateIconEnabled(Z)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    .line 100
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderDetailFragment;->f()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/PickerAdapter$Builder;->setWinsetUiEnabled(Z)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    .line 101
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderDetailFragment;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "album_id"

    .line 104
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$AlbumArt;->a:Landroid/net/Uri;

    const-string v3, "MediaContents.AlbumArt.MEDIA_PROVIDER_CONTENT_URI"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/PickerAdapter$Builder;->setThumbnailKey(Ljava/lang/String;Landroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "album_id"

    .line 107
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/PickerAdapter$Builder;->setThumbnailKey(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    .line 109
    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/PickerAdapter$Builder;->b()Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/PickerAdapter;

    move-result-object v0

    return-object v0
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

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 41
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment;->onAttach(Landroid/app/Activity;)V

    .line 42
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderDetailFragment;->f()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "516"

    goto :goto_0

    :cond_0
    const-string p1, "231"

    :goto_0
    const/4 v0, 0x0

    .line 47
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderDetailFragment;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 91
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/BackPressedObservable;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderDetailFragment;->e:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderDetailFragment$onBackPressedListener$1;

    check-cast v1, Lcom/samsung/android/app/musiclibrary/OnBackPressedListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/BackPressedObservable;->removeOnBackPressedListener(Lcom/samsung/android/app/musiclibrary/OnBackPressedListener;)V

    .line 92
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment;->onDestroyView()V

    return-void

    .line 91
    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.samsung.android.app.musiclibrary.BackPressedObservable"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onResume()V
    .locals 1

    .line 86
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment;->onResume()V

    const/4 v0, 0x1

    .line 87
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderDetailFragment;->a(Z)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 11

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, Lcom/samsung/android/app/musiclibrary/BackPressedObservable;

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderDetailFragment;->e:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderDetailFragment$onBackPressedListener$1;

    check-cast p2, Lcom/samsung/android/app/musiclibrary/OnBackPressedListener;

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, p2, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/BackPressedObservable$DefaultImpls;->a(Lcom/samsung/android/app/musiclibrary/BackPressedObservable;Lcom/samsung/android/app/musiclibrary/OnBackPressedListener;IILjava/lang/Object;)V

    .line 55
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderDetailFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string p2, "parentFragment!!"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getUserVisibleHint()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderDetailFragment;->setUserVisibleHint(Z)V

    .line 57
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderDetailFragment;->f()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    .line 59
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable$BasicIndexViewable;

    .line 60
    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Folders$Members;->a:Ljava/lang/String;

    const-string v4, "MediaContents.Folders.Members.DEFAULT_SORT_ORDER"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-direct {p1, v3, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable$BasicIndexViewable;-><init>(Ljava/lang/String;I)V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable;

    .line 58
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderDetailFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable;)V

    .line 64
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    move-object v3, p0

    check-cast v3, Landroid/support/v4/app/Fragment;

    invoke-direct {p1, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;-><init>(Landroid/support/v4/app/Fragment;)V

    .line 65
    sget v3, Lcom/samsung/android/app/musiclibrary/R$dimen;->mu_list_divider_inset_single_picker:I

    invoke-virtual {p1, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->b(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    .line 66
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->a()Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;

    move-result-object p1

    .line 67
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderDetailFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v3

    move-object v4, p1

    check-cast v4, Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    const-string v3, "dividerItemDecoration"

    .line 68
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderDetailFragment;->addFragmentLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V

    goto :goto_0

    .line 71
    :cond_1
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable$MusicIndexViewable;

    .line 72
    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Folders$Members;->a:Ljava/lang/String;

    const-string v4, "MediaContents.Folders.Members.DEFAULT_SORT_ORDER"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-direct {p1, v3, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable$MusicIndexViewable;-><init>(Ljava/lang/String;I)V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable;

    .line 70
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderDetailFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable;)V

    .line 76
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderDetailFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p1

    new-instance v3, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;

    move-object v4, p0

    check-cast v4, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-direct {v3, v4, v2, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Lcom/samsung/android/app/musiclibrary/ui/list/Divider;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v3, Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    invoke-virtual {p1, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 79
    :goto_0
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/DefaultEmptyViewCreator;

    move-object v5, p0

    check-cast v5, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    sget v6, Lcom/samsung/android/app/musiclibrary/R$string;->no_tracks:I

    sget v3, Lcom/samsung/android/app/musiclibrary/R$string;->no_item_guide:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    const/16 v9, 0x8

    const/4 v10, 0x0

    move-object v4, p1

    invoke-direct/range {v4 .. v10}, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/DefaultEmptyViewCreator;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;ILjava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderDetailFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;)V

    .line 81
    invoke-virtual {p0, v0, p2}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderDetailFragment;->a(ZI)V

    .line 82
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderDetailFragment;->g()I

    move-result p1

    invoke-static {p0, p1, v2, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;ILandroid/os/Bundle;ILjava/lang/Object;)V

    return-void

    .line 53
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.samsung.android.app.musiclibrary.BackPressedObservable"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected u()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 3

    .line 113
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

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
