.class public final Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity;
.super Lcom/samsung/android/app/music/activity/h;
.source "DownloadAudioQualityActivity.kt"


# instance fields
.field public a:Landroid/view/View;

.field public final b:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/h;-><init>()V

    .line 2
    new-instance v0, Lcom/samsung/android/app/music/settings/d;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/settings/d;-><init>(Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity;->b:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static synthetic y(Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity;->z(Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity;Landroid/view/View;)V

    return-void
.end method

.method public static final z(Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity;Landroid/view/View;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 p1, 0x2

    .line 2
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity;->F(I)V

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity;->F(I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0b04a7
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final A()I
    .locals 1

    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/f;->h:Lcom/samsung/android/app/musiclibrary/core/settings/provider/f$a;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/f$a;->a()Lcom/samsung/android/app/musiclibrary/core/settings/provider/f;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/settings/r;->a(Lcom/samsung/android/app/musiclibrary/core/settings/provider/c;)I

    move-result v0

    return v0
.end method

.method public final B(Landroid/view/View;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const v0, 0x7f0b04a7

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity;->C(Landroid/view/View;I)V

    const v0, 0x7f0b04a8

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity;->C(Landroid/view/View;I)V

    const v0, 0x7f0b04a9

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0b04ac

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final C(Landroid/view/View;I)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x10100fb

    const/4 v3, 0x0

    aput v2, v1, v3

    const v2, 0x1010074

    .line 1
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/Activity;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 4
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b03b7

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 6
    invoke-static {p2}, Lcom/samsung/android/app/music/model/AudioQuality;->getDownloadAudioQualityDetailResId(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public final E(I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity;->A()I

    move-result v0

    if-eq v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final F(I)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity;->E(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/f;->h:Lcom/samsung/android/app/musiclibrary/core/settings/provider/f$a;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/f$a;->a()Lcom/samsung/android/app/musiclibrary/core/settings/provider/f;

    move-result-object v0

    const-string v1, "milk_download_quality"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/f;->g(Ljava/lang/String;I)V

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity;->I(I)V

    .line 4
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity;->J(I)V

    .line 5
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity;->G(I)V

    return-void
.end method

.method public final G(I)V
    .locals 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 1
    sget-object p1, Lcom/samsung/android/app/music/analytics/d;->d:Lcom/samsung/android/app/music/analytics/d;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/analytics/d;->a()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 2
    :cond_0
    sget-object p1, Lcom/samsung/android/app/music/analytics/d;->c:Lcom/samsung/android/app/music/analytics/d;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/analytics/d;->a()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_1
    sget-object p1, Lcom/samsung/android/app/music/analytics/d;->d:Lcom/samsung/android/app/music/analytics/d;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/analytics/d;->a()Ljava/lang/String;

    move-result-object p1

    .line 4
    :goto_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/b;->c()Lcom/samsung/android/app/musiclibrary/ui/analytics/b;

    move-result-object v0

    const-string v1, "423"

    const-string v2, "5261"

    .line 5
    invoke-virtual {v0, v1, v2, p1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/b;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "settings_downloadingAudioQuality"

    .line 7
    invoke-static {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/c;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final I(I)V
    .locals 4

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "com.samsung.radio.settings.DOWNLOAD_AUDIO_QUALITY_NEXT_HIGHEST_AVAILABLE_IS_DISPLAYED"

    const/4 v1, 0x0

    .line 2
    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/music/preferences/b;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f13040a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 5
    invoke-static {p1, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 v1, 0x1

    .line 8
    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/music/preferences/b;->g(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public final J(I)V
    .locals 5

    const v0, 0x7f0b04a7

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b04b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2
    check-cast v0, Landroid/widget/RadioButton;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    const v0, 0x7f0b04a8

    .line 3
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 4
    check-cast v0, Landroid/widget/RadioButton;

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/activity/h;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0e0029

    .line 2
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/activity/h;->setContentView(I)V

    .line 3
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/appbar/a;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/appbar/a;-><init>(Landroidx/appcompat/app/f;)V

    const v1, 0x7f0e0083

    .line 4
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/appbar/a;->g(I)V

    const v1, 0x7f130104

    .line 5
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.download_audio_quality)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/appbar/a;->h(Ljava/lang/CharSequence;)V

    .line 6
    new-instance v0, Lcom/samsung/android/app/music/settings/e;

    const v1, 0x7f0b01f8

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/f;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "findViewById(R.id.extended_content)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/settings/e;-><init>(Lcom/samsung/android/app/musiclibrary/ui/i;Landroid/view/View;)V

    const v0, 0x7f0b0189

    .line 7
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity;->a:Landroid/view/View;

    .line 8
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity;->B(Landroid/view/View;)V

    .line 9
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity;->A()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity;->J(I)V

    if-nez p1, :cond_0

    .line 10
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/b;->c()Lcom/samsung/android/app/musiclibrary/ui/analytics/b;

    move-result-object p1

    const-string v0, "423"

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/b;->k(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "savedInstanceState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity;->A()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity;->J(I)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/samsung/android/app/music/activity/h;->onResume()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/a;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/a;

    move-result-object v0

    const-string v1, "setting_download_audio_quality"

    .line 3
    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/a;->g(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
