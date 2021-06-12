.class public Lcom/samsung/android/app/music/browse/BrowseContainerFragment;
.super Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/GoToTopManager;


# instance fields
.field private a:Landroid/support/v4/app/Fragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 25
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onAttach(Landroid/app/Activity;)V

    const/4 p1, 0x1

    .line 26
    iput-boolean p1, p0, Lcom/samsung/android/app/music/browse/BrowseContainerFragment;->lifeCycleLogEnabled:Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 31
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 32
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/BrowseContainerFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f040016

    const/4 v0, 0x0

    .line 39
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 44
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/BrowseContainerFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const-string p2, "tag_discover"

    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/BrowseContainerFragment;->a:Landroid/support/v4/app/Fragment;

    .line 47
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/BrowseContainerFragment;->a:Landroid/support/v4/app/Fragment;

    if-nez p1, :cond_0

    .line 48
    new-instance p1, Lcom/samsung/android/app/music/browse/BrowseFragment;

    invoke-direct {p1}, Lcom/samsung/android/app/music/browse/BrowseFragment;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/BrowseContainerFragment;->a:Landroid/support/v4/app/Fragment;

    .line 49
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/BrowseContainerFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const p2, 0x7f130011

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/BrowseContainerFragment;->a:Landroid/support/v4/app/Fragment;

    const-string v1, "tag_discover"

    .line 50
    invoke-virtual {p1, p2, v0, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :cond_0
    return-void
.end method

.method public p_()V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/BrowseContainerFragment;->a:Landroid/support/v4/app/Fragment;

    instance-of v0, v0, Lcom/samsung/android/app/musiclibrary/ui/list/GoToTopManager;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/BrowseContainerFragment;->a:Landroid/support/v4/app/Fragment;

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/GoToTopManager;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/GoToTopManager;->p_()V

    :cond_0
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 1

    .line 56
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->setUserVisibleHint(Z)V

    .line 57
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/BrowseContainerFragment;->a:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/BrowseContainerFragment;->a:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    :cond_0
    return-void
.end method
