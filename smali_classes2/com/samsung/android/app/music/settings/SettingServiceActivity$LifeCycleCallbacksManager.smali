.class Lcom/samsung/android/app/music/settings/SettingServiceActivity$LifeCycleCallbacksManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/settings/SettingServiceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LifeCycleCallbacksManager"
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Landroid/os/Bundle;

.field private final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/settings/SettingServiceActivity$LifeCycleCallbacksManager;->d:Ljava/util/Set;

    .line 203
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/settings/SettingServiceActivity$LifeCycleCallbacksManager;->e:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/settings/SettingServiceActivity$1;)V
    .locals 0

    .line 192
    invoke-direct {p0}, Lcom/samsung/android/app/music/settings/SettingServiceActivity$LifeCycleCallbacksManager;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/settings/SettingServiceActivity;Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingServiceActivity$LifeCycleCallbacksManager;->d:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 208
    iget-boolean v0, p0, Lcom/samsung/android/app/music/settings/SettingServiceActivity$LifeCycleCallbacksManager;->a:Z

    if-nez v0, :cond_1

    .line 210
    iget-boolean v0, p0, Lcom/samsung/android/app/music/settings/SettingServiceActivity$LifeCycleCallbacksManager;->b:Z

    if-nez v0, :cond_0

    .line 213
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/SettingServiceActivity$LifeCycleCallbacksManager;->e:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingServiceActivity$LifeCycleCallbacksManager;->c:Landroid/os/Bundle;

    invoke-interface {p2, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;->onActivityCreated(Landroid/support/v4/app/FragmentActivity;Landroid/os/Bundle;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingServiceActivity$LifeCycleCallbacksManager;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onActivityCreated(Landroid/support/v4/app/FragmentActivity;Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x1

    .line 228
    iput-boolean v0, p0, Lcom/samsung/android/app/music/settings/SettingServiceActivity$LifeCycleCallbacksManager;->b:Z

    .line 229
    iput-object p2, p0, Lcom/samsung/android/app/music/settings/SettingServiceActivity$LifeCycleCallbacksManager;->c:Landroid/os/Bundle;

    .line 230
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingServiceActivity$LifeCycleCallbacksManager;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;

    .line 231
    invoke-interface {v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;->onActivityCreated(Landroid/support/v4/app/FragmentActivity;Landroid/os/Bundle;)V

    goto :goto_0

    .line 233
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/SettingServiceActivity$LifeCycleCallbacksManager;->e:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public onActivityDestroyed(Landroid/support/v4/app/FragmentActivity;)V
    .locals 2

    .line 274
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingServiceActivity$LifeCycleCallbacksManager;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;

    .line 275
    invoke-interface {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;->onActivityDestroyed(Landroid/support/v4/app/FragmentActivity;)V

    goto :goto_0

    .line 277
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/SettingServiceActivity$LifeCycleCallbacksManager;->d:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public onActivityPaused(Landroid/support/v4/app/FragmentActivity;)V
    .locals 2

    .line 253
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingServiceActivity$LifeCycleCallbacksManager;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;

    .line 254
    invoke-interface {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;->onActivityPaused(Landroid/support/v4/app/FragmentActivity;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onActivityResumed(Landroid/support/v4/app/FragmentActivity;)V
    .locals 2

    .line 246
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingServiceActivity$LifeCycleCallbacksManager;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;

    .line 247
    invoke-interface {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;->onActivityResumed(Landroid/support/v4/app/FragmentActivity;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/support/v4/app/FragmentActivity;Landroid/os/Bundle;)V
    .locals 2

    .line 267
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingServiceActivity$LifeCycleCallbacksManager;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;

    .line 268
    invoke-interface {v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;->onActivitySaveInstanceState(Landroid/support/v4/app/FragmentActivity;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onActivityStarted(Landroid/support/v4/app/FragmentActivity;)V
    .locals 2

    const/4 v0, 0x1

    .line 238
    iput-boolean v0, p0, Lcom/samsung/android/app/music/settings/SettingServiceActivity$LifeCycleCallbacksManager;->a:Z

    .line 239
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingServiceActivity$LifeCycleCallbacksManager;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;

    .line 240
    invoke-interface {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;->onActivityStarted(Landroid/support/v4/app/FragmentActivity;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onActivityStopped(Landroid/support/v4/app/FragmentActivity;)V
    .locals 2

    .line 260
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingServiceActivity$LifeCycleCallbacksManager;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;

    .line 261
    invoke-interface {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;->onActivityStopped(Landroid/support/v4/app/FragmentActivity;)V

    goto :goto_0

    :cond_0
    return-void
.end method
