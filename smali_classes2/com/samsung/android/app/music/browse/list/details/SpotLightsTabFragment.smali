.class public Lcom/samsung/android/app/music/browse/list/details/SpotLightsTabFragment;
.super Lcom/samsung/android/app/music/AbsSlidingTabFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/browse/list/details/SpotLightsTabFragment$SpotLightsTabAdapter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/samsung/android/app/music/AbsSlidingTabFragment;-><init>()V

    return-void
.end method

.method public static a(Landroid/os/Bundle;)Lcom/samsung/android/app/music/browse/list/details/SpotLightsTabFragment;
    .locals 1

    .line 26
    new-instance v0, Lcom/samsung/android/app/music/browse/list/details/SpotLightsTabFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/music/browse/list/details/SpotLightsTabFragment;-><init>()V

    .line 27
    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/browse/list/details/SpotLightsTabFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method protected b()Landroid/support/v4/view/PagerAdapter;
    .locals 2

    .line 47
    new-instance v0, Lcom/samsung/android/app/music/browse/list/details/SpotLightsTabFragment$SpotLightsTabAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/details/SpotLightsTabFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/browse/list/details/SpotLightsTabFragment$SpotLightsTabAdapter;-><init>(Lcom/samsung/android/app/music/browse/list/details/SpotLightsTabFragment;Landroid/support/v4/app/FragmentManager;)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const p2, 0x7f040090

    const/4 p3, 0x0

    .line 34
    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 39
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/AbsSlidingTabFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 40
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->b(Landroid/support/v4/app/Fragment;)Lcom/samsung/android/app/musiclibrary/ui/AppBar;

    move-result-object p1

    const p2, 0x7f0b00bb

    .line 41
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/browse/list/details/SpotLightsTabFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->a(Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 42
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->a(Z)V

    return-void
.end method
