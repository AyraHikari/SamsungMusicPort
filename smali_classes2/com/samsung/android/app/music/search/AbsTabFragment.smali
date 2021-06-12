.class public abstract Lcom/samsung/android/app/music/search/AbsTabFragment;
.super Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/TabControllable;


# instance fields
.field protected a:Landroid/support/v4/view/ViewPager;

.field protected b:Lcom/samsung/android/app/music/search/SearchSlideTabController;

.field private c:Landroid/support/v4/view/PagerAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract b()Landroid/support/v4/view/PagerAdapter;
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    const-string v0, "AbsTabFragment"

    return-object v0
.end method

.method protected d()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const-string v0, "com.sec.android.app.music.KEY_SEARCH_TAB_LAST_INDEX"

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const p2, 0x7f0401e5

    const/4 p3, 0x0

    .line 36
    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 41
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f13007c

    .line 43
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/v4/view/ViewPager;

    iput-object p2, p0, Lcom/samsung/android/app/music/search/AbsTabFragment;->a:Landroid/support/v4/view/ViewPager;

    .line 44
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/AbsTabFragment;->b()Landroid/support/v4/view/PagerAdapter;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/search/AbsTabFragment;->c:Landroid/support/v4/view/PagerAdapter;

    .line 46
    iget-object p2, p0, Lcom/samsung/android/app/music/search/AbsTabFragment;->a:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lcom/samsung/android/app/music/search/AbsTabFragment;->c:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {p2, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 47
    iget-object p2, p0, Lcom/samsung/android/app/music/search/AbsTabFragment;->c:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {p2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result p2

    const v0, 0x7f130142

    const/4 v1, 0x1

    if-le p2, v1, :cond_0

    .line 48
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/design/widget/TabLayout;

    .line 49
    iget-object p2, p0, Lcom/samsung/android/app/music/search/AbsTabFragment;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, p2}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 51
    new-instance p2, Lcom/samsung/android/app/music/search/SearchSlideTabController;

    iget-object v0, p0, Lcom/samsung/android/app/music/search/AbsTabFragment;->a:Landroid/support/v4/view/ViewPager;

    invoke-direct {p2, p0, p1, v0}, Lcom/samsung/android/app/music/search/SearchSlideTabController;-><init>(Landroid/support/v4/app/Fragment;Landroid/support/design/widget/TabLayout;Landroid/support/v4/view/ViewPager;)V

    iput-object p2, p0, Lcom/samsung/android/app/music/search/AbsTabFragment;->b:Lcom/samsung/android/app/music/search/SearchSlideTabController;

    .line 52
    iget-object p1, p0, Lcom/samsung/android/app/music/search/AbsTabFragment;->b:Lcom/samsung/android/app/music/search/SearchSlideTabController;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/AbsTabFragment;->d()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/search/SearchSlideTabController;->a(Ljava/lang/String;)V

    const-string p1, "AbsTabFragment"

    .line 53
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "instantiate tab controller : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/app/music/search/AbsTabFragment;->b:Lcom/samsung/android/app/music/search/SearchSlideTabController;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object p1, p0, Lcom/samsung/android/app/music/search/AbsTabFragment;->b:Lcom/samsung/android/app/music/search/SearchSlideTabController;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/search/AbsTabFragment;->addFragmentLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V

    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public selectTab(II)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/samsung/android/app/music/search/AbsTabFragment;->b:Lcom/samsung/android/app/music/search/SearchSlideTabController;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/samsung/android/app/music/search/AbsTabFragment;->b:Lcom/samsung/android/app/music/search/SearchSlideTabController;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/search/SearchSlideTabController;->selectTab(II)V

    :cond_0
    return-void
.end method
