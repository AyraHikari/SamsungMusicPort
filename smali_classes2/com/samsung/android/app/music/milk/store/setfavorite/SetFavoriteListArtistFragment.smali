.class public final Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteListArtistFragment;
.super Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;


# instance fields
.field private final b:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteListArtistFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "_recyclerView"

    const-string v4, "get_recyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteListArtistFragment;->a:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;-><init>()V

    .line 28
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteListArtistFragment$_recyclerView$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteListArtistFragment$_recyclerView$2;-><init>(Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteListArtistFragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteListArtistFragment;->b:Lkotlin/Lazy;

    return-void
.end method

.method private final a()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteListArtistFragment;->b:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteListArtistFragment;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    return-object v0
.end method


# virtual methods
.method public getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;
    .locals 2

    .line 93
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteListArtistFragment;->a()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    const-string v1, "_recyclerView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflater"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f140035

    .line 74
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 75
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 76
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteListArtistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoFragmentKt;->a(Landroid/content/Context;Landroid/view/Menu;)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f04023a

    const/4 v0, 0x0

    .line 33
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 80
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const v1, 0x7f1305f4

    if-nez v0, :cond_1

    goto :goto_1

    .line 81
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 83
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteListArtistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    const-string v0, "3"

    const/4 v1, 0x0

    .line 82
    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchActivity;->a(Landroid/app/Activity;Ljava/lang/String;I)V

    const/4 p1, 0x1

    goto :goto_2

    .line 89
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    :goto_2
    return p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 10

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteListArtistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    if-eqz p2, :cond_1

    const-string v0, "activity ?: return"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 39
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteListArtistFragment;->setHasOptionsMenu(Z)V

    const v1, 0x7f13055c

    .line 41
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0b0443

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f13055d

    .line 42
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0b03cb

    .line 43
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f130136

    .line 45
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/design/widget/AppBarLayout;

    .line 46
    invoke-static {p2}, Landroid/arch/lifecycle/ViewModelProviders;->a(Landroid/support/v4/app/FragmentActivity;)Landroid/arch/lifecycle/ViewModelProvider;

    move-result-object v1

    const-class v2, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;

    invoke-virtual {v1, v2}, Landroid/arch/lifecycle/ViewModelProvider;->a(Ljava/lang/Class;)Landroid/arch/lifecycle/ViewModel;

    move-result-object v1

    const-string v2, "ViewModelProviders.of(ac\u2026iteViewModel::class.java)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;

    .line 47
    new-instance v2, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter;

    const/4 v4, 0x2

    const v6, 0x7f04023c

    const v7, 0x7f0d0009

    .line 52
    new-instance v8, Lcom/samsung/android/app/music/milk/store/setfavorite/Footer;

    const v3, 0x7f04023b

    const v5, 0x7f0b03c7

    invoke-virtual {p0, v5}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteListArtistFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v9, "getString(R.string.tab_search_artist)"

    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v8, v3, v5}, Lcom/samsung/android/app/music/milk/store/setfavorite/Footer;-><init>(ILjava/lang/String;)V

    const/4 v9, 0x1

    move-object v3, v2

    move-object v5, v1

    .line 47
    invoke-direct/range {v3 .. v9}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter;-><init>(ILcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;IILcom/samsung/android/app/music/milk/store/setfavorite/Footer;Z)V

    .line 55
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteListArtistFragment;->a()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v3

    const-string v4, "_recyclerView"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v2

    check-cast v4, Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 56
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteListArtistFragment;->a()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v3

    const-string v4, "_recyclerView"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Landroid/support/v7/widget/GridLayoutManager;

    check-cast p2, Landroid/content/Context;

    invoke-direct {v4, p2, v0}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    check-cast v4, Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 57
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteListArtistFragment;->a()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p2

    sget-object v0, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecorationFactory;->a:Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecorationFactory$Companion;

    move-object v3, p0

    check-cast v3, Landroid/support/v4/app/Fragment;

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v3}, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecorationFactory$Companion;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 58
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteListArtistFragment;->a()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p2

    const-string v0, "_recyclerView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object p2

    if-eqz p2, :cond_0

    check-cast p2, Landroid/support/v7/widget/SimpleItemAnimator;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 60
    invoke-virtual {v1, v4}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;->a(I)Landroid/arch/lifecycle/LiveData;

    move-result-object p2

    move-object v0, p0

    check-cast v0, Landroid/arch/lifecycle/LifecycleOwner;

    new-instance v3, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteListArtistFragment$onViewCreated$1;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteListArtistFragment$onViewCreated$1;-><init>(Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter;)V

    check-cast v3, Landroid/arch/lifecycle/Observer;

    invoke-virtual {p2, v0, v3}, Landroid/arch/lifecycle/LiveData;->a(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 63
    invoke-virtual {v1, v4}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;->b(I)Landroid/arch/lifecycle/LiveData;

    move-result-object p2

    new-instance v1, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteListArtistFragment$onViewCreated$2;

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteListArtistFragment$onViewCreated$2;-><init>(Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteListArtistFragment;Landroid/support/design/widget/AppBarLayout;Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter;)V

    check-cast v1, Landroid/arch/lifecycle/Observer;

    invoke-virtual {p2, v0, v1}, Landroid/arch/lifecycle/LiveData;->a(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    return-void

    .line 58
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.support.v7.widget.SimpleItemAnimator"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method
