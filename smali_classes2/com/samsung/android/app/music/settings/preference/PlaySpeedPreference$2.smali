.class Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference$2;->a:Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 112
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference$2;->a:Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;

    iget-object p2, p0, Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference$2;->a:Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;

    invoke-static {p2}, Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;->b(Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;)Landroid/widget/SeekBar;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/SeekBar;->getProgress()I

    move-result p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;->b(Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;I)I

    goto :goto_0

    .line 114
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference$2;->a:Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;

    invoke-static {p1}, Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;->b(Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;)Landroid/widget/SeekBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    iget-object p2, p0, Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference$2;->a:Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;

    invoke-static {p2}, Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;->a(Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;)I

    move-result p2

    if-eq p1, p2, :cond_1

    .line 115
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference$2;->a:Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "PSCH"

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
