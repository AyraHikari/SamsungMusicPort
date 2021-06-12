.class public Lcom/samsung/android/app/music/advertise/AdFragmentMezzoFullBanner;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/advertise/AdPopupActivity$onKeyBackPressedListener;


# instance fields
.field private a:Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;

.field private b:Z

.field private c:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/samsung/android/app/music/advertise/AdFragmentMezzoFullBanner;->b:Z

    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/advertise/AdFragmentMezzoFullBanner;->c:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/advertise/AdFragmentMezzoFullBanner;)Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/samsung/android/app/music/advertise/AdFragmentMezzoFullBanner;->a:Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;

    return-object p0
.end method

.method public static a(Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;Z)Lcom/samsung/android/app/music/advertise/AdFragmentMezzoFullBanner;
    .locals 2

    const-string v0, "Advert.AdFragmentMezzoFullBanner"

    const-string v1, "AdFragmentMezzoFullBanner"

    .line 42
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    new-instance v0, Lcom/samsung/android/app/music/advertise/AdFragmentMezzoFullBanner;

    invoke-direct {v0}, Lcom/samsung/android/app/music/advertise/AdFragmentMezzoFullBanner;-><init>()V

    .line 45
    iput-object p0, v0, Lcom/samsung/android/app/music/advertise/AdFragmentMezzoFullBanner;->a:Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;

    .line 46
    iput-boolean p1, v0, Lcom/samsung/android/app/music/advertise/AdFragmentMezzoFullBanner;->b:Z

    .line 48
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "EXTRA_AD_POPUP_TYPE"

    .line 49
    invoke-virtual {p0}, Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;->getValue()I

    move-result p0

    invoke-virtual {p1, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 50
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/advertise/AdFragmentMezzoFullBanner;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/advertise/AdFragmentMezzoFullBanner;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/samsung/android/app/music/advertise/AdFragmentMezzoFullBanner;->b:Z

    return p0
.end method

.method static synthetic c(Lcom/samsung/android/app/music/advertise/AdFragmentMezzoFullBanner;)Landroid/os/Handler;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/samsung/android/app/music/advertise/AdFragmentMezzoFullBanner;->c:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "Advert.AdFragmentMezzoFullBanner"

    const-string v1, "onKeyBackPressed"

    .line 155
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-static {}, Lcom/samsung/android/app/music/advertise/AdBroadCastReceiver;->a()Lcom/samsung/android/app/music/advertise/AdBroadCastReceiver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/advertise/AdFragmentMezzoFullBanner;->a:Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/advertise/AdBroadCastReceiver;->a(Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;)V

    .line 158
    invoke-virtual {p0}, Lcom/samsung/android/app/music/advertise/AdFragmentMezzoFullBanner;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 57
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "Advert.AdFragmentMezzoFullBanner"

    const-string v0, "onCreate"

    .line 59
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const-string p3, "Advert.AdFragmentMezzoFullBanner"

    const-string v0, "onCreateView"

    .line 67
    invoke-static {p3, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p3

    const-string v0, "843"

    invoke-virtual {p3, v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->c(Ljava/lang/String;)V

    const p3, 0x7f04000a

    const/4 v0, 0x0

    .line 71
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 134
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    const-string v0, "Advert.AdFragmentMezzoFullBanner"

    const-string v1, "onDestroy"

    .line 136
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 148
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    const-string v0, "Advert.AdFragmentMezzoFullBanner"

    const-string v1, "onPause"

    .line 150
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 141
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    const-string v0, "Advert.AdFragmentMezzoFullBanner"

    const-string v1, "onResume"

    .line 143
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "Advert.AdFragmentMezzoFullBanner"

    const-string v1, "onViewCreated"

    .line 77
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f13012b

    .line 79
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    const/4 v1, 0x1

    .line 80
    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setClipToOutline(Z)V

    const v0, 0x7f13012e

    .line 82
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 83
    new-instance v1, Lcom/samsung/android/app/music/advertise/AdFragmentMezzoFullBanner$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/advertise/AdFragmentMezzoFullBanner$1;-><init>(Lcom/samsung/android/app/music/advertise/AdFragmentMezzoFullBanner;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f13012c

    .line 98
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/advertise/AdBannerView;

    .line 99
    new-instance v1, Lcom/samsung/android/app/music/advertise/AdFragmentMezzoFullBanner$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/advertise/AdFragmentMezzoFullBanner$2;-><init>(Lcom/samsung/android/app/music/advertise/AdFragmentMezzoFullBanner;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/advertise/AdBannerView;->setBannerListener(Lcom/samsung/android/app/music/advertise/IAdBannerListener;)V

    .line 126
    invoke-virtual {p0}, Lcom/samsung/android/app/music/advertise/AdFragmentMezzoFullBanner;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/advertise/AdPopupActivity;

    .line 127
    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/advertise/AdPopupActivity;->a(Lcom/samsung/android/app/music/advertise/AdPopupActivity$onKeyBackPressedListener;)V

    .line 129
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method
