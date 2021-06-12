.class public Lcom/samsung/android/app/music/search/SearchSlideTabController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;
.implements Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;
.implements Lcom/samsung/android/app/musiclibrary/ui/TabControllable;


# instance fields
.field private a:Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;

.field private final b:Landroid/support/v4/view/ViewPager;

.field private final c:Landroid/support/design/widget/TabLayout;

.field private final d:Landroid/support/v4/app/Fragment;

.field private final e:Landroid/graphics/drawable/Drawable;

.field private f:I

.field private g:Z

.field private h:I

.field private i:Ljava/lang/String;

.field private final j:Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;Landroid/support/design/widget/TabLayout;Landroid/support/v4/view/ViewPager;)V
    .locals 2

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/app/music/search/SearchSlideTabController;->e:Landroid/graphics/drawable/Drawable;

    const/4 v0, -0x1

    .line 52
    iput v0, p0, Lcom/samsung/android/app/music/search/SearchSlideTabController;->f:I

    .line 54
    iput-boolean v1, p0, Lcom/samsung/android/app/music/search/SearchSlideTabController;->g:Z

    .line 56
    iput v0, p0, Lcom/samsung/android/app/music/search/SearchSlideTabController;->h:I

    .line 60
    new-instance v0, Lcom/samsung/android/app/music/search/SearchSlideTabController$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/search/SearchSlideTabController$1;-><init>(Lcom/samsung/android/app/music/search/SearchSlideTabController;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/search/SearchSlideTabController;->j:Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;

    .line 80
    iput-object p3, p0, Lcom/samsung/android/app/music/search/SearchSlideTabController;->b:Landroid/support/v4/view/ViewPager;

    .line 81
    iput-object p2, p0, Lcom/samsung/android/app/music/search/SearchSlideTabController;->c:Landroid/support/design/widget/TabLayout;

    .line 82
    iput-object p1, p0, Lcom/samsung/android/app/music/search/SearchSlideTabController;->d:Landroid/support/v4/app/Fragment;

    .line 83
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/search/SearchSlideTabController;->a(Landroid/support/design/widget/TabLayout;)V

    return-void
.end method

.method private a(Landroid/app/Activity;)V
    .locals 0

    .line 146
    iget-object p1, p0, Lcom/samsung/android/app/music/search/SearchSlideTabController;->c:Landroid/support/design/widget/TabLayout;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/music/search/SearchSlideTabController;->c:Landroid/support/design/widget/TabLayout;

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout;->getTabCount()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 150
    iput-boolean p1, p0, Lcom/samsung/android/app/music/search/SearchSlideTabController;->g:Z

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private a(Landroid/support/design/widget/TabLayout;)V
    .locals 3

    .line 87
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout;->seslSetSubTabStyle()V

    .line 88
    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchSlideTabController;->d:Landroid/support/v4/app/Fragment;

    .line 89
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0058

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 88
    invoke-virtual {p1, v0}, Landroid/support/design/widget/TabLayout;->seslSetSubTabSelectedIndicatorColor(I)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/search/SearchSlideTabController;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/samsung/android/app/music/search/SearchSlideTabController;->g:Z

    return p0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/search/SearchSlideTabController;)Landroid/support/design/widget/TabLayout;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/samsung/android/app/music/search/SearchSlideTabController;->c:Landroid/support/design/widget/TabLayout;

    return-object p0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchSlideTabController;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    return v0
.end method

