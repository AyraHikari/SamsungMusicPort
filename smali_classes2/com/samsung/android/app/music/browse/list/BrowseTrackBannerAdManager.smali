.class public Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$OnFooterViewCreatedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager$OnBannerClickListener;,
        Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager$Builder;
    }
.end annotation


# instance fields
.field private final a:Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;

.field private final b:Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager$OnBannerClickListener;

.field private final c:Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$OnFooterViewCreatedListener;

.field private final d:I
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation
.end field

.field private final e:I

.field private f:Z


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager$Builder;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager;->f:Z

    .line 36
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager$Builder;->a(Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager$Builder;)Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;

    .line 37
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager$Builder;->b(Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager;->d:I

    .line 38
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager$Builder;->c(Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager;->e:I

    .line 39
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager$Builder;->d(Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager$Builder;)Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$OnFooterViewCreatedListener;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager;->c:Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$OnFooterViewCreatedListener;

    .line 40
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager$Builder;->e(Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager$Builder;)Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager$OnBannerClickListener;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager;->b:Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager$OnBannerClickListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager$Builder;Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager$1;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager;-><init>(Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager$Builder;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager;)Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;

    return-object p0
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f13014c

    .line 74
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 78
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager$1;-><init>(Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager;Z)Z
    .locals 0

    .line 18
    iput-boolean p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager;->f:Z

    return p1
.end method

.method static synthetic b(Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager;)Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager$OnBannerClickListener;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager;->b:Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager$OnBannerClickListener;

    return-object p0
.end method

.method private b(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f13014d

    .line 95
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 99
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager$2;-><init>(Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a(ILandroid/view/View;)V
    .locals 4

    .line 59
    iget v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager;->e:I

    if-eq v0, p1, :cond_0

    return-void

    .line 62
    :cond_0
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager;->a(Landroid/view/View;)V

    .line 63
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager;->b(Landroid/view/View;)V

    .line 64
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    move-result-object v0

    const-string v1, "ads_show"

    const-string v2, "ads_type"

    const-string v3, "banner"

    .line 65
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager;->c:Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$OnFooterViewCreatedListener;

    if-eqz v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager;->c:Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$OnFooterViewCreatedListener;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$OnFooterViewCreatedListener;->a(ILandroid/view/View;)V

    :cond_1
    return-void
.end method

.method public a(Z)V
    .locals 4

    .line 44
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/advertise/AdScheduler;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/advertise/AdScheduler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/advertise/AdScheduler;->a()Z

    move-result v0

    const-string v1, "BrowseBannerManager"

    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateBannerView. added - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", cancelClicked - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager;->f:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isFreeUser - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 48
    iget-boolean p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager;->f:Z

    if-nez p1, :cond_0

    if-eqz v0, :cond_0

    .line 49
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager;->e:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->hasFooterView(I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 50
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager;->e:I

    iget v1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager;->d:I

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->addFooterView(II)V

    goto :goto_0

    .line 53
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager;->e:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->removeFooterView(I)V

    :cond_1
    :goto_0
    return-void
.end method
