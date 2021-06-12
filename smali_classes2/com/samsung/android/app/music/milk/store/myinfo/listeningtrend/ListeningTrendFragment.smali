.class public final Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendFragment;
.super Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendFragment$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendFragment$Companion;


# instance fields
.field private b:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

.field private c:Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendAdapter;

.field private d:Landroid/support/constraint/Group;

.field private final e:Lio/reactivex/disposables/CompositeDisposable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendFragment;->a:Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;-><init>()V

    .line 34
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendFragment;->e:Lio/reactivex/disposables/CompositeDisposable;

    return-void
.end method

.method private final a(Landroid/content/Context;)V
    .locals 3

    .line 91
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendFragment;->e:Lio/reactivex/disposables/CompositeDisposable;

    .line 92
    invoke-static {p1}, Lcom/samsung/android/app/music/network/transport/UserMyTransport$Instance;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/network/transport/UserMyTransport;

    move-result-object p1

    const/16 v1, 0x583

    .line 93
    invoke-interface {p1, v1}, Lcom/samsung/android/app/music/network/transport/UserMyTransport;->e(I)Lio/reactivex/Observable;

    move-result-object p1

    .line 94
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->a()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->a(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 95
    new-instance v1, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendFragment$loadTrendData$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendFragment$loadTrendData$1;-><init>(Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendFragment;)V

    check-cast v1, Lio/reactivex/functions/Consumer;

    .line 131
    sget-object v2, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendFragment$loadTrendData$2;->a:Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendFragment$loadTrendData$2;

    check-cast v2, Lio/reactivex/functions/Consumer;

    .line 95
    invoke-virtual {p1, v1, v2}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 91
    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->a(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private final a(Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendData;)V
    .locals 5

    .line 80
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendData;->b()Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendData;->a()Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v0, 0x1

    :goto_3
    if-eqz v0, :cond_8

    .line 81
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendData;->d()Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    goto :goto_5

    :cond_5
    :goto_4
    const/4 v0, 0x1

    :goto_5
    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendData;->c()Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_6

    :cond_6
    const/4 v0, 0x0

    goto :goto_7

    :cond_7
    :goto_6
    const/4 v0, 0x1

    :goto_7
    if-eqz v0, :cond_8

    goto :goto_8

    :cond_8
    const/4 v1, 0x0

    :goto_8
    const-string v0, "Ui"

    .line 82
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ListeningTrend_ListeningTrendFragment | setData() - isEmptyData: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    if-nez v0, :cond_9

    const-string v3, "recyclerView"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_9
    const/16 v3, 0x8

    if-eqz v1, :cond_a

    const/16 v4, 0x8

    goto :goto_9

    :cond_a
    const/4 v4, 0x0

    :goto_9
    invoke-virtual {v0, v4}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setVisibility(I)V

    .line 85
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendFragment;->d:Landroid/support/constraint/Group;

    if-nez v0, :cond_b

    const-string v4, "noItemGroup"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_b
    if-eqz v1, :cond_c

    goto :goto_a

    :cond_c
    const/16 v2, 0x8

    :goto_a
    invoke-virtual {v0, v2}, Landroid/support/constraint/Group;->setVisibility(I)V

    if-nez v1, :cond_e

    .line 87
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendFragment;->c:Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendAdapter;

    if-nez v0, :cond_d

    const-string v1, "adapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_d
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendAdapter;->a(Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendData;)V

    :cond_e
    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendFragment;Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendData;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendFragment;->a(Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendData;)V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f040100

    const/4 v0, 0x0

    .line 39
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendFragment;->e:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->a()V

    .line 75
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onDestroyView()V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 66
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onResume()V

    .line 67
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "it"

    .line 68
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    move-result-object v1

    .line 69
    check-cast v0, Landroid/app/Activity;

    const-string v2, "listening_trends"

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const-string v0, "Ui"

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ListeningTrend_ListeningTrendFragment | onViewCreated() - savedInstanceState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    if-eqz p2, :cond_2

    const-string v0, "activity ?: return"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->b(Landroid/support/v4/app/Fragment;)Lcom/samsung/android/app/musiclibrary/ui/AppBar;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->a(Z)V

    const v2, 0x7f0b018d

    .line 49
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getString(R.string.listening_trends)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->a(Ljava/lang/String;)V

    .line 52
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendAdapter;

    invoke-direct {v0}, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendAdapter;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendFragment;->c:Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendAdapter;

    const v0, 0x7f130150

    .line 53
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    .line 54
    new-instance v3, Landroid/support/v7/widget/LinearLayoutManager;

    move-object v4, p2

    check-cast v4, Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    check-cast v3, Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 55
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendFragment;->c:Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendAdapter;

    if-nez v3, :cond_1

    const-string v4, "adapter"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_1
    check-cast v3, Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 56
    new-instance v3, Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;

    new-array v4, v1, [I

    const/4 v5, 0x0

    aput v5, v4, v5

    invoke-direct {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;-><init>([I)V

    check-cast v3, Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 57
    invoke-virtual {v2, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setFastScrollEnabled(Z)V

    .line 58
    invoke-virtual {v2, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setGoToTopEnabled(Z)V

    const-string v1, "view.findViewById<MusicR\u2026pEnabled = true\n        }"

    .line 53
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    const v0, 0x7f130329

    .line 60
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "view.findViewById(R.id.l\u2026ning_trend_no_item_group)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/support/constraint/Group;

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendFragment;->d:Landroid/support/constraint/Group;

    .line 62
    invoke-virtual {p2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "activity.applicationContext"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendFragment;->a(Landroid/content/Context;)V

    return-void

    :cond_2
    return-void
.end method
