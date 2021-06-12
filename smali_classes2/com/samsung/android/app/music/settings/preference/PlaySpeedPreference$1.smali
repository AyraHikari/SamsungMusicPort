.class Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;Landroid/widget/TextView;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference$1;->b:Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;

    iput-object p2, p0, Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference$1;->a:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .line 79
    iget-object p3, p0, Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference$1;->b:Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;

    invoke-static {p3, p2}, Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;->a(Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;I)F

    move-result p2

    .line 80
    iget-object p3, p0, Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference$1;->b:Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;

    invoke-virtual {p3}, Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;->isEnabled()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 81
    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->setPlaySpeed(F)V

    .line 82
    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->saveSettingsPlaySpeed(F)V

    .line 84
    :cond_0
    iget-object p3, p0, Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference$1;->b:Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;

    iget-object v0, p0, Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference$1;->a:Landroid/widget/TextView;

    invoke-static {p3, p1, v0, p2}, Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;->a(Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;Landroid/view/View;Landroid/widget/TextView;F)V

    .line 86
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference$1;->b:Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;->a(Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;F)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 89
    iget-object p2, p0, Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference$1;->b:Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;

    .line 90
    invoke-virtual {p2}, Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "settings_PlaySpeed"

    invoke-static {p2, p3, p1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference$1;->b:Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;->b(Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;I)I

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .line 101
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference$1;->b:Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;

    invoke-static {v0}, Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;->a(Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;)I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 102
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference$1;->b:Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "PSCH"

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 103
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p1

    const-string v0, "401"

    const-string v1, "5004"

    .line 104
    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
