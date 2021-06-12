.class public Lcom/samsung/android/app/music/browse/list/details/TopChartTabFragment;
.super Lcom/samsung/android/app/music/AbsSlidingTabFragment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/samsung/android/app/music/AbsSlidingTabFragment;-><init>()V

    return-void
.end method

.method public static a(Landroid/os/Bundle;)Lcom/samsung/android/app/music/browse/list/details/TopChartTabFragment;
    .locals 1

    .line 29
    new-instance v0, Lcom/samsung/android/app/music/browse/list/details/TopChartTabFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/music/browse/list/details/TopChartTabFragment;-><init>()V

    .line 30
    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/browse/list/details/TopChartTabFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method protected b()Landroid/support/v4/view/PagerAdapter;
    .locals 2

    .line 58
    new-instance v0, Lcom/samsung/android/app/music/browse/list/details/TopChartTabFragment$1;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/details/TopChartTabFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/browse/list/details/TopChartTabFragment$1;-><init>(Lcom/samsung/android/app/music/browse/list/details/TopChartTabFragment;Landroid/support/v4/app/FragmentManager;)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const p2, 0x7f040090

    const/4 p3, 0x0

    .line 37
    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .line 42
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/AbsSlidingTabFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 44
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->b(Landroid/support/v4/app/Fragment;)Lcom/samsung/android/app/musiclibrary/ui/AppBar;

    move-result-object p1

    const p2, 0x7f0b00c3

    .line 45
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/browse/list/details/TopChartTabFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->a(Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 46
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->a(Z)V

    .line 48
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/details/TopChartTabFragment;->getCommandExecutorManager()Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "TopCharts"

    const/4 v1, 0x2

    .line 50
    new-array v1, v1, [Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;

    const/4 v2, 0x0

    new-instance v3, Lcom/samsung/android/app/music/bixby/v1/executor/browse/MoveTopChartTabExecutor;

    invoke-direct {v3, p1, p0}, Lcom/samsung/android/app/music/bixby/v1/executor/browse/MoveTopChartTabExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;Lcom/samsung/android/app/musiclibrary/ui/TabControllable;)V

    aput-object v3, v1, v2

    new-instance v2, Lcom/samsung/android/app/music/bixby/v1/executor/browse/LaunchOnlinePlaylistDetailExecutor;

    .line 52
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/details/TopChartTabFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Lcom/samsung/android/app/music/bixby/v1/executor/browse/LaunchOnlinePlaylistDetailExecutor;-><init>(Landroid/app/Activity;Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;)V

    aput-object v2, v1, p2

    .line 50
    invoke-interface {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->addCommandExecutor(Ljava/lang/String;[Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;)V

    :cond_0
    return-void
.end method