.method protected a(I)V
    .locals 3

    .line 154
    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchSlideTabController;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    .line 156
    instance-of v1, v0, Lcom/samsung/android/app/music/milk/store/widget/CachedFragmentPagerAdapter;

    if-eqz v1, :cond_0

    .line 157
    check-cast v0, Lcom/samsung/android/app/music/milk/store/widget/CachedFragmentPagerAdapter;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/milk/store/widget/CachedFragmentPagerAdapter;->b(I)Landroid/support/v4/app/Fragment;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 160
    :goto_0
    instance-of v0, p1, Lcom/samsung/android/app/music/milk/store/widget/TabPageChange;

    if-eqz v0, :cond_1

    .line 162
    :try_start_0
    check-cast p1, Lcom/samsung/android/app/music/milk/store/widget/TabPageChange;

    invoke-interface {p1}, Lcom/samsung/android/app/music/milk/store/widget/TabPageChange;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "SearchSlideTabController"

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error while dispatching tab selected : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/samsung/android/app/music/search/SearchSlideTabController;->i:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 2

    const/4 v0, 0x0

    .line 107
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/music/search/SearchSlideTabController;->c:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout;->getTabCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 108
    iget-object v1, p0, Lcom/samsung/android/app/music/search/SearchSlideTabController;->c:Landroid/support/design/widget/TabLayout;

    instance-of v1, v1, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/samsung/android/app/music/search/SearchSlideTabController;->c:Landroid/support/design/widget/TabLayout;

    check-cast v1, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;

    invoke-virtual {v1, v0, p1}, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->a(IZ)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchSlideTabController;->b:Landroid/support/v4/view/ViewPager;

    instance-of v0, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    if-eqz v0, :cond_2

    .line 113
    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchSlideTabController;->b:Landroid/support/v4/view/ViewPager;

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;->setSwipeEnabled(Z)V

    :cond_2
    return-void
.end method

.method protected b(I)V
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchSlideTabController;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    .line 172
    instance-of v1, v0, Lcom/samsung/android/app/music/milk/store/widget/CachedFragmentPagerAdapter;

    if-eqz v1, :cond_0

    .line 173
    check-cast v0, Lcom/samsung/android/app/music/milk/store/widget/CachedFragmentPagerAdapter;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/milk/store/widget/CachedFragmentPagerAdapter;->b(I)Landroid/support/v4/app/Fragment;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 175
    :goto_0
    instance-of v0, p1, Lcom/samsung/android/app/music/milk/store/widget/TabPageChange;

    if-eqz v0, :cond_1

    .line 176
    check-cast p1, Lcom/samsung/android/app/music/milk/store/widget/TabPageChange;

    invoke-interface {p1}, Lcom/samsung/android/app/music/milk/store/widget/TabPageChange;->a()V

    :cond_1
    return-void
.end method

