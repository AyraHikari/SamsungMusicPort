.class Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$BrowseJustForYouPagerAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$BrowseJustForYouPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/browse/data/BrowseContentData;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$BrowseJustForYouPagerAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$BrowseJustForYouPagerAdapter;Lcom/samsung/android/app/music/browse/data/BrowseContentData;Landroid/content/Context;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$BrowseJustForYouPagerAdapter$2;->c:Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$BrowseJustForYouPagerAdapter;

    iput-object p2, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$BrowseJustForYouPagerAdapter$2;->a:Lcom/samsung/android/app/music/browse/data/BrowseContentData;

    iput-object p3, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$BrowseJustForYouPagerAdapter$2;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 235
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$BrowseJustForYouPagerAdapter$2;->c:Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$BrowseJustForYouPagerAdapter;

    invoke-static {p1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$BrowseJustForYouPagerAdapter;->a(Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$BrowseJustForYouPagerAdapter;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$BrowseJustForYouPagerAdapter$2;->a:Lcom/samsung/android/app/music/browse/data/BrowseContentData;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->j()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$BrowseJustForYouPagerAdapter$2;->a:Lcom/samsung/android/app/music/browse/data/BrowseContentData;

    .line 236
    invoke-virtual {v1}, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->i()Ljava/lang/String;

    move-result-object v1

    .line 235
    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/music/browse/BrowseLauncher;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;)Z

    .line 237
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$BrowseJustForYouPagerAdapter$2;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    move-result-object p1

    const-string v0, "click_banner"

    const-string v1, "banner_name"

    iget-object v2, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$BrowseJustForYouPagerAdapter$2;->a:Lcom/samsung/android/app/music/browse/data/BrowseContentData;

    .line 240
    invoke-virtual {v2}, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->f()Ljava/lang/String;

    move-result-object v2

    .line 238
    invoke-virtual {p1, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$BrowseJustForYouPagerAdapter$2;->c:Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$BrowseJustForYouPagerAdapter;

    invoke-static {p1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$BrowseJustForYouPagerAdapter;->a(Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$BrowseJustForYouPagerAdapter;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$BrowseJustForYouPagerAdapter$2;->a:Lcom/samsung/android/app/music/browse/data/BrowseContentData;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;->a(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
