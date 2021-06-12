.class Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager;->b(Landroid/view/View;)V
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

    .line 99
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager$2;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string v0, "BrowseBannerManager"

    const-string v1, "banner cancel clicked"

    .line 102
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager$2;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager;->a(Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager;Z)Z

    .line 104
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager$2;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager;->a(Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager;)Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    const/16 v1, -0x515

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->removeFooterView(I)V

    .line 105
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager$2;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager;->b(Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager;)Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager$OnBannerClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager$2;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager;->b(Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager;)Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager$OnBannerClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager$OnBannerClickListener;->b(Landroid/view/View;)V

    :cond_0
    return-void
.end method
