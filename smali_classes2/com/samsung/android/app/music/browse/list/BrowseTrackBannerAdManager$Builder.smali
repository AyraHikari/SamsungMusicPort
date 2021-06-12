.class public Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;

.field private b:I
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation
.end field

.field private c:I

.field private d:Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager$OnBannerClickListener;

.field private e:Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$OnFooterViewCreatedListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;)V
    .locals 1

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, -0x515

    .line 119
    iput v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager$Builder;->c:I

    .line 126
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager$Builder;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager$Builder;)Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager$Builder;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;

    return-object p0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager$Builder;)I
    .locals 0

    .line 112
    iget p0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager$Builder;->b:I

    return p0
.end method

.method static synthetic c(Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager$Builder;)I
    .locals 0

    .line 112
    iget p0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager$Builder;->c:I

    return p0
.end method

.method static synthetic d(Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager$Builder;)Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$OnFooterViewCreatedListener;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager$Builder;->e:Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$OnFooterViewCreatedListener;

    return-object p0
.end method

.method static synthetic e(Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager$Builder;)Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager$OnBannerClickListener;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager$Builder;->d:Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager$OnBannerClickListener;

    return-object p0
.end method


# virtual methods
.method public a()Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager$Builder;
    .locals 0

    return-object p0
.end method

.method public a(I)Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .line 135
    iput p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager$Builder;->b:I

    .line 136
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager$Builder;->a()Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager$Builder;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager$OnBannerClickListener;)Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager$Builder;
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager$Builder;->d:Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager$OnBannerClickListener;

    .line 141
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager$Builder;->a()Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager$Builder;

    move-result-object p1

    return-object p1
.end method

.method public b()Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager;
    .locals 2

    .line 154
    new-instance v0, Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager;-><init>(Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager$Builder;Lcom/samsung/android/app/music/browse/list/BrowseTrackBannerAdManager$1;)V

    return-object v0
.end method
