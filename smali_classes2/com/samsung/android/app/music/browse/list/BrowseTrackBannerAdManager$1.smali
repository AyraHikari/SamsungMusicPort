.class Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager$1;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const-string v0, "BrowseBannerManager"

    const-string v1, "banner clicked"

    .line 81
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager$1;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager;

    .line 83
    invoke-static {v0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager;->a(Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager;)Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    move-result-object v0

    const-string v1, "ads_click"

    const-string v2, "ads_type"

    const-string v3, "banner"

    .line 84
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager$1;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager;->b(Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager;)Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager$OnBannerClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager$1;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager;->b(Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager;)Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager$OnBannerClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager$OnBannerClickListener;->a(Landroid/view/View;)V

    :cond_0
    return-void
.end method
