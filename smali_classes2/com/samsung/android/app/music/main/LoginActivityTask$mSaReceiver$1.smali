.class public final Lcom/samsung/android/app/music/main/LoginActivityTask$mSaReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/main/LoginActivityTask;-><init>(Lcom/samsung/android/app/music/main/MainActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/main/LoginActivityTask;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/main/LoginActivityTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 76
    iput-object p1, p0, Lcom/samsung/android/app/music/main/LoginActivityTask$mSaReceiver$1;->a:Lcom/samsung/android/app/music/main/LoginActivityTask;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "LoginActivityTask"

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive( action : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "com.sec.android.app.music.SA_ACCSSTOKEN_EXCEPTION"

    .line 80
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 82
    iget-object p1, p0, Lcom/samsung/android/app/music/main/LoginActivityTask$mSaReceiver$1;->a:Lcom/samsung/android/app/music/main/LoginActivityTask;

    invoke-static {p1}, Lcom/samsung/android/app/music/main/LoginActivityTask;->a(Lcom/samsung/android/app/music/main/LoginActivityTask;)Lcom/samsung/android/app/music/main/MainActivity;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    const/16 p2, 0x2711

    .line 81
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/MilkPackageLauncher;->a(Landroid/app/Activity;I)V

    :cond_0
    return-void
.end method
