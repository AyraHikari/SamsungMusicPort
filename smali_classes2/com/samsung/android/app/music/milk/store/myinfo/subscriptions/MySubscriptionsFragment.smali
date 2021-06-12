.class public Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionsFragment;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<",
        "Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;-><init>()V

    .line 113
    new-instance v0, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionsFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionsFragment$1;-><init>(Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionsFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionsFragment;->a:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    return-void
.end method

.method public static c()Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionsFragment;
    .locals 1

    .line 35
    new-instance v0, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionsFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionsFragment;-><init>()V

    return-object v0
.end method

.method private f()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;
    .locals 4

    .line 127
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/ButtonEmptyViewCreator$ButtonItem;

    new-instance v1, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionsFragment$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionsFragment$2;-><init>(Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionsFragment;)V

    const v2, 0x7f130222

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/ButtonEmptyViewCreator$ButtonItem;-><init>(ILandroid/view/View$OnClickListener;)V

    .line 135
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/ButtonEmptyViewCreator;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/ButtonEmptyViewCreator$ButtonItem;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const v0, 0x7f0401ab

    invoke-direct {v1, p0, v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/ButtonEmptyViewCreator;-><init>(Landroid/support/v4/app/Fragment;I[Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/ButtonEmptyViewCreator$ButtonItem;)V

    return-object v1
.end method


# virtual methods
.method protected synthetic A()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionsFragment;->d()Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected b(I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 2

    .line 97
    new-instance p1, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionQueryArgs$Builder;

    invoke-direct {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionQueryArgs$Builder;-><init>()V

    const-string v0, "orderStatus"

    const-string v1, "02"

    .line 98
    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionQueryArgs$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionQueryArgs$Builder;

    move-result-object p1

    .line 99
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionQueryArgs$Builder;->a()Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionQueryArgs;

    move-result-object p1

    return-object p1
.end method

.method protected d()Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionAdapter;
    .locals 2

    .line 83
    new-instance v0, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionAdapter$Builder;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionAdapter$Builder;-><init>(Landroid/support/v4/app/Fragment;)V

    const-string v1, "orderId"

    .line 84
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionAdapter$Builder;->setKeywordCol(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionAdapter$Builder;

    .line 85
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionAdapter$Builder;->b()Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionAdapter;

    move-result-object v0

    return-object v0
.end method

.method public g()I
    .locals 1

    const/16 v0, 0x51

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

    .line 42
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

    .line 43
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onResume()V
    .locals 3

    .line 74
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onResume()V

    .line 75
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    move-result-object v1

    const-string v2, "purchased_subscriptions"

    .line 77
    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 48
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 50
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->b(Landroid/support/v4/app/Fragment;)Lcom/samsung/android/app/musiclibrary/ui/AppBar;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    .line 52
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->a(Z)V

    const p2, 0x7f0b0305

    .line 53
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionsFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->a(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    .line 56
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionsFragment;->c(Z)V

    .line 58
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionsFragment;->f()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionsFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;)V

    .line 60
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;-><init>(Landroid/support/v4/app/Fragment;)V

    const p2, 0x7f1005fe

    .line 61
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->b(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    move-result-object p1

    .line 62
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->c(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->a()Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;

    move-result-object p1

    .line 63
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionsFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 64
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionsFragment;->addFragmentLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V

    .line 66
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionsFragment;->g()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionsFragment;->d(I)V

    .line 68
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionsFragment;->a:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionsFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;)V

    .line 69
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionsFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionAdapter;

    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionsFragment;->a:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionAdapter;->a(Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;)V

    return-void
.end method

.method protected u()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 2

    .line 91
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
