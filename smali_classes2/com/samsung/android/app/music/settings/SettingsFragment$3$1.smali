.class Lcom/samsung/android/app/music/settings/SettingsFragment$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/settings/SettingsFragment$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/settings/SettingsFragment$3;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/settings/SettingsFragment$3;)V
    .locals 0

    .line 1180
    iput-object p1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment$3$1;->a:Lcom/samsung/android/app/music/settings/SettingsFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1183
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsFragment$3$1;->a:Lcom/samsung/android/app/music/settings/SettingsFragment$3;

    iget-object v0, v0, Lcom/samsung/android/app/music/settings/SettingsFragment$3;->b:Lcom/samsung/android/app/music/settings/SettingsFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1184
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1187
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsFragment$3$1;->a:Lcom/samsung/android/app/music/settings/SettingsFragment$3;

    iget-wide v0, v0, Lcom/samsung/android/app/music/settings/SettingsFragment$3;->a:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 1188
    iget-object v2, p0, Lcom/samsung/android/app/music/settings/SettingsFragment$3$1;->a:Lcom/samsung/android/app/music/settings/SettingsFragment$3;

    iget-object v2, v2, Lcom/samsung/android/app/music/settings/SettingsFragment$3;->b:Lcom/samsung/android/app/music/settings/SettingsFragment;

    iget-object v3, p0, Lcom/samsung/android/app/music/settings/SettingsFragment$3$1;->a:Lcom/samsung/android/app/music/settings/SettingsFragment$3;

    iget-object v3, v3, Lcom/samsung/android/app/music/settings/SettingsFragment$3;->b:Lcom/samsung/android/app/music/settings/SettingsFragment;

    invoke-static {v3}, Lcom/samsung/android/app/music/settings/SettingsFragment;->b(Lcom/samsung/android/app/music/settings/SettingsFragment;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/settings/SettingsFragment$3$1;->a:Lcom/samsung/android/app/music/settings/SettingsFragment$3;

    iget-object v4, v4, Lcom/samsung/android/app/music/settings/SettingsFragment$3;->b:Lcom/samsung/android/app/music/settings/SettingsFragment;

    .line 1189
    invoke-static {v4, v0, v1}, Lcom/samsung/android/app/music/settings/SettingsFragment;->a(Lcom/samsung/android/app/music/settings/SettingsFragment;J)Ljava/lang/String;

    move-result-object v0

    .line 1188
    invoke-static {v2, v3, v0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->a(Lcom/samsung/android/app/music/settings/SettingsFragment;Landroid/support/v7/preference/Preference;Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method
