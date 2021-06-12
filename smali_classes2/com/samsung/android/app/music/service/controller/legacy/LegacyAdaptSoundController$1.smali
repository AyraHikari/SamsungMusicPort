.class Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController$1;->a:Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 71
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.sec.hearingadjust.checkmusic"

    .line 72
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 74
    iget-object p1, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController$1;->a:Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;

    const-string p2, "com.sec.hearingadjust.checkmusic"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method
