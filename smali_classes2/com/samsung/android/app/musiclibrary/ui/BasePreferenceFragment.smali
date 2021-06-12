.class public abstract Lcom/samsung/android/app/musiclibrary/ui/BasePreferenceFragment;
.super Landroid/support/v7/preference/PreferenceFragmentCompat;
.source "SourceFile"


# instance fields
.field private a:Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Landroid/support/v7/preference/PreferenceFragmentCompat;-><init>()V

    return-void
.end method


# virtual methods
.method protected final e()Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 52
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyVersion;->which()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 54
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BasePreferenceFragment;->a:Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;

    if-nez v0, :cond_2

    .line 55
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BasePreferenceFragment;->a:Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;

    .line 58
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BasePreferenceFragment;->a:Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BasePreferenceFragment;->a:Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BasePreferenceFragment;->a:Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->e()V

    .line 35
    :cond_0
    invoke-super {p0}, Landroid/support/v7/preference/PreferenceFragmentCompat;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BasePreferenceFragment;->a:Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BasePreferenceFragment;->a:Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->d()V

    .line 27
    :cond_0
    invoke-super {p0}, Landroid/support/v7/preference/PreferenceFragmentCompat;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 16
    invoke-super {p0}, Landroid/support/v7/preference/PreferenceFragmentCompat;->onResume()V

    .line 17
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BasePreferenceFragment;->a:Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/BasePreferenceFragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BasePreferenceFragment;->a:Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->c()V

    :cond_0
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BasePreferenceFragment;->a:Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/BasePreferenceFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BasePreferenceFragment;->a:Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->c()V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 43
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/BasePreferenceFragment;->isResumed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BasePreferenceFragment;->a:Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->d()V

    .line 47
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v7/preference/PreferenceFragmentCompat;->setUserVisibleHint(Z)V

    return-void
.end method
