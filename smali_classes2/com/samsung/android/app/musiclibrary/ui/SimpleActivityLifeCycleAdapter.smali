.class public Lcom/samsung/android/app/musiclibrary/ui/SimpleActivityLifeCycleAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;


# static fields
.field private static final a:Ljava/lang/String; = "SimpleActivityLifeCycleAdapter"


# instance fields
.field private b:Z

.field private c:Z

.field private d:Landroid/os/Bundle;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public varargs constructor <init>([Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;)V
    .locals 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/SimpleActivityLifeCycleAdapter;->e:Ljava/util/List;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/SimpleActivityLifeCycleAdapter;->f:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 30
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 31
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/musiclibrary/ui/SimpleActivityLifeCycleAdapter;->a(Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;)V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/SimpleActivityLifeCycleAdapter;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/SimpleActivityLifeCycleAdapter;->a:Ljava/lang/String;

    const-string v0, "registerMediaChangeObserver but it was already registered"

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/SimpleActivityLifeCycleAdapter;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/SimpleActivityLifeCycleAdapter;->b:Z

    if-nez v0, :cond_2

    .line 45
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/SimpleActivityLifeCycleAdapter;->c:Z

    if-nez v0, :cond_1

    .line 48
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/SimpleActivityLifeCycleAdapter;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/SimpleActivityLifeCycleAdapter;->d:Landroid/os/Bundle;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;->onCreateCalled(Landroid/os/Bundle;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onActivityCreated(Landroid/support/v4/app/FragmentActivity;Landroid/os/Bundle;)V
    .locals 1

    const/4 p1, 0x1

    .line 60
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/SimpleActivityLifeCycleAdapter;->c:Z

    .line 61
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/SimpleActivityLifeCycleAdapter;->d:Landroid/os/Bundle;

    .line 62
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/SimpleActivityLifeCycleAdapter;->f:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;

    .line 63
    invoke-interface {v0, p2}, Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;->onCreateCalled(Landroid/os/Bundle;)V

    goto :goto_0

    .line 65
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/SimpleActivityLifeCycleAdapter;->f:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method public onActivityDestroyed(Landroid/support/v4/app/FragmentActivity;)V
    .locals 1

    .line 105
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/SimpleActivityLifeCycleAdapter;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;

    .line 106
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;->onDestroyCalled()V

    goto :goto_0

    .line 108
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/SimpleActivityLifeCycleAdapter;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method public onActivityPaused(Landroid/support/v4/app/FragmentActivity;)V
    .locals 1

    .line 85
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/SimpleActivityLifeCycleAdapter;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;

    .line 86
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;->onPauseCalled()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onActivityResumed(Landroid/support/v4/app/FragmentActivity;)V
    .locals 1

    .line 78
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/SimpleActivityLifeCycleAdapter;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;

    .line 79
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;->onResumeCalled()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/support/v4/app/FragmentActivity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/support/v4/app/FragmentActivity;)V
    .locals 1

    const/4 p1, 0x1

    .line 70
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/SimpleActivityLifeCycleAdapter;->b:Z

    .line 71
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/SimpleActivityLifeCycleAdapter;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;

    .line 72
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;->onStartCalled()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onActivityStopped(Landroid/support/v4/app/FragmentActivity;)V
    .locals 1

    .line 92
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/SimpleActivityLifeCycleAdapter;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;

    .line 93
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;->onStopCalled()V

    goto :goto_0

    :cond_0
    return-void
.end method
