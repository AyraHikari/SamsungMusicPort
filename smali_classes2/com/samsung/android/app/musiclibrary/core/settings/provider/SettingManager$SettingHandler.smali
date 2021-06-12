.class final Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$SettingHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SettingHandler"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 290
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 292
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 294
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    instance-of v1, v0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    if-nez v1, :cond_2

    move-object v0, v2

    :cond_2
    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    if-eqz v0, :cond_3

    .line 296
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "key"

    .line 297
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "value"

    .line 298
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    .line 299
    invoke-static {v0, v1, p1, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->access$notifyChange(Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_3
    return-void
.end method
