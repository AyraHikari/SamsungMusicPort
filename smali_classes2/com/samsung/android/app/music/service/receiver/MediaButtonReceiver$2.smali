.class Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask$OnForwardRewindListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->a(Landroid/content/Context;Landroid/view/KeyEvent;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;Landroid/content/Context;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver$2;->b:Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;

    iput-object p2, p0, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver$2;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onForward()V
    .locals 2

    .line 218
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.app.music.core.action.PLAYBACK_FORWARD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.sec.android.app.music"

    .line 220
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    iget-object v1, p0, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver$2;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public onRewind()V
    .locals 2

    .line 226
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.app.music.core.action.PLAYBACK_REWIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.sec.android.app.music"

    .line 228
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    iget-object v1, p0, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver$2;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
