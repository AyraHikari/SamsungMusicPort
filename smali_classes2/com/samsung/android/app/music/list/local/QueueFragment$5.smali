.class Lcom/samsung/android/app/music/list/local/QueueFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/QueueFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/QueueFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/QueueFragment;)V
    .locals 0

    .line 470
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/QueueFragment$5;->a:Lcom/samsung/android/app/music/list/local/QueueFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;IJ)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "UiList"

    .line 473
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " onItemClick() | position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " | id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " | view: "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/QueueFragment$5;->a:Lcom/samsung/android/app/music/list/local/QueueFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/QueueFragment;->isVisible()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 480
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/QueueFragment$5;->a:Lcom/samsung/android/app/music/list/local/QueueFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/QueueFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;

    .line 481
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;->getItemCpAttrs(I)I

    move-result p3

    .line 482
    invoke-virtual {p1, p3}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;->a(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 483
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/QueueFragment$5;->a:Lcom/samsung/android/app/music/list/local/QueueFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/QueueFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;->getValidItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;

    if-eqz p1, :cond_2

    .line 484
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;->isClosed()Z

    move-result p4

    if-eqz p4, :cond_1

    goto :goto_0

    .line 488
    :cond_1
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;->getQueuePosition(I)I

    move-result p1

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->openQueuePosition(IZ)V

    goto :goto_1

    :cond_2
    :goto_0
    const-string p1, "UiList"

    const-string p2, "onItemClick() : Cursor is closed"

    .line 485
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    :goto_1
    const/4 p1, 0x0

    .line 491
    invoke-static {p3}, Lcom/samsung/android/app/musiclibrary/ui/provider/AbsCpAttrs;->c(I)Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p1, "Local"

    goto :goto_2

    :cond_4
    const p2, 0x80002

    if-ne p3, p2, :cond_5

    const-string p1, "MOD"

    .line 496
    :cond_5
    :goto_2
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p2

    iget-object p3, p0, Lcom/samsung/android/app/music/list/local/QueueFragment$5;->a:Lcom/samsung/android/app/music/list/local/QueueFragment;

    invoke-virtual {p3}, Lcom/samsung/android/app/music/list/local/QueueFragment;->getScreenId()Ljava/lang/String;

    move-result-object p3

    const-string p4, "1081"

    invoke-virtual {p2, p3, p4, p1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
