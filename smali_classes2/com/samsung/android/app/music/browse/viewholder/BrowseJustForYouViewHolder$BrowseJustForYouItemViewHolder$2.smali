.class Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$BrowseJustForYouItemViewHolder$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$BrowseJustForYouItemViewHolder;->a(Lcom/samsung/android/app/music/browse/data/BrowseContentData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/app/FragmentActivity;

.field final synthetic b:Lcom/samsung/android/app/music/browse/data/BrowseContentData;

.field final synthetic c:Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$BrowseJustForYouItemViewHolder;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$BrowseJustForYouItemViewHolder;Landroid/support/v4/app/FragmentActivity;Lcom/samsung/android/app/music/browse/data/BrowseContentData;)V
    .locals 0

    .line 539
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$BrowseJustForYouItemViewHolder$2;->c:Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$BrowseJustForYouItemViewHolder;

    iput-object p2, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$BrowseJustForYouItemViewHolder$2;->a:Landroid/support/v4/app/FragmentActivity;

    iput-object p3, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$BrowseJustForYouItemViewHolder$2;->b:Lcom/samsung/android/app/music/browse/data/BrowseContentData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 542
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$BrowseJustForYouItemViewHolder$2;->a:Landroid/support/v4/app/FragmentActivity;

    if-eqz p1, :cond_0

    .line 543
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$BrowseJustForYouItemViewHolder$2;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$BrowseJustForYouItemViewHolder$2;->b:Lcom/samsung/android/app/music/browse/data/BrowseContentData;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->j()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$BrowseJustForYouItemViewHolder$2;->b:Lcom/samsung/android/app/music/browse/data/BrowseContentData;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/music/browse/BrowseLauncher;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;)Z

    .line 544
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$BrowseJustForYouItemViewHolder$2;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    move-result-object p1

    const-string v0, "click_banner"

    const-string v1, "banner_name"

    iget-object v2, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$BrowseJustForYouItemViewHolder$2;->b:Lcom/samsung/android/app/music/browse/data/BrowseContentData;

    .line 547
    invoke-virtual {v2}, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->f()Ljava/lang/String;

    move-result-object v2

    .line 545
    invoke-virtual {p1, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$BrowseJustForYouItemViewHolder$2;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$BrowseJustForYouItemViewHolder$2;->b:Lcom/samsung/android/app/music/browse/data/BrowseContentData;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;->a(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
