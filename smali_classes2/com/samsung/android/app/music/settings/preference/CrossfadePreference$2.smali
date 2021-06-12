.class Lcom/samsung/android/app/music/settings/preference/CrossfadePreference$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/settings/preference/CrossfadePreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/settings/preference/CrossfadePreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/settings/preference/CrossfadePreference;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/samsung/android/app/music/settings/preference/CrossfadePreference$2;->a:Lcom/samsung/android/app/music/settings/preference/CrossfadePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 121
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/preference/CrossfadePreference$2;->a:Lcom/samsung/android/app/music/settings/preference/CrossfadePreference;

    iget-object p2, p0, Lcom/samsung/android/app/music/settings/preference/CrossfadePreference$2;->a:Lcom/samsung/android/app/music/settings/preference/CrossfadePreference;

    invoke-static {p2}, Lcom/samsung/android/app/music/settings/preference/CrossfadePreference;->b(Lcom/samsung/android/app/music/settings/preference/CrossfadePreference;)Landroid/widget/SeekBar;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/SeekBar;->getProgress()I

    move-result p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/settings/preference/CrossfadePreference;->c(Lcom/samsung/android/app/music/settings/preference/CrossfadePreference;I)I

    goto :goto_0

    .line 123
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/preference/CrossfadePreference$2;->a:Lcom/samsung/android/app/music/settings/preference/CrossfadePreference;

    invoke-static {p1}, Lcom/samsung/android/app/music/settings/preference/CrossfadePreference;->b(Lcom/samsung/android/app/music/settings/preference/CrossfadePreference;)Landroid/widget/SeekBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    iget-object p2, p0, Lcom/samsung/android/app/music/settings/preference/CrossfadePreference$2;->a:Lcom/samsung/android/app/music/settings/preference/CrossfadePreference;

    invoke-static {p2}, Lcom/samsung/android/app/music/settings/preference/CrossfadePreference;->a(Lcom/samsung/android/app/music/settings/preference/CrossfadePreference;)I

    move-result p2

    if-eq p1, p2, :cond_1

    .line 124
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/preference/CrossfadePreference$2;->a:Lcom/samsung/android/app/music/settings/preference/CrossfadePreference;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/settings/preference/CrossfadePreference;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "CFCH"

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
