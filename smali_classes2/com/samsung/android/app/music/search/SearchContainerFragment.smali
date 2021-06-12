.class public final Lcom/samsung/android/app/music/search/SearchContainerFragment;
.super Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/GoToTopManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/search/SearchContainerFragment$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/search/SearchContainerFragment$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/search/SearchContainerFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/search/SearchContainerFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/search/SearchContainerFragment;->a:Lcom/samsung/android/app/music/search/SearchContainerFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;-><init>()V

    return-void
.end method

.method private final b()Landroid/support/v4/app/Fragment;
    .locals 2

    .line 26
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/SearchContainerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/SearchContainerFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f130011

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    const-string v0, "keyword"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/SearchContainerFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "SearchContainerFragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/samsung/android/app/music/search/SearchTabFragment;

    .line 71
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/search/SearchTabFragment;->b_(Ljava/lang/String;)V

    return-void

    .line 69
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.samsung.android.app.music.search.SearchTabFragment"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 34
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 35
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/search/SearchContainerFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f04008e

    const/4 v0, 0x0

    .line 42
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 47
    invoke-direct {p0}, Lcom/samsung/android/app/music/search/SearchContainerFragment;->b()Landroid/support/v4/app/Fragment;

    move-result-object p1

    const-string p2, "SearchContainerFragment"

    if-nez p1, :cond_0

    .line 50
    new-instance p1, Lcom/samsung/android/app/music/search/SearchTabFragment;

    invoke-direct {p1}, Lcom/samsung/android/app/music/search/SearchTabFragment;-><init>()V

    check-cast p1, Landroid/support/v4/app/Fragment;

    .line 52
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/SearchContainerFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f130011

    .line 53
    invoke-virtual {v0, v1, p1, p2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method public p_()V
    .locals 4

    .line 76
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/SearchContainerFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "SearchContainerFragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lcom/samsung/android/app/music/search/SearchTabFragment;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, Lcom/samsung/android/app/music/search/SearchTabFragment;

    if-eqz v0, :cond_2

    .line 77
    invoke-virtual {v0}, Lcom/samsung/android/app/music/search/SearchTabFragment;->g()Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter;

    move-result-object v0

    const-string v1, "searchTabFragment.adapter"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter;->a()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    if-nez v1, :cond_1

    move-object v0, v2

    :cond_1
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    if-eqz v0, :cond_2

    const-string v1, "UiList"

    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " goToTop()::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->p_()V

    :cond_2
    return-void
.end method

.method public setMenuVisibility(Z)V
    .locals 3

    .line 63
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->setMenuVisibility(Z)V

    const-string v0, "SearchContainerFragment"

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMenuVisibility : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-direct {p0}, Lcom/samsung/android/app/music/search/SearchContainerFragment;->b()Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->setMenuVisibility(Z)V

    :cond_0
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 3

    .line 57
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->setUserVisibleHint(Z)V

    const-string v0, "SearchContainerFragment"

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUserVisibleHint : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-direct {p0}, Lcom/samsung/android/app/music/search/SearchContainerFragment;->b()Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    :cond_0
    return-void
.end method
