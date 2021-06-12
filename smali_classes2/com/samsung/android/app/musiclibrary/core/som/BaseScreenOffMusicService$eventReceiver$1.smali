.class public final Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$eventReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 155
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$eventReceiver$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SMUSIC-SOM"

    .line 158
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ScreenOffMusicService onReceive() action : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.intent.action.USER_PRESENT"

    .line 159
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "keyguard"

    .line 161
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/app/KeyguardManager;

    .line 162
    invoke-virtual {p1}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 163
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$eventReceiver$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->access$finishImmediate(Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;)V

    return-void

    .line 161
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.app.KeyguardManager"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-string p1, "com.sec.android.contextaware.HEADSET_PLUG"

    .line 169
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "state"

    const/4 v0, 0x0

    .line 170
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_2

    .line 175
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$eventReceiver$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->access$getScreenOffMusicHandler$p(Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;)Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;->startScreenOff(Z)V

    :cond_2
    return-void
.end method
