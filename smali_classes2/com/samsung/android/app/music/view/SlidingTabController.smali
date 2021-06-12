.class public Lcom/samsung/android/app/music/view/SlidingTabController;
.super Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacksAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/TabControllable;


# instance fields
.field private final a:Landroid/support/v4/view/ViewPager;

.field private final b:Landroid/support/design/widget/TabLayout;

.field private final c:Landroid/support/v4/app/Fragment;

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:Z

.field private f:I

.field private final g:Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;Landroid/support/design/widget/TabLayout;Landroid/support/v4/view/ViewPager;)V
    .locals 2

    .line 64
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacksAdapter;-><init>()V

    .line 39
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/app/music/view/SlidingTabController;->d:Landroid/graphics/drawable/Drawable;

    .line 41
    iput-boolean v1, p0, Lcom/samsung/android/app/music/view/SlidingTabController;->e:Z

    const/4 v0, -0x1

    .line 43
    iput v0, p0, Lcom/samsung/android/app/music/view/SlidingTabController;->f:I

    .line 45
    new-instance v0, Lcom/samsung/android/app/music/view/SlidingTabController$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/view/SlidingTabController$1;-><init>(Lcom/samsung/android/app/music/view/SlidingTabController;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/view/SlidingTabController;->g:Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;

    .line 65
    iput-object p3, p0, Lcom/samsung/android/app/music/view/SlidingTabController;->a:Landroid/support/v4/view/ViewPager;

    .line 66
    iput-object p2, p0, Lcom/samsung/android/app/music/view/SlidingTabController;->b:Landroid/support/design/widget/TabLayout;

    .line 67
    iput-object p1, p0, Lcom/samsung/android/app/music/view/SlidingTabController;->c:Landroid/support/v4/app/Fragment;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/view/SlidingTabController;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lcom/samsung/android/app/music/view/SlidingTabController;->e:Z

    return p0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/view/SlidingTabController;)Landroid/support/design/widget/TabLayout;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/samsung/android/app/music/view/SlidingTabController;->b:Landroid/support/design/widget/TabLayout;

    return-object p0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/samsung/android/app/music/view/SlidingTabController;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    return v0
.end method

.method protected a(I)V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/samsung/android/app/music/view/SlidingTabController;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    .line 135
    instance-of v1, v0, Lcom/samsung/android/app/music/milk/store/widget/CachedFragmentPagerAdapter;

    if-eqz v1, :cond_0

    .line 136
    check-cast v0, Lcom/samsung/android/app/music/milk/store/widget/CachedFragmentPagerAdapter;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/milk/store/widget/CachedFragmentPagerAdapter;->b(I)Landroid/support/v4/app/Fragment;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 139
    :goto_0
    instance-of v0, p1, Lcom/samsung/android/app/music/milk/store/widget/TabPageChange;

    if-eqz v0, :cond_1

    .line 141
    :try_start_0
    check-cast p1, Lcom/samsung/android/app/music/milk/store/widget/TabPageChange;

    invoke-interface {p1}, Lcom/samsung/android/app/music/milk/store/widget/TabPageChange;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 143
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method public a(IZ)V
    .locals 2

    const-string p1, "SlidingTabController"

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTabEnabled. enable - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object p1, p0, Lcom/samsung/android/app/music/view/SlidingTabController;->b:Landroid/support/design/widget/TabLayout;

    invoke-virtual {p1, p2}, Landroid/support/design/widget/TabLayout;->setEnabled(Z)V

    .line 74
    iget-object p1, p0, Lcom/samsung/android/app/music/view/SlidingTabController;->a:Landroid/support/v4/view/ViewPager;

    instance-of p1, p1, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    if-eqz p1, :cond_0

    .line 75
    iget-object p1, p0, Lcom/samsung/android/app/music/view/SlidingTabController;->a:Landroid/support/v4/view/ViewPager;

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;->setSwipeEnabled(Z)V

    :cond_0
    return-void
.end method

