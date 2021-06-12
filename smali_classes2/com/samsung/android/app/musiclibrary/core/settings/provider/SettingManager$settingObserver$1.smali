.class final Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$settingObserver$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;-><init>(Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$IRepository;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$settingObserver$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 30
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$settingObserver$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->access$getSettingThreadObserverMap$p(Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$settingObserver$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->access$getMainThreadObserverMap$p(Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "Settings"

    const-string p2, "onChange - it is not observing"

    .line 31
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$settingObserver$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->access$getCacheStarted$p(Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$settingObserver$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->access$getSettingValues$p(Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;)Ljava/util/HashMap;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "key"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "value"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$settingObserver$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->access$notifyChange(Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 44
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$settingObserver$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->access$getHandler$p(Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;)Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$SettingHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$SettingHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 45
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$settingObserver$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    const-string v2, "key"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, p1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->access$getMessageId(Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 46
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "key"

    .line 47
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "value"

    .line 48
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 50
    new-instance p1, Ljava/lang/ref/WeakReference;

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$settingObserver$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 52
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$settingObserver$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->access$getHandler$p(Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;)Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$SettingHandler;

    move-result-object p1

    iget p2, v0, Landroid/os/Message;->what:I

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$SettingHandler;->removeMessages(I)V

    .line 53
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$settingObserver$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->access$getHandler$p(Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;)Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$SettingHandler;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$SettingHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
