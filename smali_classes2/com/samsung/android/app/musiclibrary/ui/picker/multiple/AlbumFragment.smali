.class public final Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;
.super Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment<",
        "Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic b:[Lkotlin/reflect/KProperty;

.field public static final c:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment$Companion;


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

    const-class v2, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;

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

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;->b:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;->c:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment;-><init>()V

    .line 27
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment$isSoundPicker$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment$isSoundPicker$2;-><init>(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;->d:Lkotlin/Lazy;

    .line 32
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment$onItemClickListener$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment$onItemClickListener$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;->i:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;)Landroid/support/v4/app/Fragment;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;->e:Landroid/support/v4/app/Fragment;

    return-object p0
.end method

.method public static final synthetic a(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;Landroid/support/v4/app/Fragment;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;->e:Landroid/support/v4/app/Fragment;

    return-void
.end method

.method public static final synthetic b(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;)Z
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;->f()Z

    move-result p0

    return p0
.end method

.method public static final synthetic c(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;->f:Z

    return p0
.end method

.method private final f()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;->d:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;->b:[Lkotlin/reflect/KProperty;

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
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;->d()Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    return-object v0
.end method

.method protected b(I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 1

    .line 126
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;->f()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/soundpicker/SoundPickerAlbumQueryArgs;

    invoke-direct {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/query/soundpicker/SoundPickerAlbumQueryArgs;-><init>()V

    :goto_0
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    goto :goto_1

    :cond_0
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/AlbumQueryArgs;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/AlbumQueryArgs;-><init>(Z)V

    goto :goto_0

    :goto_1
    return-object p1
.end method

.method protected d()Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter;
    .locals 4

    .line 104
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter$Builder;

    move-object v1, p0

    check-cast v1, Landroid/support/v4/app/Fragment;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter$Builder;-><init>(Landroid/support/v4/app/Fragment;)V

    const-string v1, "album"

    .line 105
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter$Builder;->setText1Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    const-string v1, "artist"

    .line 106
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter$Builder;->setText2Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    .line 107
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;->h()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter$Builder;->setKeywordCol(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    .line 108
    sget v1, Lcom/samsung/android/app/musiclibrary/R$layout;->mu_list_item:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter$Builder;->a(I)Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter$AbsBuilder;

    .line 109
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;->f()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter$Builder;->setWinsetUiEnabled(Z)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    .line 110
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "_id"

    .line 113
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$AlbumArt;->a:Landroid/net/Uri;

    const-string v3, "MediaContents.AlbumArt.MEDIA_PROVIDER_CONTENT_URI"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter$Builder;->setThumbnailKey(Ljava/lang/String;Landroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    goto :goto_0

    :cond_1
    const-string v1, "_id"

    .line 116
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter$Builder;->setThumbnailKey(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    .line 118
    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter$Builder;->b()Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter;

    move-result-object v0

    const-string v1, "AlbumAdapter.Builder(thi\u2026      }\n        }.build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public g()I
    .locals 1

    const v0, 0x10002

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    const-string v0, "_id"

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 68
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment;->onAttach(Landroid/app/Activity;)V

    .line 69
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;->f()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "511"

    goto :goto_0

    :cond_0
    const-string p1, "226"

    :goto_0
    const/4 v0, 0x0

    .line 74
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 10

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 80
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string p2, "parentFragment!!"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getUserVisibleHint()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;->setUserVisibleHint(Z)V

    .line 82
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;->i:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;)V

    .line 83
    sget p1, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->b:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;->b_(I)V

    .line 85
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;->f()Z

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 86
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable$BasicIndexViewable;

    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Albums;->c:Ljava/lang/String;

    const-string v3, "MediaContents.Albums.DEFAULT_SORT_ORDER"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v2, p2, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable$BasicIndexViewable;-><init>(Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable;)V

    .line 87
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    move-object v2, p0

    check-cast v2, Landroid/support/v4/app/Fragment;

    invoke-direct {p1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;-><init>(Landroid/support/v4/app/Fragment;)V

    .line 88
    sget v2, Lcom/samsung/android/app/musiclibrary/R$dimen;->mu_list_divider_inset_album:I

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->b(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    .line 89
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->a()Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;

    move-result-object p1

    .line 90
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v2

    move-object v3, p1

    check-cast v3, Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    const-string v2, "dividerItemDecoration"

    .line 91
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;->addFragmentLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V

    goto :goto_0

    .line 93
    :cond_1
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable$MusicIndexViewable;

    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Albums;->c:Ljava/lang/String;

    const-string v3, "MediaContents.Albums.DEFAULT_SORT_ORDER"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v2, p2, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable$MusicIndexViewable;-><init>(Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable;)V

    .line 94
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p1

    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;

    move-object v3, p0

    check-cast v3, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-direct {v2, v3, v1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Lcom/samsung/android/app/musiclibrary/ui/list/Divider;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v2, Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 97
    :goto_0
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/DefaultEmptyViewCreator;

    move-object v4, p0

    check-cast v4, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    sget v5, Lcom/samsung/android/app/musiclibrary/R$string;->no_albums:I

    sget v2, Lcom/samsung/android/app/musiclibrary/R$string;->no_item_guide:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v3, p1

    invoke-direct/range {v3 .. v9}, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/DefaultEmptyViewCreator;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;ILjava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;)V

    .line 99
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;->c(Z)V

    .line 100
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;->g()I

    move-result p1

    invoke-static {p0, p1, v1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;ILandroid/os/Bundle;ILjava/lang/Object;)V

    return-void
.end method

.method public setMenuVisibility(Z)V
    .locals 2

    .line 60
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment;->setMenuVisibility(Z)V

    .line 61
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;->f:Z

    .line 62
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "AlbumDetailFragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 63
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->setMenuVisibility(Z)V

    :cond_1
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 2

    .line 48
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment;->setUserVisibleHint(Z)V

    .line 49
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 50
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v1, "parentFragment!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "parentFragment!!.childFragmentManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "AlbumDetailFragment"

    .line 51
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "AlbumDetailFragment"

    .line 52
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    const-string v1, "fm.findFragmentByTag(TAG)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    :cond_1
    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 55
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;->a(Z)V

    :cond_2
    return-void
.end method

.method protected u()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 3

    .line 122
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

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
