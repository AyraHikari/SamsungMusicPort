.class public final Lcom/samsung/android/app/music/activity/LegalImpl$activityLifeCycleCallbacks$1;
.super Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacksAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/activity/LegalImpl;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/activity/LegalImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/activity/LegalImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 120
    iput-object p1, p0, Lcom/samsung/android/app/music/activity/LegalImpl$activityLifeCycleCallbacks$1;->a:Lcom/samsung/android/app/music/activity/LegalImpl;

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacksAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/support/v4/app/FragmentActivity;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 124
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/LegalImpl$activityLifeCycleCallbacks$1;->a:Lcom/samsung/android/app/music/activity/LegalImpl;

    const-string v0, "key_is_check_box_status"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    if-eqz p2, :cond_0

    check-cast p2, Ljava/util/HashMap;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/activity/LegalImpl;->a(Lcom/samsung/android/app/music/activity/LegalImpl;Ljava/util/HashMap;)V

    return-void

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type kotlin.collections.HashMap<kotlin.String, kotlin.Boolean> /* = java.util.HashMap<kotlin.String, kotlin.Boolean> */"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method

.method public onActivityDestroyed(Landroid/support/v4/app/FragmentActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/LegalImpl$activityLifeCycleCallbacks$1;->a:Lcom/samsung/android/app/music/activity/LegalImpl;

    invoke-static {p1}, Lcom/samsung/android/app/music/activity/LegalImpl;->a(Lcom/samsung/android/app/music/activity/LegalImpl;)Landroid/app/Activity;

    move-result-object p1

    instance-of v0, p1, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleObservable;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleObservable;

    if-eqz p1, :cond_1

    .line 133
    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;

    .line 132
    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleObservable;->removeActivityLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V

    :cond_1
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/support/v4/app/FragmentActivity;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 128
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string p1, "key_is_check_box_status"

    iget-object v0, p0, Lcom/samsung/android/app/music/activity/LegalImpl$activityLifeCycleCallbacks$1;->a:Lcom/samsung/android/app/music/activity/LegalImpl;

    invoke-static {v0}, Lcom/samsung/android/app/music/activity/LegalImpl;->b(Lcom/samsung/android/app/music/activity/LegalImpl;)Ljava/util/HashMap;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method
