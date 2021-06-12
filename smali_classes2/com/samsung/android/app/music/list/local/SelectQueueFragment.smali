.class public final Lcom/samsung/android/app/music/list/local/SelectQueueFragment;
.super Lcom/samsung/android/app/music/AbsSlidingTabFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/local/SelectQueueFragment$QueueTabAdapter;,
        Lcom/samsung/android/app/music/list/local/SelectQueueFragment$Companion;
    }
.end annotation


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;

.field public static final b:Lcom/samsung/android/app/music/list/local/SelectQueueFragment$Companion;


# instance fields
.field private c:Lcom/samsung/android/app/music/list/local/SelectQueueFragment$QueueTabAdapter;

.field private final d:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/list/local/SelectQueueFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "actionBar"

    const-string v4, "getActionBar()Landroid/support/v7/widget/Toolbar;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/music/list/local/SelectQueueFragment;->a:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/samsung/android/app/music/list/local/SelectQueueFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/list/local/SelectQueueFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/list/local/SelectQueueFragment;->b:Lcom/samsung/android/app/music/list/local/SelectQueueFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Lcom/samsung/android/app/music/AbsSlidingTabFragment;-><init>()V

    .line 26
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/samsung/android/app/music/list/local/SelectQueueFragment$actionBar$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/list/local/SelectQueueFragment$actionBar$2;-><init>(Lcom/samsung/android/app/music/list/local/SelectQueueFragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/SelectQueueFragment;->d:Lkotlin/Lazy;

    return-void
.end method

.method private final a()Landroid/support/v7/widget/Toolbar;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SelectQueueFragment;->d:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/list/local/SelectQueueFragment;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    return-object v0
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/list/local/SelectQueueFragment;)Landroid/support/v7/widget/Toolbar;
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/SelectQueueFragment;->a()Landroid/support/v7/widget/Toolbar;

    move-result-object p0

    return-object p0
.end method

.method private final e()V
    .locals 2

    .line 60
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/SelectQueueFragment;->a()Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 61
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V

    const v1, 0x7f02013f

    .line 62
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    .line 63
    new-instance v1, Lcom/samsung/android/app/music/list/local/SelectQueueFragment$setQueueActionbar$$inlined$apply$lambda$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/list/local/SelectQueueFragment$setQueueActionbar$$inlined$apply$lambda$1;-><init>(Lcom/samsung/android/app/music/list/local/SelectQueueFragment;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/SelectQueueFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 68
    instance-of v1, v0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    if-nez v1, :cond_1

    return-void

    .line 71
    :cond_1
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    new-instance v1, Lcom/samsung/android/app/music/list/local/SelectQueueFragment$setQueueActionbar$$inlined$also$lambda$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/list/local/SelectQueueFragment$setQueueActionbar$$inlined$also$lambda$1;-><init>(Lcom/samsung/android/app/music/list/local/SelectQueueFragment;)V

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->addOnListActionModeListener(Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .line 45
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/SelectQueueFragment;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    .line 46
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/music/list/local/SelectQueueFragment;->selectTab(II)V

    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/SelectQueueFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "extra_tab_pos"

    .line 50
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 52
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "extra_tab_pos"

    .line 53
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 54
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/list/local/SelectQueueFragment;->setArguments(Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method

.method protected b()Landroid/support/v4/view/PagerAdapter;
    .locals 4

    .line 92
    new-instance v0, Lcom/samsung/android/app/music/list/local/SelectQueueFragment$QueueTabAdapter;

    .line 93
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/SelectQueueFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v2, "activity!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "activity!!.applicationContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/SelectQueueFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "childFragmentManager"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    invoke-direct {v0, v1, v2, p0}, Lcom/samsung/android/app/music/list/local/SelectQueueFragment$QueueTabAdapter;-><init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Lcom/samsung/android/app/music/list/local/SelectQueueFragment;)V

    .line 95
    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/SelectQueueFragment;->c:Lcom/samsung/android/app/music/list/local/SelectQueueFragment$QueueTabAdapter;

    .line 94
    check-cast v0, Landroid/support/v4/view/PagerAdapter;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x1

    .line 35
    iput-boolean p3, p0, Lcom/samsung/android/app/music/list/local/SelectQueueFragment;->lifeCycleLogEnabled:Z

    const p3, 0x7f04008f

    const/4 v0, 0x0

    .line 36
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onHiddenChanged(Z)V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SelectQueueFragment;->c:Lcom/samsung/android/app/music/list/local/SelectQueueFragment$QueueTabAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/list/local/SelectQueueFragment$QueueTabAdapter;->a(Z)V

    .line 101
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/AbsSlidingTabFragment;->onHiddenChanged(Z)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extra_tab_pos"

    .line 86
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/SelectQueueFragment;->c()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "SMUSIC-SelectQueueFragment"

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSaveInstanceState. contentType - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/SelectQueueFragment;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/AbsSlidingTabFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/AbsSlidingTabFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 41
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/SelectQueueFragment;->e()V

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 1

    .line 105
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/AbsSlidingTabFragment;->setUserVisibleHint(Z)V

    .line 106
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SelectQueueFragment;->c:Lcom/samsung/android/app/music/list/local/SelectQueueFragment$QueueTabAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/list/local/SelectQueueFragment$QueueTabAdapter;->b(Z)V

    :cond_0
    return-void
.end method
