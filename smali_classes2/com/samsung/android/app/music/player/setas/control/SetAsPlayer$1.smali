.class public final Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;-><init>(Landroid/app/Activity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation

    .line 66
    iput-object p1, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer$1;->a:Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 68
    iget-object p1, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer$1;->a:Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;->c(Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;)V

    const/4 p1, 0x1

    const-wide/16 v0, 0x3e8

    .line 69
    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer$1;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
