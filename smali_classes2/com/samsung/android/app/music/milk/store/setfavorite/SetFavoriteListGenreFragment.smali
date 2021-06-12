.class public final Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteListGenreFragment;
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

    const-class v2, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteListGenreFragment;

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

    sput-object v0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteListGenreFragment;->a:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 20
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;-><init>()V

    .line 22
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteListGenreFragment$_recyclerView$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteListGenreFragment$_recyclerView$2;-><init>(Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteListGenreFragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteListGenreFragment;->b:Lkotlin/Lazy;

    return-void
.end method

.method private final a()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteListGenreFragment;->b:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteListGenreFragment;->a:[Lkotlin/reflect/KProperty;

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

    .line 66
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteListGenreFragment;->a()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    const-string v1, "_recyclerView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f04023a

    const/4 v0, 0x0

    .line 27
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onResume()V
    .locals 3

    .line 57
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onResume()V

    .line 58
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteListGenreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteListGenreFragment;->getUserVisibleHint()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "it"

    .line 60
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    move-result-object v1

    .line 61
    check-cast v0, Landroid/app/Activity;

    const-string v2, "set_favorite1"

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 11

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 32
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteListGenreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    if-eqz p2, :cond_1

    const-string v0, "activity ?: return"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 33
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteListGenreFragment;->setHasOptionsMenu(Z)V

    const v1, 0x7f13055c

    .line 35
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0b0444

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f13055d

    .line 36
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v1, 0x7f0b03cb

    .line 37
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 39
    invoke-static {p2}, Landroid/arch/lifecycle/ViewModelProviders;->a(Landroid/support/v4/app/FragmentActivity;)Landroid/arch/lifecycle/ViewModelProvider;

    move-result-object p1

    const-class v1, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;

    invoke-virtual {p1, v1}, Landroid/arch/lifecycle/ViewModelProvider;->a(Ljava/lang/Class;)Landroid/arch/lifecycle/ViewModel;

    move-result-object p1

    const-string v1, "ViewModelProviders.of(ac\u2026iteViewModel::class.java)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;

    .line 40
    new-instance v1, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter;

    const/4 v3, 0x1

    const v5, 0x7f04023d

    const v6, 0x7f0d000a

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x30

    const/4 v10, 0x0

    move-object v2, v1

    move-object v4, p1

    invoke-direct/range {v2 .. v10}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter;-><init>(ILcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;IILcom/samsung/android/app/music/milk/store/setfavorite/Footer;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 46
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteListGenreFragment;->a()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v2

    const-string v3, "_recyclerView"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v1

    check-cast v3, Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 47
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteListGenreFragment;->a()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v2

    const-string v3, "_recyclerView"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Landroid/support/v7/widget/GridLayoutManager;

    check-cast p2, Landroid/content/Context;

    const/4 v4, 0x1

    invoke-direct {v3, p2, v4}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    check-cast v3, Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 48
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteListGenreFragment;->a()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p2

    sget-object v2, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecorationFactory;->a:Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecorationFactory$Companion;

    move-object v3, p0

    check-cast v3, Landroid/support/v4/app/Fragment;

    invoke-virtual {v2, v4, v3}, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecorationFactory$Companion;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 49
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteListGenreFragment;->a()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p2

    const-string v2, "_recyclerView"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object p2

    if-eqz p2, :cond_0

    check-cast p2, Landroid/support/v7/widget/SimpleItemAnimator;

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 51
    invoke-virtual {p1, v4}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;->a(I)Landroid/arch/lifecycle/LiveData;

    move-result-object p1

    move-object p2, p0

    check-cast p2, Landroid/arch/lifecycle/LifecycleOwner;

    new-instance v0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteListGenreFragment$onViewCreated$1;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteListGenreFragment$onViewCreated$1;-><init>(Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter;)V

    check-cast v0, Landroid/arch/lifecycle/Observer;

    invoke-virtual {p1, p2, v0}, Landroid/arch/lifecycle/LiveData;->a(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    return-void

    .line 49
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.support.v7.widget.SimpleItemAnimator"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method