.method public onFragmentActivityCreated(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V
    .locals 5
    .param p1    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 183
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0f02de

    .line 184
    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 185
    iget v2, p0, Lcom/samsung/android/app/music/search/SearchSlideTabController;->f:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 186
    iget v1, p0, Lcom/samsung/android/app/music/search/SearchSlideTabController;->f:I

    .line 189
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/search/SearchSlideTabController;->c:Landroid/support/design/widget/TabLayout;

    iget-object v4, p0, Lcom/samsung/android/app/music/search/SearchSlideTabController;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v4}, Landroid/support/design/widget/TabLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 190
    iget-object v2, p0, Lcom/samsung/android/app/music/search/SearchSlideTabController;->c:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v2, v1}, Landroid/support/design/widget/TabLayout;->setSelectedTabIndicatorColor(I)V

    .line 192
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/search/SearchSlideTabController;->a(Landroid/app/Activity;)V

    if-eqz p2, :cond_1

    const-string v0, "key_latest_tab_pos"

    .line 195
    invoke-virtual {p2, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/app/music/search/SearchSlideTabController;->h:I

    .line 197
    :cond_1
    iget p2, p0, Lcom/samsung/android/app/music/search/SearchSlideTabController;->h:I

    if-ne p2, v3, :cond_2

    iget-object p2, p0, Lcom/samsung/android/app/music/search/SearchSlideTabController;->i:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 198
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/music/search/SearchSlideTabController;->i:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/samsung/android/app/music/preferences/Pref;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/search/SearchSlideTabController;->h:I

    .line 200
    :cond_2
    iget p1, p0, Lcom/samsung/android/app/music/search/SearchSlideTabController;->h:I

    if-eq p1, v3, :cond_3

    .line 201
    iget-object p1, p0, Lcom/samsung/android/app/music/search/SearchSlideTabController;->b:Landroid/support/v4/view/ViewPager;

    iget p2, p0, Lcom/samsung/android/app/music/search/SearchSlideTabController;->h:I

    invoke-virtual {p1, p2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 202
    iput v3, p0, Lcom/samsung/android/app/music/search/SearchSlideTabController;->h:I

    :cond_3
    const-string p1, "SearchSlideTabController"

    .line 204
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "previous tab pos : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/app/music/search/SearchSlideTabController;->h:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onFragmentCreated(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onFragmentDestroyed(Landroid/support/v4/app/Fragment;)V
    .locals 0
    .param p1    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onFragmentPaused(Landroid/support/v4/app/Fragment;)V
    .locals 4
    .param p1    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 223
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/SearchSlideTabController;->a()I

    move-result v0

    const-string v1, "SearchSlideTabController"

    .line 224
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "save current item : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget-object v1, p0, Lcom/samsung/android/app/music/search/SearchSlideTabController;->i:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 226
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/app/music/search/SearchSlideTabController;->i:Ljava/lang/String;

    invoke-static {p1, v1, v0}, Lcom/samsung/android/app/music/preferences/Pref;->c(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onFragmentResumed(Landroid/support/v4/app/Fragment;)V
    .locals 0
    .param p1    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

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

    const-string p1, "key_latest_tab_pos"

    .line 249
    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchSlideTabController;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onFragmentStarted(Landroid/support/v4/app/Fragment;)V
    .locals 1
    .param p1    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 209
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    .line 210
    instance-of v0, p1, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;

    if-eqz v0, :cond_0

    .line 211
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;

    iput-object p1, p0, Lcom/samsung/android/app/music/search/SearchSlideTabController;->a:Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;

    .line 212
    iget-object p1, p0, Lcom/samsung/android/app/music/search/SearchSlideTabController;->a:Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;

    invoke-interface {p1, p0}, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;->addOnListActionModeListener(Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;)V

    .line 214
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/search/SearchSlideTabController;->b:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchSlideTabController;->j:Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method public onFragmentStopped(Landroid/support/v4/app/Fragment;)V
    .locals 1
    .param p1    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 232
    iget-object p1, p0, Lcom/samsung/android/app/music/search/SearchSlideTabController;->a:Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;

    if-eqz p1, :cond_0

    .line 233
    iget-object p1, p0, Lcom/samsung/android/app/music/search/SearchSlideTabController;->a:Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;

    invoke-interface {p1, p0}, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;->removeOnListActionModeListener(Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;)V

    const/4 p1, 0x0

    .line 234
    iput-object p1, p0, Lcom/samsung/android/app/music/search/SearchSlideTabController;->a:Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;

    .line 237
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/search/SearchSlideTabController;->b:Landroid/support/v4/view/ViewPager;

    if-eqz p1, :cond_1

    .line 238
    iget-object p1, p0, Lcom/samsung/android/app/music/search/SearchSlideTabController;->b:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchSlideTabController;->j:Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->removeOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    :cond_1
    return-void
.end method

.method public onListActionModeFinished(Landroid/support/v7/view/ActionMode;)V
    .locals 0

    const/4 p1, 0x1

    .line 137
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/search/SearchSlideTabController;->a(Z)V

    return-void
.end method

.method public onListActionModeStarted(Landroid/support/v7/view/ActionMode;)V
    .locals 0

    const/4 p1, 0x0

    .line 132
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/search/SearchSlideTabController;->a(Z)V

    return-void
.end method

.method public selectTab(II)V
    .locals 1

    .line 123
    iget-object p1, p0, Lcom/samsung/android/app/music/search/SearchSlideTabController;->b:Landroid/support/v4/view/ViewPager;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method public setFragmentUserVisibleHint(Landroid/support/v4/app/Fragment;Z)V
    .locals 0
    .param p1    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method
