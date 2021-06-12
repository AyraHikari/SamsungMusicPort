.class public Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment$UsageHistoryDetailQueryArgs;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<",
        "Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment;I)V
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment;->d(I)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 273
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/samsung/android/app/music/network/request/userhistory/UserHistoryApi;->b(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 274
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->a()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->a(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment$1;-><init>(Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment;)V

    .line 275
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    goto :goto_0

    .line 295
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/samsung/android/app/music/network/request/userhistory/UserHistoryApi;->a(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 296
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->a()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->a(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment$2;-><init>(Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment;)V

    .line 297
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    :goto_0
    return-void
.end method

.method private b(Landroid/database/Cursor;)V
    .locals 4

    .line 253
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->b(Landroid/support/v4/app/Fragment;)Lcom/samsung/android/app/musiclibrary/ui/AppBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "history_title"

    .line 256
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->a(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "start_date_local"

    .line 260
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 259
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryAdapter;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 262
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "end_date_local"

    .line 263
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 262
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryAdapter;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 264
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "~"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment;I)V
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment;->f(I)V

    return-void
.end method

.method static synthetic c(Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment;I)V
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment;->d(I)V

    return-void
.end method

.method static synthetic d(Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment;I)V
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment;->f(I)V

    return-void
.end method


# virtual methods
.method protected synthetic A()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment;->c()Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailAdapter;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    const-string v0, "UsageHistoryDetailFragment"

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoadFinished id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v0

    const/16 v1, 0x65

    if-ne v0, v1, :cond_0

    if-eqz p2, :cond_1

    .line 157
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-lez p1, :cond_1

    .line 158
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 159
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment;->b(Landroid/database/Cursor;)V

    goto :goto_0

    .line 163
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected b(I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 2

    const/16 v0, 0x65

    if-ne p1, v0, :cond_0

    .line 143
    new-instance p1, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryFragment$UsageHistoryQueryArgs$Builder;

    invoke-direct {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryFragment$UsageHistoryQueryArgs$Builder;-><init>()V

    const-string v0, "history_id"

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment;->a:Ljava/lang/String;

    .line 144
    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryFragment$UsageHistoryQueryArgs$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryFragment$UsageHistoryQueryArgs$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryFragment$UsageHistoryQueryArgs$Builder;->a()Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryFragment$UsageHistoryQueryArgs;

    move-result-object p1

    return-object p1

    .line 146
    :cond_0
    new-instance p1, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment$UsageHistoryDetailQueryArgs$Builder;

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment;->a:Ljava/lang/String;

    invoke-direct {p1, v0}, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment$UsageHistoryDetailQueryArgs$Builder;-><init>(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment$UsageHistoryDetailQueryArgs$Builder;->a()Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment$UsageHistoryDetailQueryArgs;

    move-result-object p1

    return-object p1
.end method

.method protected c()Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailAdapter;
    .locals 2

    .line 125
    new-instance v0, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailAdapter$Builder;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailAdapter$Builder;-><init>(Landroid/support/v4/app/Fragment;)V

    const-string v1, "history_id"

    .line 126
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailAdapter$Builder;->setKeywordCol(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailAdapter$Builder;

    const-string v1, "track_title"

    .line 127
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailAdapter$Builder;->setText1Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailAdapter$Builder;

    const-string v1, "date_local"

    .line 128
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailAdapter$Builder;->setText2Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailAdapter$Builder;

    const-string v1, "device_id"

    .line 129
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailAdapter$Builder;->setText3Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailAdapter$Builder;

    .line 130
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailAdapter$Builder;->b()Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailAdapter;

    move-result-object v0

    return-object v0
.end method

.method public g()I
    .locals 1

    const/16 v0, 0x67

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .line 117
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;

    move-result-object p1

    check-cast p1, Landroid/support/v4/content/AsyncTaskLoader;

    const-wide/16 v0, 0x0

    .line 118
    invoke-virtual {p1, v0, v1}, Landroid/support/v4/content/AsyncTaskLoader;->setUpdateThrottle(J)V

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const-string p3, "UiList"

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " onCreateView()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const p3, 0x7f040192

    const/4 v0, 0x0

    .line 70
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 47
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 109
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onResume()V

    .line 110
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    move-result-object v1

    const-string v2, "usage_history_detail"

    .line 112
    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "key_keyword"

    .line 61
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "key_list_type"

    .line 62
    iget v1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment;->b:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 63
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 75
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 77
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->b(Landroid/support/v4/app/Fragment;)Lcom/samsung/android/app/musiclibrary/ui/AppBar;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 79
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->a(Z)V

    const v0, 0x7f0b0430

    .line 80
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->a(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    const/4 v0, 0x2

    .line 83
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment;->a(ZI)V

    .line 85
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/DefaultEmptyViewCreator;

    const v0, 0x7f0b02c6

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/DefaultEmptyViewCreator;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;I)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;)V

    .line 87
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/Divider;

    const v2, 0x7f020220

    invoke-direct {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/Divider;-><init>(I)V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Lcom/samsung/android/app/musiclibrary/ui/list/Divider;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    if-eqz p2, :cond_1

    const-string p1, "key_keyword"

    .line 91
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment;->a:Ljava/lang/String;

    const-string p1, "key_list_type"

    .line 92
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment;->b:I

    const-string p1, "UsageHistoryDetailFragment"

    .line 93
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCreate savedInstanceState : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment;->b:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment;->g()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment;->d(I)V

    const/16 p1, 0x65

    .line 96
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment;->f(I)V

    goto :goto_0

    .line 98
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "key_keyword"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment;->a:Ljava/lang/String;

    .line 99
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "key_list_type"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment;->b:I

    const-string p1, "UsageHistoryDetailFragment"

    .line 101
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCreate getExtras : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment;->b:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment;->a:Ljava/lang/String;

    iget p2, p0, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment;->b:I

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment;->a(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method protected u()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 2

    .line 136
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
