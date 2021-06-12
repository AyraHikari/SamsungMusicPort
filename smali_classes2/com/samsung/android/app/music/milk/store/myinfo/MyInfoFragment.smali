.class public final Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoFragment;
.super Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoFragment$Companion;
    }
.end annotation


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;

.field public static final b:Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoFragment$Companion;


# instance fields
.field private c:Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter;

.field private final d:Lkotlin/Lazy;

.field private final e:Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController$MyInfoDataOnLoadCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "dataController"

    const-string v4, "getDataController()Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoFragment;->a:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoFragment;->b:Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;-><init>()V

    .line 34
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoFragment$dataController$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoFragment$dataController$2;-><init>(Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoFragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoFragment;->d:Lkotlin/Lazy;

    .line 98
    new-instance v0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoFragment$dataLoadCallback$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoFragment$dataLoadCallback$1;-><init>(Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoFragment;)V

    check-cast v0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController$MyInfoDataOnLoadCallback;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoFragment;->e:Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController$MyInfoDataOnLoadCallback;

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoFragment;)Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController$MyInfoDataOnLoadCallback;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoFragment;->e:Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController$MyInfoDataOnLoadCallback;

    return-object p0
.end method

.method private final a()Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoFragment;->d:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoFragment;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;

    return-object v0
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoFragment;)Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter;
    .locals 1

    .line 30
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoFragment;->c:Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter;

    if-nez p0, :cond_0

    const-string v0, "adapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method


# virtual methods
.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflater"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f14002f

    .line 83
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 84
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 85
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoFragmentKt;->a(Landroid/content/Context;Landroid/view/Menu;)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f040191

    const/4 v0, 0x0

    .line 41
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 78
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoFragment;->a()Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;->a()V

    .line 79
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8

    if-eqz p1, :cond_0

    .line 89
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const v1, 0x7f1305ee

    if-nez v0, :cond_1

    goto :goto_1

    .line 90
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 91
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    if-eqz v3, :cond_2

    sget-object v2, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->a:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$Companion;

    const-string p1, "it"

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$Companion;->a(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$Companion;Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;IILjava/lang/Object;)V

    :cond_2
    const/4 p1, 0x1

    goto :goto_2

    .line 94
    :cond_3
    :goto_1
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    :goto_2
    return p1
.end method

.method public onResume()V
    .locals 3

    .line 70
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onResume()V

    .line 71
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "it"

    .line 72
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    move-result-object v1

    .line 73
    check-cast v0, Landroid/app/Activity;

    const-string v2, "my_info"

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const-string v0, "Ui"

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MyInfo_MyInfoFragment | onViewCreated() - savedInstanceState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    if-eqz p2, :cond_2

    const-string v0, "activity ?: return"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->b(Landroid/support/v4/app/Fragment;)Lcom/samsung/android/app/musiclibrary/ui/AppBar;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->a(Z)V

    const v2, 0x7f0b0483

    .line 51
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getString(R.string.milk_my_account_info_tab)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->a(Ljava/lang/String;)V

    .line 53
    :cond_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoFragment;->setHasOptionsMenu(Z)V

    .line 55
    new-instance v0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter;

    move-object v2, p0

    check-cast v2, Landroid/support/v4/app/Fragment;

    invoke-direct {v0, v2}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter;-><init>(Landroid/support/v4/app/Fragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoFragment;->c:Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter;

    const v0, 0x7f130150

    .line 57
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    .line 58
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    check-cast p2, Landroid/content/Context;

    invoke-direct {v0, p2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 59
    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoFragment;->c:Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter;

    if-nez p2, :cond_1

    const-string v0, "adapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_1
    check-cast p2, Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 60
    new-instance p2, Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;

    new-array v0, v1, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    invoke-direct {p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;-><init>([I)V

    check-cast p2, Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 63
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoFragment;->a()Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;->b()V

    .line 65
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "0053"

    .line 66
    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    return-void
.end method
