.class public final Lcom/samsung/android/app/musiclibrary/ui/PermissionManager$activityLifeCycleCallbacks$1;
.super Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacksAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;-><init>(ILandroid/support/v4/app/FragmentActivity;Lcom/samsung/android/app/musiclibrary/ui/PermissionManager$OnPermissionResultListener;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 29
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager$activityLifeCycleCallbacks$1;->a:Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacksAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/support/v4/app/FragmentActivity;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 36
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager$activityLifeCycleCallbacks$1;->a:Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;

    const-string v0, "key_permission_requested"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->a(Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;Z)V

    return-void

    :cond_0
    return-void
.end method

.method public onActivityDestroyed(Landroid/support/v4/app/FragmentActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager$activityLifeCycleCallbacks$1;->a:Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->d(Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;)Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    instance-of v0, p1, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleObservable;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleObservable;

    if-eqz p1, :cond_1

    .line 45
    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;

    .line 44
    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleObservable;->removeActivityLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V

    :cond_1
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/support/v4/app/FragmentActivity;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 31
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string p1, "key_permission_requested"

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager$activityLifeCycleCallbacks$1;->a:Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->a(Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;)Z

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onActivityStarted(Landroid/support/v4/app/FragmentActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager$activityLifeCycleCallbacks$1;->a:Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->a(Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager$activityLifeCycleCallbacks$1;->a:Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->b(Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager$activityLifeCycleCallbacks$1;->a:Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->c(Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;)V

    :cond_0
    return-void
.end method
