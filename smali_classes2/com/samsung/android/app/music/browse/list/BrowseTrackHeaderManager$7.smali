.class Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->e(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;)V
    .locals 0

    .line 347
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$7;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 350
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$7;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->c(Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const-string v0, "key_browse_play_radio_show_tip"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/music/preferences/Pref;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 352
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$7;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->e(Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;)Lcom/samsung/android/app/music/browse/widget/ToolTipView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 353
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$7;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->e(Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;)Lcom/samsung/android/app/music/browse/widget/ToolTipView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/browse/widget/ToolTipView;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 354
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$7;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->e(Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;)Lcom/samsung/android/app/music/browse/widget/ToolTipView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/browse/widget/ToolTipView;->b()V

    .line 356
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$7;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->a(Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;Lcom/samsung/android/app/music/browse/widget/ToolTipView;)Lcom/samsung/android/app/music/browse/widget/ToolTipView;

    .line 359
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$7;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->d(Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;)Lcom/samsung/android/app/music/browse/list/BrowsePlayableList;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 360
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$7;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->d(Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;)Lcom/samsung/android/app/music/browse/list/BrowsePlayableList;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$7$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$7$1;-><init>(Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$7;)V

    invoke-interface {p1, v0}, Lcom/samsung/android/app/music/browse/list/BrowsePlayableList;->a(Lcom/samsung/android/app/music/browse/list/BrowsePlayRadio$PlayResult;)V

    .line 414
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$7;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;

    .line 415
    invoke-static {v0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->c(Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getScreenId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1543"

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$7;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->c(Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    move-result-object p1

    const-string v0, "click_playradio_button"

    const-string v1, "click_playradio_button"

    const/4 v2, 0x1

    .line 419
    invoke-virtual {p1, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_2
    return-void
.end method
