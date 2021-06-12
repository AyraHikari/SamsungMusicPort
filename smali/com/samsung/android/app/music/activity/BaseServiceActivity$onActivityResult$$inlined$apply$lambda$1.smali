.class public final Lcom/samsung/android/app/music/activity/BaseServiceActivity$onActivityResult$$inlined$apply$lambda$1;
.super Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacksAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

.field final synthetic b:Landroid/os/Bundle;

.field final synthetic c:Lcom/samsung/android/app/music/activity/BaseServiceActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;Landroid/os/Bundle;Lcom/samsung/android/app/music/activity/BaseServiceActivity;)V
    .locals 0

    iput-object p2, p0, Lcom/samsung/android/app/music/activity/BaseServiceActivity$onActivityResult$$inlined$apply$lambda$1;->b:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/samsung/android/app/music/activity/BaseServiceActivity$onActivityResult$$inlined$apply$lambda$1;->c:Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    iput-object p1, p0, Lcom/samsung/android/app/music/activity/BaseServiceActivity$onActivityResult$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    .line 650
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacksAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResumed(Landroid/support/v4/app/FragmentActivity;)V
    .locals 4

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 664
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/BaseServiceActivity$onActivityResult$$inlined$apply$lambda$1;->b:Landroid/os/Bundle;

    const-string v0, "list_items"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object p1

    .line 665
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/BaseServiceActivity$onActivityResult$$inlined$apply$lambda$1;->b:Landroid/os/Bundle;

    const-string v1, "is_folder"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 666
    iget-object v1, p0, Lcom/samsung/android/app/music/activity/BaseServiceActivity$onActivityResult$$inlined$apply$lambda$1;->b:Landroid/os/Bundle;

    const-string v2, "path"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 668
    iget-object v2, p0, Lcom/samsung/android/app/music/activity/BaseServiceActivity$onActivityResult$$inlined$apply$lambda$1;->c:Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    check-cast v2, Landroid/support/v4/app/FragmentActivity;

    const/4 v3, 0x0

    .line 667
    invoke-static {v2, p1, v1, v3, v0}, Lcom/samsung/android/app/music/privatemode/PrivateUtils;->a(Landroid/support/v4/app/FragmentActivity;[JLjava/lang/String;ZZ)V

    .line 653
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/BaseServiceActivity$onActivityResult$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->removeActivityLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V

    return-void
.end method
