.class public abstract Landroid/support/v13/app/FragmentPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "FragmentPagerAdapter"


# instance fields
.field private mCurTransaction:Landroid/app/FragmentTransaction;

.field private mCurrentPrimaryItem:Landroid/app/Fragment;

.field private final mFragmentManager:Landroid/app/FragmentManager;


# direct methods
.method public constructor <init>(Landroid/app/FragmentManager;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 81
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Landroid/support/v13/app/FragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 75
    iput-object v0, p0, Landroid/support/v13/app/FragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    .line 82
    iput-object p1, p0, Landroid/support/v13/app/FragmentPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    return-void
.end method

.method private static makeFragmentName(IJ)Ljava/lang/String;
    .locals 2

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android:switcher:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 144
    iget-object p1, p0, Landroid/support/v13/app/FragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-nez p1, :cond_0

    .line 145
    iget-object p1, p0, Landroid/support/v13/app/FragmentPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v13/app/FragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 149
    :cond_0
    iget-object p1, p0, Landroid/support/v13/app/FragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    check-cast p3, Landroid/app/Fragment;

    invoke-virtual {p1, p3}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    return-void
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 179
    iget-object p1, p0, Landroid/support/v13/app/FragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-eqz p1, :cond_0

    .line 180
    iget-object p1, p0, Landroid/support/v13/app/FragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    const/4 p1, 0x0

    .line 181
    iput-object p1, p0, Landroid/support/v13/app/FragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 182
    iget-object p1, p0, Landroid/support/v13/app/FragmentPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {p1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    :cond_0
    return-void
.end method

.method public abstract getItem(I)Landroid/app/Fragment;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public getItemId(I)J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    int-to-long v0, p1

    return-wide v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 112
    iget-object v0, p0, Landroid/support/v13/app/FragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Landroid/support/v13/app/FragmentPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v13/app/FragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 116
    :cond_0
    invoke-virtual {p0, p2}, Landroid/support/v13/app/FragmentPagerAdapter;->getItemId(I)J

    move-result-wide v0

    .line 119
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    invoke-static {v2, v0, v1}, Landroid/support/v13/app/FragmentPagerAdapter;->makeFragmentName(IJ)Ljava/lang/String;

    move-result-object v2

    .line 120
    iget-object v3, p0, Landroid/support/v13/app/FragmentPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v3, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 123
    iget-object p1, p0, Landroid/support/v13/app/FragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {p1, v2}, Landroid/app/FragmentTransaction;->attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_0

    .line 125
    :cond_1
    invoke-virtual {p0, p2}, Landroid/support/v13/app/FragmentPagerAdapter;->getItem(I)Landroid/app/Fragment;

    move-result-object v2

    .line 127
    iget-object p2, p0, Landroid/support/v13/app/FragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v3

    .line 128
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    invoke-static {p1, v0, v1}, Landroid/support/v13/app/FragmentPagerAdapter;->makeFragmentName(IJ)Ljava/lang/String;

    move-result-object p1

    .line 127
    invoke-virtual {p2, v3, v2, p1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 130
    :goto_0
    iget-object p1, p0, Landroid/support/v13/app/FragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    if-eq v2, p1, :cond_2

    const/4 p1, 0x0

    .line 131
    invoke-virtual {v2, p1}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    .line 132
    invoke-static {v2, p1}, Landroid/support/v13/app/FragmentCompat;->setUserVisibleHint(Landroid/app/Fragment;Z)V

    :cond_2
    return-object v2
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 192
    check-cast p2, Landroid/app/Fragment;

    invoke-virtual {p2}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object p2

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 159
    check-cast p3, Landroid/app/Fragment;

    .line 160
    iget-object p1, p0, Landroid/support/v13/app/FragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    if-eq p3, p1, :cond_2

    .line 161
    iget-object p1, p0, Landroid/support/v13/app/FragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    if-eqz p1, :cond_0

    .line 162
    iget-object p1, p0, Landroid/support/v13/app/FragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    .line 163
    iget-object p1, p0, Landroid/support/v13/app/FragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    invoke-static {p1, p2}, Landroid/support/v13/app/FragmentCompat;->setUserVisibleHint(Landroid/app/Fragment;Z)V

    :cond_0
    if-eqz p3, :cond_1

    const/4 p1, 0x1

    .line 166
    invoke-virtual {p3, p1}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    .line 167
    invoke-static {p3, p1}, Landroid/support/v13/app/FragmentCompat;->setUserVisibleHint(Landroid/app/Fragment;Z)V

    .line 169
    :cond_1
    iput-object p3, p0, Landroid/support/v13/app/FragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    :cond_2
    return-void
.end method

.method public startUpdate(Landroid/view/ViewGroup;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 99
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    return-void

    .line 100
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ViewPager with adapter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " requires a view id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
