.class public final Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$backgroundChangeListener$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;-><init>(Landroid/app/Activity;Ljava/lang/Class;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 110
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$backgroundChangeListener$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "i"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->access$getDEBUG$cp()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Ui-MediaCenter"

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " handleBackgroundMediaIntent action "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " data "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :cond_0
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$Companion;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$backgroundChangeListener$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->access$getState$p(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$Companion;->access$isStarted(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$Companion;I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$backgroundChangeListener$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->access$isServiceConnected$p(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 119
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$backgroundChangeListener$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->access$getSavedNotifier$p(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$SavedExtraActionNotifier;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$SavedExtraActionNotifier;->removeAction$musicLibrary_release(Ljava/lang/String;)V

    goto :goto_1

    .line 122
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$backgroundChangeListener$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->access$getSavedNotifier$p(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$SavedExtraActionNotifier;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    :goto_0
    invoke-virtual {p1, v0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$SavedExtraActionNotifier;->putAction$musicLibrary_release(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_1
    return-void
.end method
