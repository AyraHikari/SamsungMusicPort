.class public final Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AllTrackFragment;
.super Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AllTrackFragment$Companion;
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

.field public static final c:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AllTrackFragment$Companion;


# instance fields
.field private final d:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AllTrackFragment;

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

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AllTrackFragment;->b:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AllTrackFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AllTrackFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AllTrackFragment;->c:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AllTrackFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment;-><init>()V

    .line 23
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AllTrackFragment$isSoundPicker$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AllTrackFragment$isSoundPicker$2;-><init>(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AllTrackFragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AllTrackFragment;->d:Lkotlin/Lazy;

    return-void
.end method

.method private final f()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AllTrackFragment;->d:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AllTrackFragment;->b:[Lkotlin/reflect/KProperty;

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

    .line 22
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AllTrackFragment;->d()Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/PickerAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    return-object v0
.end method

.method protected b(I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 1

    .line 83
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AllTrackFragment;->f()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/soundpicker/SoundPickerAllTrackQueryArgs;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/soundpicker/SoundPickerAllTrackQueryArgs;-><init>(Z)V

    :goto_0
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    goto :goto_1

    :cond_0
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/AllTrackQueryArgs;

    invoke-direct {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/query/AllTrackQueryArgs;-><init>()V

    goto :goto_0

    :goto_1
    return-object p1
.end method

.method protected d()Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/PickerAdapter;
    .locals 4

    .line 62
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/PickerAdapter$Builder;

    move-object v1, p0

    check-cast v1, Landroid/support/v4/app/Fragment;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/PickerAdapter$Builder;-><init>(Landroid/support/v4/app/Fragment;)V

    const-string v1, "title"

    .line 63
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/PickerAdapter$Builder;->setText1Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    const-string v1, "artist"

    .line 64
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/PickerAdapter$Builder;->setText2Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    const/4 v1, 0x1

    .line 65
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/PickerAdapter$Builder;->setPrivateIconEnabled(Z)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    .line 66
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AllTrackFragment;->f()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/PickerAdapter$Builder;->setWinsetUiEnabled(Z)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    .line 67
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AllTrackFragment;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "album_id"

    .line 70
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$AlbumArt;->a:Landroid/net/Uri;

    const-string v3, "MediaContents.AlbumArt.MEDIA_PROVIDER_CONTENT_URI"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/PickerAdapter$Builder;->setThumbnailKey(Ljava/lang/String;Landroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "album_id"

    .line 73
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/PickerAdapter$Builder;->setThumbnailKey(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    .line 75
    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/PickerAdapter$Builder;->b()Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/PickerAdapter;

    move-result-object v0

    return-object v0
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

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 31
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment;->onAttach(Landroid/app/Activity;)V

    .line 32
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AllTrackFragment;->f()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "510"

    goto :goto_0

    :cond_0
    const-string p1, "225"

    :goto_0
    const/4 v0, 0x0

    .line 37
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AllTrackFragment;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 10

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 43
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AllTrackFragment;->f()Z

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 44
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable$BasicIndexViewable;

    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->e:Ljava/lang/String;

    const-string v3, "MediaContents.Tracks.DEFAULT_SORT_ORDER"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v2, p2, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable$BasicIndexViewable;-><init>(Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AllTrackFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable;)V

    .line 45
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    move-object v2, p0

    check-cast v2, Landroid/support/v4/app/Fragment;

    invoke-direct {p1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;-><init>(Landroid/support/v4/app/Fragment;)V

    .line 46
    sget v2, Lcom/samsung/android/app/musiclibrary/R$dimen;->mu_list_divider_inset_single_picker:I

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->b(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    .line 47
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->a()Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;

    move-result-object p1

    .line 48
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AllTrackFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v2

    move-object v3, p1

    check-cast v3, Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    const-string v2, "dividerItemDecoration"

    .line 49
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AllTrackFragment;->addFragmentLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V

    goto :goto_0

    .line 51
    :cond_0
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable$MusicIndexViewable;

    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->e:Ljava/lang/String;

    const-string v3, "MediaContents.Tracks.DEFAULT_SORT_ORDER"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v2, p2, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable$MusicIndexViewable;-><init>(Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AllTrackFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable;)V

    .line 52
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AllTrackFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p1

    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;

    move-object v3, p0

    check-cast v3, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-direct {v2, v3, v1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Lcom/samsung/android/app/musiclibrary/ui/list/Divider;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v2, Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 55
    :goto_0
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/DefaultEmptyViewCreator;

    move-object v4, p0

    check-cast v4, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    sget v5, Lcom/samsung/android/app/musiclibrary/R$string;->no_tracks:I

    sget v2, Lcom/samsung/android/app/musiclibrary/R$string;->no_item_guide:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v3, p1

    invoke-direct/range {v3 .. v9}, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/DefaultEmptyViewCreator;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;ILjava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AllTrackFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;)V

    .line 57
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AllTrackFragment;->c(Z)V

    .line 58
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AllTrackFragment;->g()I

    move-result p1

    invoke-static {p0, p1, v1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;ILandroid/os/Bundle;ILjava/lang/Object;)V

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 1

    .line 26
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment;->setUserVisibleHint(Z)V

    .line 27
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AllTrackFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AllTrackFragment;->a(Z)V

    :cond_0
    return-void
.end method

.method protected u()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 3

    .line 79
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AllTrackFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

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
