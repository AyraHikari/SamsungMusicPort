.class Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController$2;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController$2;->a:Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 83
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.sec.samsungsound.ACTION_SOUNDALIVE_CHANGED"

    .line 84
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 85
    iget-object p1, p0, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController$2;->a:Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;

    invoke-static {p1}, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;->a(Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;)V

    :cond_0
    return-void
.end method
