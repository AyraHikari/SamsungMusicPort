.class public final Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment;
.super Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment<",
        "Lcom/samsung/android/app/musiclibrary/ui/list/adapter/FolderAdapter;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic b:[Lkotlin/reflect/KProperty;

.field public static final c:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment$Companion;


# instance fields
.field private final d:Lkotlin/Lazy;

.field private e:Landroid/support/v4/app/Fragment;

.field private f:Z

.field private final i:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment;

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

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment;->b:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment;->c:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment;-><init>()V

    .line 31
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment$isSoundPicker$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment$isSoundPicker$2;-><init>(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment;->d:Lkotlin/Lazy;

    .line 36
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment$onItemClickListener$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment$onItemClickListener$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment;)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment;->i:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment;)Landroid/support/v4/app/Fragment;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment;->e:Landroid/support/v4/app/Fragment;

    return-object p0
.end method

.method public static final synthetic a(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment;Landroid/support/v4/app/Fragment;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment;->e:Landroid/support/v4/app/Fragment;

    return-void
.end method

.method public static final synthetic b(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment;)Z
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment;->f()Z

    move-result p0

    return p0
.end method

.method public static final synthetic c(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment;->f:Z

    return p0
.end method

.method private final f()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment;->d:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment;->b:[Lkotlin/reflect/KProperty;

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

    .line 30
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment;->d()Lcom/samsung/android/app/musiclibrary/ui/list/adapter/FolderAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    return-object v0
.end method

.method protected b(I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 2

    .line 121
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v0, "activity!!"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 122
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/soundpicker/SoundPickerFolderQueryArgs;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/query/soundpicker/SoundPickerFolderQueryArgs;-><init>(Landroid/content/Context;Z)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    goto :goto_0

    .line 125
    :cond_1
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/FolderQueryArgs;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/query/FolderQueryArgs;-><init>(Landroid/content/Context;)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    .line 127
    :goto_0
    sget-boolean p1, Lcom/samsung/android/app/musiclibrary/ui/feature/DefaultFeatures;->g:Z

    if-eqz p1, :cond_2

    .line 128
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Folders;->d:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " COLLATE LOCALIZED"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->orderBy:Ljava/lang/String;

    :cond_2
    return-object v0
.end method

.method protected d()Lcom/samsung/android/app/musiclibrary/ui/list/adapter/FolderAdapter;
    .locals 4

    .line 100
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/FolderAdapter$Builder;

    move-object v1, p0

    check-cast v1, Landroid/support/v4/app/Fragment;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/FolderAdapter$Builder;-><init>(Landroid/support/v4/app/Fragment;)V

    const-string v1, "bucket_display_name"

    .line 101
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/FolderAdapter$Builder;->setText1Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    const-string v1, "_data"

    .line 102
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/FolderAdapter$Builder;->setText2Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/FolderAdapter$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment;->h()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/FolderAdapter$Builder;->setKeywordCol(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    const/4 v1, 0x1

    .line 103
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/FolderAdapter$Builder;->setPrivateIconEnabled(Z)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    .line 104
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment;->f()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/FolderAdapter$Builder;->setWinsetUiEnabled(Z)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    .line 105
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "album_id"

    .line 108
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$AlbumArt;->a:Landroid/net/Uri;

    const-string v3, "MediaContents.AlbumArt.MEDIA_PROVIDER_CONTENT_URI"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/FolderAdapter$Builder;->setThumbnailKey(Ljava/lang/String;Landroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    goto :goto_0

    :cond_1
    const-string v1, "album_id"

    .line 111
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/FolderAdapter$Builder;->setThumbnailKey(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    .line 113
    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/FolderAdapter$Builder;->b()Lcom/samsung/android/app/musiclibrary/ui/list/adapter/FolderAdapter;

    move-result-object v0

    return-object v0
.end method

.method public g()I
    .locals 1

    const v0, 0x10007

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    const-string v0, "bucket_id"

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 66
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment;->onAttach(Landroid/app/Activity;)V

    .line 67
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment;->f()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "515"

    goto :goto_0

    :cond_0
    const-string p1, "230"

    :goto_0
    const/4 v0, 0x0

    .line 72
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 9

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 78
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment;->i:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;)V

    .line 79
    sget p1, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->b:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment;->b_(I)V

    .line 81
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment;->f()Z

    move-result p1

    const/4 p2, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 82
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable$BasicIndexViewable;

    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Folders;->d:Ljava/lang/String;

    const-string v3, "DEFAULT_SORT_ORDER"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable$BasicIndexViewable;-><init>(Ljava/lang/String;I)V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable;)V

    .line 83
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    move-object v0, p0

    check-cast v0, Landroid/support/v4/app/Fragment;

    invoke-direct {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;-><init>(Landroid/support/v4/app/Fragment;)V

    .line 84
    sget v0, Lcom/samsung/android/app/musiclibrary/R$dimen;->mu_list_divider_inset_album:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->b(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    .line 85
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->a()Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;

    move-result-object p1

    .line 86
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    move-object v2, p1

    check-cast v2, Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    const-string v0, "dividerItemDecoration"

    .line 87
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment;->addFragmentLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V

    goto :goto_0

    .line 89
    :cond_0
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable$MusicIndexViewable;

    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Folders;->d:Ljava/lang/String;

    const-string v3, "DEFAULT_SORT_ORDER"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable$MusicIndexViewable;-><init>(Ljava/lang/String;I)V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable;)V

    .line 90
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;

    move-object v2, p0

    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-direct {v0, v2, v1, p2, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Lcom/samsung/android/app/musiclibrary/ui/list/Divider;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 93
    :goto_0
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/DefaultEmptyViewCreator;

    move-object v3, p0

    check-cast v3, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    sget v4, Lcom/samsung/android/app/musiclibrary/R$string;->no_folders:I

    sget v0, Lcom/samsung/android/app/musiclibrary/R$string;->no_item_guide:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/DefaultEmptyViewCreator;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;ILjava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;)V

    const/4 p1, 0x0

    .line 95
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment;->c(Z)V

    .line 96
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment;->g()I

    move-result p1

    invoke-static {p0, p1, v1, p2, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;ILandroid/os/Bundle;ILjava/lang/Object;)V

    return-void
.end method

.method public setMenuVisibility(Z)V
    .locals 2

    .line 59
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment;->setMenuVisibility(Z)V

    .line 60
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment;->f:Z

    .line 61
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "FolderDetailFragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 62
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->setMenuVisibility(Z)V

    :cond_1
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 2

    .line 50
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment;->setUserVisibleHint(Z)V

    .line 51
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 52
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v1, "parentFragment!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "FolderDetailFragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    :cond_1
    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 54
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment;->a(Z)V

    :cond_2
    return-void
.end method

.method protected u()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 3

    .line 117
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

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
