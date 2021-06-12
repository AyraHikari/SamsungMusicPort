.class public abstract Lcom/samsung/android/app/music/AbsSlidingTabFragment;
.super Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/TabControllable;


# instance fields
.field private a:Lcom/samsung/android/app/music/view/SlidingTabController;

.field private b:Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;

.field private c:Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;-><init>()V

    .line 34
    new-instance v0, Lcom/samsung/android/app/music/AbsSlidingTabFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/AbsSlidingTabFragment$1;-><init>(Lcom/samsung/android/app/music/AbsSlidingTabFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/AbsSlidingTabFragment;->c:Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;

    return-void
.end method


# virtual methods
.method protected a(Landroid/support/design/widget/TabLayout;Landroid/support/v4/view/ViewPager;)Lcom/samsung/android/app/music/view/SlidingTabController;
    .locals 1

    .line 101
    new-instance v0, Lcom/samsung/android/app/music/view/SlidingTabController;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/app/music/view/SlidingTabController;-><init>(Landroid/support/v4/app/Fragment;Landroid/support/design/widget/TabLayout;Landroid/support/v4/view/ViewPager;)V

    return-object v0
.end method

.method public a(IZ)V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/samsung/android/app/music/AbsSlidingTabFragment;->a:Lcom/samsung/android/app/music/view/SlidingTabController;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/view/SlidingTabController;->a(IZ)V

    return-void
.end method

.method protected abstract b()Landroid/support/v4/view/PagerAdapter;
.end method

.method public c()I
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/samsung/android/app/music/AbsSlidingTabFragment;->a:Lcom/samsung/android/app/music/view/SlidingTabController;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/view/SlidingTabController;->a()I

    move-result v0

    return v0
.end method

.method public final d()Z
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/samsung/android/app/music/AbsSlidingTabFragment;->a:Lcom/samsung/android/app/music/view/SlidingTabController;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const p2, 0x7f04008f

    const/4 p3, 0x0

    .line 49
    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 93
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onDestroyView()V

    .line 94
    iget-object v0, p0, Lcom/samsung/android/app/music/AbsSlidingTabFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/samsung/android/app/music/AbsSlidingTabFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;

    iget-object v1, p0, Lcom/samsung/android/app/music/AbsSlidingTabFragment;->c:Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;->removeOnListActionModeListener(Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 54
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v0, 0x7f13007c

    .line 56
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    .line 57
    invoke-virtual {p0}, Lcom/samsung/android/app/music/AbsSlidingTabFragment;->b()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    const v2, 0x7f130142

    .line 60
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;

    .line 61
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 63
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/music/AbsSlidingTabFragment;->a(Landroid/support/design/widget/TabLayout;Landroid/support/v4/view/ViewPager;)Lcom/samsung/android/app/music/view/SlidingTabController;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/AbsSlidingTabFragment;->a:Lcom/samsung/android/app/music/view/SlidingTabController;

    .line 64
    iget-object p1, p0, Lcom/samsung/android/app/music/AbsSlidingTabFragment;->a:Lcom/samsung/android/app/music/view/SlidingTabController;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/AbsSlidingTabFragment;->addFragmentLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V

    .line 66
    invoke-virtual {p0}, Lcom/samsung/android/app/music/AbsSlidingTabFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;

    if-eqz p1, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/samsung/android/app/music/AbsSlidingTabFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;

    iput-object p1, p0, Lcom/samsung/android/app/music/AbsSlidingTabFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;

    .line 69
    iget-object p1, p0, Lcom/samsung/android/app/music/AbsSlidingTabFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;

    iget-object v0, p0, Lcom/samsung/android/app/music/AbsSlidingTabFragment;->c:Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;->addOnListActionModeListener(Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;)V

    :cond_0
    const/4 p1, -0x1

    if-nez p2, :cond_2

    .line 74
    invoke-virtual {p0}, Lcom/samsung/android/app/music/AbsSlidingTabFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    if-nez p2, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const-string v0, "extra_tab_pos"

    .line 78
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "extra_tab_pos"

    .line 79
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "extra_tab_pos"

    .line 82
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    :goto_0
    const-string p2, "AbsSlidingTabFragment"

    .line 85
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onViewCreated. tabPos - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v0, :cond_3

    .line 86
    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result p2

    if-ge v0, p2, :cond_3

    .line 87
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/music/AbsSlidingTabFragment;->selectTab(II)V

    :cond_3
    return-void
.end method

.method public selectTab(II)V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/samsung/android/app/music/AbsSlidingTabFragment;->a:Lcom/samsung/android/app/music/view/SlidingTabController;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/view/SlidingTabController;->selectTab(II)V

    return-void
.end method
