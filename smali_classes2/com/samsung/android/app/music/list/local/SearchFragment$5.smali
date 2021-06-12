.class Lcom/samsung/android/app/music/list/local/SearchFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/SearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/SearchFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/SearchFragment;)V
    .locals 0

    .line 655
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$5;->a:Lcom/samsung/android/app/music/list/local/SearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 659
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$5;->a:Lcom/samsung/android/app/music/list/local/SearchFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/SearchFragment;->e(Lcom/samsung/android/app/music/list/local/SearchFragment;)Lcom/samsung/android/app/music/search/ISearchPageSwitcher;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 660
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$5;->a:Lcom/samsung/android/app/music/list/local/SearchFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/SearchFragment;->e(Lcom/samsung/android/app/music/list/local/SearchFragment;)Lcom/samsung/android/app/music/search/ISearchPageSwitcher;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->STORE_RESULT:Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/music/search/ISearchPageSwitcher;->a(Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;)V

    .line 661
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$5;->a:Lcom/samsung/android/app/music/list/local/SearchFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/SearchFragment;->e(Lcom/samsung/android/app/music/list/local/SearchFragment;)Lcom/samsung/android/app/music/search/ISearchPageSwitcher;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/samsung/android/app/music/search/ISearchPageSwitcher;->a(I)V

    .line 663
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$5;->a:Lcom/samsung/android/app/music/list/local/SearchFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/SearchFragment;->a(Lcom/samsung/android/app/music/list/local/SearchFragment;)Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/app/music/search/SearchConstants$SearchType;->SPOTIFY_STORE:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    if-ne p1, v0, :cond_1

    .line 664
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$5;->a:Lcom/samsung/android/app/music/list/local/SearchFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/SearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    move-result-object p1

    const-string v0, "spotify"

    const-string v1, "click"

    const-string v2, "search_on_spotify"

    .line 665
    invoke-virtual {p1, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
