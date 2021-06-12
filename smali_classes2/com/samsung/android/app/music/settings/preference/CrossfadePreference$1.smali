.class Lcom/samsung/android/app/music/settings/preference/CrossfadePreference$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/settings/preference/CrossfadePreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Lcom/samsung/android/app/music/settings/preference/CrossfadePreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/settings/preference/CrossfadePreference;Landroid/widget/TextView;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/samsung/android/app/music/settings/preference/CrossfadePreference$1;->b:Lcom/samsung/android/app/music/settings/preference/CrossfadePreference;

    iput-object p2, p0, Lcom/samsung/android/app/music/settings/preference/CrossfadePreference$1;->a:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    .line 86
    iget-object p3, p0, Lcom/samsung/android/app/music/settings/preference/CrossfadePreference$1;->b:Lcom/samsung/android/app/music/settings/preference/CrossfadePreference;

    invoke-static {p3, p2}, Lcom/samsung/android/app/music/settings/preference/CrossfadePreference;->a(Lcom/samsung/android/app/music/settings/preference/CrossfadePreference;I)I

    move-result p2

    .line 87
    iget-object p3, p0, Lcom/samsung/android/app/music/settings/preference/CrossfadePreference$1;->b:Lcom/samsung/android/app/music/settings/preference/CrossfadePreference;

    invoke-virtual {p3}, Lcom/samsung/android/app/music/settings/preference/CrossfadePreference;->isEnabled()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 88
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object p3

    const-string v0, "cross_fade"

    invoke-virtual {p3, v0, p2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 90
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object p3

    const-string v0, "cross_fade"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->putInt(Ljava/lang/String;I)V

    .line 92
    :goto_0
    iget-object p3, p0, Lcom/samsung/android/app/music/settings/preference/CrossfadePreference$1;->b:Lcom/samsung/android/app/music/settings/preference/CrossfadePreference;

    iget-object v0, p0, Lcom/samsung/android/app/music/settings/preference/CrossfadePreference$1;->a:Landroid/widget/TextView;

    invoke-static {p3, p1, v0, p2}, Lcom/samsung/android/app/music/settings/preference/CrossfadePreference;->a(Lcom/samsung/android/app/music/settings/preference/CrossfadePreference;Landroid/view/View;Landroid/widget/TextView;I)V

    .line 94
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/preference/CrossfadePreference$1;->b:Lcom/samsung/android/app/music/settings/preference/CrossfadePreference;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/settings/preference/CrossfadePreference;->b(Lcom/samsung/android/app/music/settings/preference/CrossfadePreference;I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 97
    iget-object p2, p0, Lcom/samsung/android/app/music/settings/preference/CrossfadePreference$1;->b:Lcom/samsung/android/app/music/settings/preference/CrossfadePreference;

    invoke-virtual {p2}, Lcom/samsung/android/app/music/settings/preference/CrossfadePreference;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "settings_CrossFade"

    invoke-static {p2, p3, p1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/preference/CrossfadePreference$1;->b:Lcom/samsung/android/app/music/settings/preference/CrossfadePreference;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/settings/preference/CrossfadePreference;->c(Lcom/samsung/android/app/music/settings/preference/CrossfadePreference;I)I

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .line 109
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/app/music/settings/preference/CrossfadePreference$1;->b:Lcom/samsung/android/app/music/settings/preference/CrossfadePreference;

    invoke-static {v0}, Lcom/samsung/android/app/music/settings/preference/CrossfadePreference;->a(Lcom/samsung/android/app/music/settings/preference/CrossfadePreference;)I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 110
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/preference/CrossfadePreference$1;->b:Lcom/samsung/android/app/music/settings/preference/CrossfadePreference;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/settings/preference/CrossfadePreference;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "CFCH"

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 111
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p1

    const-string v0, "401"

    const-string v1, "5216"

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
