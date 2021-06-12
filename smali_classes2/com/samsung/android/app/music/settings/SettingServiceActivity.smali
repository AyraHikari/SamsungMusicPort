.class public Lcom/samsung/android/app/music/settings/SettingServiceActivity;
.super Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;
.implements Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleObservable;
.implements Lcom/samsung/android/app/musiclibrary/ui/WindowFocusObservable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/settings/SettingServiceActivity$WindowFocusObservers;,
        Lcom/samsung/android/app/music/settings/SettingServiceActivity$LifeCycleCallbacksManager;
    }
.end annotation


# instance fields
.field protected a:Lcom/samsung/android/app/music/milk/MilkDialogReceiver;

.field private b:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter<",
            "Lcom/samsung/android/app/music/service/PlayerService;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/samsung/android/app/music/settings/SettingServiceActivity$LifeCycleCallbacksManager;

.field private final d:Lcom/samsung/android/app/music/settings/SettingServiceActivity$WindowFocusObservers;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;-><init>()V

    .line 38
    new-instance v0, Lcom/samsung/android/app/music/settings/SettingServiceActivity$LifeCycleCallbacksManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/settings/SettingServiceActivity$LifeCycleCallbacksManager;-><init>(Lcom/samsung/android/app/music/settings/SettingServiceActivity$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/settings/SettingServiceActivity;->c:Lcom/samsung/android/app/music/settings/SettingServiceActivity$LifeCycleCallbacksManager;

    .line 40
    new-instance v0, Lcom/samsung/android/app/music/settings/SettingServiceActivity$WindowFocusObservers;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/settings/SettingServiceActivity$WindowFocusObservers;-><init>(Lcom/samsung/android/app/music/settings/SettingServiceActivity$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/settings/SettingServiceActivity;->d:Lcom/samsung/android/app/music/settings/SettingServiceActivity$WindowFocusObservers;

    return-void
.end method


# virtual methods
.method public addActivityLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingServiceActivity;->c:Lcom/samsung/android/app/music/settings/SettingServiceActivity$LifeCycleCallbacksManager;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/app/music/settings/SettingServiceActivity$LifeCycleCallbacksManager;->a(Lcom/samsung/android/app/music/settings/SettingServiceActivity;Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V

    return-void
.end method

.method public addOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingServiceActivity;->d:Lcom/samsung/android/app/music/settings/SettingServiceActivity$WindowFocusObservers;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/settings/SettingServiceActivity$WindowFocusObservers;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingServiceActivity;->b:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingServiceActivity;->b:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMusicExtras()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingServiceActivity;->b:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingServiceActivity;->b:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->getMusicExtras()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMusicQueue()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingServiceActivity;->b:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingServiceActivity;->b:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->getMusicQueue()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingServiceActivity;->b:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingServiceActivity;->b:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSubObservable()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingServiceActivity;->b:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->getSubObservable()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 46
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "SettingServiceActivity"

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "onCreate()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;

    const-class v1, Lcom/samsung/android/app/music/service/PlayerService;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;-><init>(Landroid/app/Activity;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/settings/SettingServiceActivity;->b:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;

    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingServiceActivity;->b:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/settings/SettingServiceActivity;->addActivityLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V

    .line 54
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingServiceActivity;->c:Lcom/samsung/android/app/music/settings/SettingServiceActivity$LifeCycleCallbacksManager;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/app/music/settings/SettingServiceActivity$LifeCycleCallbacksManager;->onActivityCreated(Landroid/support/v4/app/FragmentActivity;Landroid/os/Bundle;)V

    .line 56
    sget-boolean p1, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz p1, :cond_0

    .line 57
    new-instance p1, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/settings/SettingServiceActivity;->a:Lcom/samsung/android/app/music/milk/MilkDialogReceiver;

    .line 58
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/SettingServiceActivity;->a:Lcom/samsung/android/app/music/milk/MilkDialogReceiver;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->c()Landroid/content/BroadcastReceiver;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingServiceActivity;->a:Lcom/samsung/android/app/music/milk/MilkDialogReceiver;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->d()Landroid/content/IntentFilter;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/music/settings/SettingServiceActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    const-string v0, "SettingServiceActivity"

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "onDestroy()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingServiceActivity;->c:Lcom/samsung/android/app/music/settings/SettingServiceActivity$LifeCycleCallbacksManager;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/settings/SettingServiceActivity$LifeCycleCallbacksManager;->onActivityDestroyed(Landroid/support/v4/app/FragmentActivity;)V

    .line 95
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingServiceActivity;->d:Lcom/samsung/android/app/music/settings/SettingServiceActivity$WindowFocusObservers;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/settings/SettingServiceActivity$WindowFocusObservers;->a()V

    .line 96
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingServiceActivity;->a:Lcom/samsung/android/app/music/milk/MilkDialogReceiver;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->c()Landroid/content/BroadcastReceiver;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/settings/SettingServiceActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 99
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 3

    const-string v0, "SettingServiceActivity"

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "onPause()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingServiceActivity;->c:Lcom/samsung/android/app/music/settings/SettingServiceActivity$LifeCycleCallbacksManager;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/settings/SettingServiceActivity$LifeCycleCallbacksManager;->onActivityPaused(Landroid/support/v4/app/FragmentActivity;)V

    .line 80
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 71
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->onResume()V

    const-string v0, "SettingServiceActivity"

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "onResume()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingServiceActivity;->c:Lcom/samsung/android/app/music/settings/SettingServiceActivity$LifeCycleCallbacksManager;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/settings/SettingServiceActivity$LifeCycleCallbacksManager;->onActivityResumed(Landroid/support/v4/app/FragmentActivity;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingServiceActivity;->c:Lcom/samsung/android/app/music/settings/SettingServiceActivity$LifeCycleCallbacksManager;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/app/music/settings/SettingServiceActivity$LifeCycleCallbacksManager;->onActivitySaveInstanceState(Landroid/support/v4/app/FragmentActivity;Landroid/os/Bundle;)V

    .line 105
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 3

    .line 64
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->onStart()V

    const-string v0, "SettingServiceActivity"

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "onStart()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingServiceActivity;->c:Lcom/samsung/android/app/music/settings/SettingServiceActivity$LifeCycleCallbacksManager;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/settings/SettingServiceActivity$LifeCycleCallbacksManager;->onActivityStarted(Landroid/support/v4/app/FragmentActivity;)V

    return-void
.end method

.method protected onStop()V
    .locals 3

    const-string v0, "SettingServiceActivity"

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " onStop()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingServiceActivity;->c:Lcom/samsung/android/app/music/settings/SettingServiceActivity$LifeCycleCallbacksManager;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/settings/SettingServiceActivity$LifeCycleCallbacksManager;->onActivityStopped(Landroid/support/v4/app/FragmentActivity;)V

    .line 87
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->onStop()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 178
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->onWindowFocusChanged(Z)V

    .line 179
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingServiceActivity;->d:Lcom/samsung/android/app/music/settings/SettingServiceActivity$WindowFocusObservers;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/settings/SettingServiceActivity$WindowFocusObservers;->a(Z)V

    return-void
.end method

.method public registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingServiceActivity;->b:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingServiceActivity;->b:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    :cond_0
    return-void
.end method

.method public removeActivityLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingServiceActivity;->c:Lcom/samsung/android/app/music/settings/SettingServiceActivity$LifeCycleCallbacksManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/settings/SettingServiceActivity$LifeCycleCallbacksManager;->a(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V

    return-void
.end method

.method public removeOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingServiceActivity;->d:Lcom/samsung/android/app/music/settings/SettingServiceActivity$WindowFocusObservers;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/settings/SettingServiceActivity$WindowFocusObservers;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public unregisterMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingServiceActivity;->b:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingServiceActivity;->b:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->unregisterMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    :cond_0
    return-void
.end method
