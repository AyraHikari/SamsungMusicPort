.class public Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentMezzoVideo;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer$AdVideoViewListener;
.implements Lcom/samsung/android/app/music/advertise/KeyBackPressedListener;


# instance fields
.field a:Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer;

.field private b:Z

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentMezzoVideo;->a:Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer;

    return-void
.end method

.method public static a(Z)Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentMezzoVideo;
    .locals 3

    const-string v0, "Advert.AdFragmentMezzoVideo"

    const-string v1, "newInstance"

    .line 40
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    new-instance v0, Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentMezzoVideo;

    invoke-direct {v0}, Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentMezzoVideo;-><init>()V

    .line 43
    iput-boolean p0, v0, Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentMezzoVideo;->b:Z

    .line 45
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "EXTRA_AD_POPUP_TYPE"

    .line 46
    sget-object v2, Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;->VIDEO:Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;->getValue()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 47
    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentMezzoVideo;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private f()V
    .locals 2

    const-string v0, "Advert.AdFragmentMezzoVideo"

    const-string v1, "release"

    .line 85
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentMezzoVideo;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/advertise/AdVideo/AdVideoActivity;

    .line 88
    invoke-virtual {v0}, Lcom/samsung/android/app/music/advertise/AdVideo/AdVideoActivity;->a()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "Advert.AdFragmentMezzoVideo"

    const-string v1, "onKeyBackPressed"

    .line 129
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-boolean v0, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentMezzoVideo;->c:Z

    if-nez v0, :cond_0

    .line 132
    invoke-direct {p0}, Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentMezzoVideo;->f()V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 3

    const-string v0, "Advert.AdFragmentMezzoVideo"

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError - code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0}, Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentMezzoVideo;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    move-result-object p1

    const-string v0, "ads_video_error"

    const-string v1, "ads_cp"

    const-string v2, "mezzo"

    .line 155
    invoke-virtual {p1, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-direct {p0}, Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentMezzoVideo;->f()V

    return-void
.end method

.method public b()V
    .locals 2

    const-string v0, "Advert.AdFragmentMezzoVideo"

    const-string v1, "onPlayCompleted"

    .line 138
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-direct {p0}, Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentMezzoVideo;->f()V

    return-void
.end method

.method public b(Z)V
    .locals 2

    const-string v0, "Advert.AdFragmentMezzoVideo"

    const-string v1, "onBlock"

    .line 145
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iput-boolean p1, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentMezzoVideo;->c:Z

    return-void
.end method

.method public c()V
    .locals 3

    const-string v0, "Advert.AdFragmentMezzoVideo"

    const-string v1, "onChangeCp"

    .line 162
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-boolean v0, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentMezzoVideo;->b:Z

    if-nez v0, :cond_0

    .line 166
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentMezzoVideo;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;->INCROSS:Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/advertise/AdVideo/AdVideoActivity;->a(Landroid/content/Context;Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;Z)V

    .line 167
    invoke-virtual {p0}, Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentMezzoVideo;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 169
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 172
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentMezzoVideo;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b01e6

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 173
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 175
    invoke-direct {p0}, Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentMezzoVideo;->f()V

    :goto_0
    return-void
.end method

.method public d()V
    .locals 4

    const-string v0, "Advert.AdFragmentMezzoVideo"

    const-string v1, "onAdClick"

    .line 181
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentMezzoVideo;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    move-result-object v0

    const-string v1, "ads_click"

    const-string v2, "ads_type"

    const-string v3, "video"

    .line 183
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public e()V
    .locals 2

    const-string v0, "Advert.AdFragmentMezzoVideo"

    const-string v1, "onStarted"

    .line 188
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 190
    iput-boolean v0, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentMezzoVideo;->b:Z

    .line 191
    invoke-virtual {p0}, Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentMezzoVideo;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/advertise/AdVideo/AdVideoActivity;

    if-eqz v1, :cond_0

    .line 193
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/advertise/AdVideo/AdVideoActivity;->a(Z)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "Advert.AdFragmentMezzoVideo"

    const-string v1, "onCreate"

    .line 54
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentMezzoVideo;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/advertise/AdVideo/AdVideoActivity;

    .line 58
    invoke-virtual {p1, p0}, Lcom/samsung/android/app/music/advertise/AdVideo/AdVideoActivity;->a(Lcom/samsung/android/app/music/advertise/KeyBackPressedListener;)V

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

    const-string p3, "Advert.AdFragmentMezzoVideo"

    const-string v0, "onCreateView"

    .line 65
    invoke-static {p3, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const p3, 0x7f04000e

    const/4 v0, 0x0

    .line 67
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 117
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    const-string v0, "Advert.AdFragmentMezzoVideo"

    const-string v1, "onDestroy"

    .line 119
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentMezzoVideo;->a:Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentMezzoVideo;->a:Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer;->d()V

    const/4 v0, 0x0

    .line 123
    iput-object v0, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentMezzoVideo;->a:Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer;

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 104
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    const-string v0, "Advert.AdFragmentMezzoVideo"

    const-string v1, "onPause"

    .line 106
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 108
    iput-boolean v0, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentMezzoVideo;->d:Z

    .line 110
    iget-object v0, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentMezzoVideo;->a:Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentMezzoVideo;->a:Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer;->b()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 93
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    const-string v0, "Advert.AdFragmentMezzoVideo"

    const-string v1, "onResume"

    .line 95
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-boolean v0, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentMezzoVideo;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentMezzoVideo;->a:Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentMezzoVideo;->a:Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer;->c()V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 72
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const-string p1, "Advert.AdFragmentMezzoVideo"

    const-string p2, "onViewCreated"

    .line 74
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentMezzoVideo;->getView()Landroid/view/View;

    move-result-object p1

    const p2, 0x7f130134

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer;

    iput-object p1, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentMezzoVideo;->a:Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer;

    .line 77
    iget-object p1, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentMezzoVideo;->a:Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer;->a()V

    .line 78
    iget-object p1, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentMezzoVideo;->a:Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer;

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer;->a(Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer$AdVideoViewListener;)V

    const/4 p1, 0x1

    .line 80
    iput-boolean p1, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentMezzoVideo;->c:Z

    .line 81
    iput-boolean p1, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentMezzoVideo;->d:Z

    return-void
.end method
