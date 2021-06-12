.class Lcom/samsung/android/app/music/list/local/OnlineQueueFunction$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/ListItemMoreMenuable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/OnlineQueueFunction;->b()Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/OnlineQueueFunction;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/OnlineQueueFunction;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/OnlineQueueFunction$1;->a:Lcom/samsung/android/app/music/list/local/OnlineQueueFunction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;IJ)V
    .locals 0

    if-ltz p2, :cond_2

    .line 67
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/OnlineQueueFunction$1;->a:Lcom/samsung/android/app/music/list/local/OnlineQueueFunction;

    .line 68
    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/OnlineQueueFunction;->a(Lcom/samsung/android/app/music/list/local/OnlineQueueFunction;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->i()[J

    move-result-object p1

    array-length p1, p1

    if-lt p2, p1, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/OnlineQueueFunction$1;->a:Lcom/samsung/android/app/music/list/local/OnlineQueueFunction;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/OnlineQueueFunction;->b(Lcom/samsung/android/app/music/list/local/OnlineQueueFunction;)Landroid/content/Context;

    move-result-object p1

    iget-object p3, p0, Lcom/samsung/android/app/music/list/local/OnlineQueueFunction$1;->a:Lcom/samsung/android/app/music/list/local/OnlineQueueFunction;

    .line 74
    invoke-static {p3}, Lcom/samsung/android/app/music/list/local/OnlineQueueFunction;->a(Lcom/samsung/android/app/music/list/local/OnlineQueueFunction;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object p3

    invoke-virtual {p3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;

    invoke-virtual {p3, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->e(I)J

    move-result-wide p2

    .line 73
    invoke-static {p1, p2, p3}, Lcom/samsung/android/app/music/milk/util/ResolverUtils$Tracks;->a(Landroid/content/Context;J)Lcom/samsung/android/app/music/model/SimpleTrack;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 76
    iget-object p2, p0, Lcom/samsung/android/app/music/list/local/OnlineQueueFunction$1;->a:Lcom/samsung/android/app/music/list/local/OnlineQueueFunction;

    invoke-static {p2}, Lcom/samsung/android/app/music/list/local/OnlineQueueFunction;->a(Lcom/samsung/android/app/music/list/local/OnlineQueueFunction;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->a(Landroid/support/v4/app/FragmentManager;Lcom/samsung/android/app/music/model/SimpleTrack;)V

    .line 77
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/music/list/local/OnlineQueueFunction$1;->a:Lcom/samsung/android/app/music/list/local/OnlineQueueFunction;

    .line 78
    invoke-static {p2}, Lcom/samsung/android/app/music/list/local/OnlineQueueFunction;->a(Lcom/samsung/android/app/music/list/local/OnlineQueueFunction;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getScreenId()Ljava/lang/String;

    move-result-object p2

    const-string p3, "1544"

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    const-string p1, "SMUSIC-UiList"

    const-string p2, "NowPlayingListAdapter Select menu with wrong position"

    .line 69
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Landroid/view/View;IJ)Z
    .locals 0

    .line 85
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/OnlineQueueFunction$1;->a:Lcom/samsung/android/app/music/list/local/OnlineQueueFunction;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/OnlineQueueFunction;->a(Lcom/samsung/android/app/music/list/local/OnlineQueueFunction;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->getItemCpAttrs(I)I

    move-result p1

    const p2, 0x80002

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
