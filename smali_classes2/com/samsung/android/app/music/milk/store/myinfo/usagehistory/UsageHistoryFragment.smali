.class public Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryFragment;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryFragment$UsageHistoryQueryArgs;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<",
        "Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lio/reactivex/disposables/CompositeDisposable;

.field private final b:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;-><init>()V

    .line 45
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryFragment;->a:Lio/reactivex/disposables/CompositeDisposable;

    .line 214
    new-instance v0, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryFragment$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryFragment$3;-><init>(Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryFragment;I)V
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryFragment;->d(I)V

    return-void
.end method

.method private d()V
    .locals 3

    .line 187
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryFragment;->a:Lio/reactivex/disposables/CompositeDisposable;

    .line 188
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/music/network/request/userhistory/UserHistoryApi;->a(Landroid/content/Context;)Lio/reactivex/Observable;

    move-result-object v1

    .line 189
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->a()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->a(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryFragment$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryFragment$2;-><init>(Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryFragment;)V

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Action;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryFragment$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryFragment$1;-><init>(Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryFragment;)V

    .line 194
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->b(Lio/reactivex/Observer;)Lio/reactivex/Observer;

    move-result-object v1

    check-cast v1, Lio/reactivex/disposables/Disposable;

    .line 188
    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->a(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method


# virtual methods
.method protected synthetic A()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryFragment;->c()Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected b(I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 0

    .line 112
    new-instance p1, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryFragment$UsageHistoryQueryArgs$Builder;

    invoke-direct {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryFragment$UsageHistoryQueryArgs$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryFragment$UsageHistoryQueryArgs$Builder;->a()Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryFragment$UsageHistoryQueryArgs;

    move-result-object p1

    return-object p1
.end method

.method protected c()Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryAdapter;
    .locals 2

    .line 97
    new-instance v0, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryAdapter$Builder;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryAdapter$Builder;-><init>(Landroid/support/v4/app/Fragment;)V

    const-string v1, "history_id"

    .line 98
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryAdapter$Builder;->setKeywordCol(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryAdapter$Builder;

    const-string v1, "end_date_local"

    .line 99
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryAdapter$Builder;->setText2Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryAdapter$Builder;

    .line 100
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryAdapter$Builder;->b()Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryAdapter;

    move-result-object v0

    return-object v0
.end method

.method public g()I
    .locals 1

    const/16 v0, 0x65

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const-string p3, "UiList"

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " onCreateView()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const p3, 0x7f040192

    const/4 v0, 0x0

    .line 51
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 90
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onDestroy()V

    .line 91
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryFragment;->a:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->a()V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 82
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onResume()V

    .line 83
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    move-result-object v1

    const-string v2, "usage_history"

    .line 85
    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 56
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 58
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->b(Landroid/support/v4/app/Fragment;)Lcom/samsung/android/app/musiclibrary/ui/AppBar;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 60
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->a(Z)V

    const v0, 0x7f0b0430

    .line 61
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->a(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    const/4 v0, 0x2

    .line 64
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryFragment;->a(ZI)V

    .line 66
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/DefaultEmptyViewCreator;

    const v0, 0x7f0b02c6

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/DefaultEmptyViewCreator;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;I)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;)V

    .line 68
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/Divider;

    const v2, 0x7f020220

    invoke-direct {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/Divider;-><init>(I)V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Lcom/samsung/android/app/musiclibrary/ui/list/Divider;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    if-nez p2, :cond_1

    const-string p1, "Ui"

    .line 72
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " | onViewCreated() -load data from server."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryFragment;->d()V

    goto :goto_0

    .line 75
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryFragment;->g()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryFragment;->d(I)V

    .line 77
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;)V

    return-void
.end method

.method protected u()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 2

    .line 106
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