.method protected b(I)V
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/samsung/android/app/music/view/SlidingTabController;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    .line 151
    instance-of v1, v0, Lcom/samsung/android/app/music/milk/store/widget/CachedFragmentPagerAdapter;

    if-eqz v1, :cond_0

    .line 152
    check-cast v0, Lcom/samsung/android/app/music/milk/store/widget/CachedFragmentPagerAdapter;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/milk/store/widget/CachedFragmentPagerAdapter;->b(I)Landroid/support/v4/app/Fragment;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 154
    :goto_0
    instance-of v0, p1, Lcom/samsung/android/app/music/milk/store/widget/TabPageChange;

    if-eqz v0, :cond_1

    .line 155
    check-cast p1, Lcom/samsung/android/app/music/milk/store/widget/TabPageChange;

    invoke-interface {p1}, Lcom/samsung/android/app/music/milk/store/widget/TabPageChange;->a()V

    :cond_1
    return-void
.end method

.method public onFragmentActivityCreated(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_0

    const-string p1, "key_tab_position"

    const/4 v0, 0x0

    .line 92
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/view/SlidingTabController;->f:I

    :cond_0
    return-void
.end method

.method public onFragmentResumed(Landroid/support/v4/app/Fragment;)V
    .locals 1
    .param p1    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 112
    iget p1, p0, Lcom/samsung/android/app/music/view/SlidingTabController;->f:I

    if-ltz p1, :cond_0

    .line 113
    iget-object p1, p0, Lcom/samsung/android/app/music/view/SlidingTabController;->a:Landroid/support/v4/view/ViewPager;

    iget v0, p0, Lcom/samsung/android/app/music/view/SlidingTabController;->f:I

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    const/4 p1, -0x1

    .line 114
    iput p1, p0, Lcom/samsung/android/app/music/view/SlidingTabController;->f:I

    :cond_0
    return-void
.end method

.method public onFragmentSaveInstanceState(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string p1, "key_tab_position"

    .line 120
    iget-object v0, p0, Lcom/samsung/android/app/music/view/SlidingTabController;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onFragmentStarted(Landroid/support/v4/app/Fragment;)V
    .locals 2
    .param p1    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 98
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacksAdapter;->onFragmentStarted(Landroid/support/v4/app/Fragment;)V

    .line 100
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f0f02de

    .line 101
    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    .line 103
    iget-object v0, p0, Lcom/samsung/android/app/music/view/SlidingTabController;->b:Landroid/support/design/widget/TabLayout;

    iget-object v1, p0, Lcom/samsung/android/app/music/view/SlidingTabController;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 104
    iget-object v0, p0, Lcom/samsung/android/app/music/view/SlidingTabController;->b:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/TabLayout;->setSelectedTabIndicatorColor(I)V

    .line 106
    iget-object p1, p0, Lcom/samsung/android/app/music/view/SlidingTabController;->a:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lcom/samsung/android/app/music/view/SlidingTabController;->g:Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    const/4 p1, 0x1

    .line 107
    iput-boolean p1, p0, Lcom/samsung/android/app/music/view/SlidingTabController;->e:Z

    return-void
.end method

.method public onFragmentStopped(Landroid/support/v4/app/Fragment;)V
    .locals 1
    .param p1    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 126
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacksAdapter;->onFragmentStopped(Landroid/support/v4/app/Fragment;)V

    .line 127
    iget-object p1, p0, Lcom/samsung/android/app/music/view/SlidingTabController;->a:Landroid/support/v4/view/ViewPager;

    if-eqz p1, :cond_0

    .line 128
    iget-object p1, p0, Lcom/samsung/android/app/music/view/SlidingTabController;->a:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lcom/samsung/android/app/music/view/SlidingTabController;->g:Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->removeOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    :cond_0
    return-void
.end method

.method public selectTab(II)V
    .locals 1

    .line 81
    iget-object p1, p0, Lcom/samsung/android/app/music/view/SlidingTabController;->a:Landroid/support/v4/view/ViewPager;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method
