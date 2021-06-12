.class public final Lcom/samsung/android/app/music/main/MyMusicContainerFragment;
.super Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/GoToTopManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/main/MyMusicContainerFragment$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/main/MyMusicContainerFragment$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/main/MyMusicContainerFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/main/MyMusicContainerFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/main/MyMusicContainerFragment;->a:Lcom/samsung/android/app/music/main/MyMusicContainerFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;-><init>()V

    const-string v0, "UiList"

    .line 31
    iput-object v0, p0, Lcom/samsung/android/app/music/main/MyMusicContainerFragment;->baseTag:Ljava/lang/String;

    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p0, Lcom/samsung/android/app/music/main/MyMusicContainerFragment;->lifeCycleLogEnabled:Z

    return-void
.end method


# virtual methods
.method public final b()Lcom/samsung/android/app/music/main/MyMusicTabFragment;
    .locals 2

    .line 27
    invoke-virtual {p0}, Lcom/samsung/android/app/music/main/MyMusicContainerFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "tag_my_music"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lcom/samsung/android/app/music/main/MyMusicTabFragment;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lcom/samsung/android/app/music/main/MyMusicTabFragment;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .line 88
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    if-eqz p3, :cond_4

    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    const/16 p2, 0x7c0

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/main/MyMusicContainerFragment;->b()Lcom/samsung/android/app/music/main/MyMusicTabFragment;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string p1, "key_playlist_id"

    const-wide/16 v0, -0x1

    .line 96
    invoke-virtual {p3, p1, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide p1

    const-string v0, "key_title"

    .line 97
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 99
    invoke-virtual {p0}, Lcom/samsung/android/app/music/main/MyMusicContainerFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 102
    invoke-virtual {p0}, Lcom/samsung/android/app/music/main/MyMusicContainerFragment;->b()Lcom/samsung/android/app/music/main/MyMusicTabFragment;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 103
    sget-object v2, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->b:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$Companion;

    const-string v3, "title"

    invoke-static {p3, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2, p3}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$Companion;->a(JLjava/lang/String;)Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/support/v4/app/Fragment;

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    .line 101
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentManagerExtensionKt;->a(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_0
    return-void

    :cond_4
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 37
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onAttach(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 38
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/main/MyMusicContainerFragment;->setViewCachedEnabled(Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 44
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 45
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/main/MyMusicContainerFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected onCreateView()Ljava/lang/Integer;
    .locals 1

    const v0, 0x7f0401a3

    .line 60
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public onResume()V
    .locals 0

    .line 83
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 77
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onStart()V

    return-void
.end method

.method protected onViewCreated(Landroid/view/View;Landroid/os/Bundle;Z)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;Z)V

    .line 67
    invoke-virtual {p0}, Lcom/samsung/android/app/music/main/MyMusicContainerFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const-string p2, "tag_my_music"

    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    if-nez p1, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/samsung/android/app/music/main/MyMusicContainerFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const-string p2, "childFragmentManager"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const p2, 0x7f130011

    .line 69
    new-instance p3, Lcom/samsung/android/app/music/main/MyMusicTabFragment;

    invoke-direct {p3}, Lcom/samsung/android/app/music/main/MyMusicTabFragment;-><init>()V

    check-cast p3, Landroid/support/v4/app/Fragment;

    const-string v0, "tag_my_music"

    invoke-virtual {p1, p2, p3, v0}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 174
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :cond_0
    return-void
.end method

.method public p_()V
    .locals 4

    .line 112
    invoke-virtual {p0}, Lcom/samsung/android/app/music/main/MyMusicContainerFragment;->b()Lcom/samsung/android/app/music/main/MyMusicTabFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 113
    invoke-virtual {v0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->a()Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;->c()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    if-eqz v0, :cond_1

    const-string v1, "UiList"

    .line 114
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " goToTop()::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->p_()V

    :cond_1
    return-void
.end method
