.class final Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer$lowBatteryPopup$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$LowBatteryPopup;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer$lowBatteryPopup$2;->invoke()Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$LowBatteryPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer$lowBatteryPopup$2;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer$lowBatteryPopup$2;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer$lowBatteryPopup$2$1;->a:Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer$lowBatteryPopup$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a()V
    .locals 0

    .line 24
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer$lowBatteryPopup$2$1;->b()V

    return-void
.end method

.method public final b()V
    .locals 6

    .line 36
    iget-object v0, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer$lowBatteryPopup$2$1;->a:Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer$lowBatteryPopup$2;

    iget-object v0, v0, Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer$lowBatteryPopup$2;->this$0:Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;->a(Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;)Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer$lowBatteryPopup$2$1;->a:Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer$lowBatteryPopup$2;

    iget-object v0, v0, Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer$lowBatteryPopup$2;->this$0:Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;->b(Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 43
    iget-object v1, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer$lowBatteryPopup$2$1;->a:Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer$lowBatteryPopup$2;

    iget-object v1, v1, Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer$lowBatteryPopup$2;->this$0:Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;

    .line 39
    new-instance v2, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer$lowBatteryPopup$2$1;->a:Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer$lowBatteryPopup$2;

    iget-object v3, v3, Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer$lowBatteryPopup$2;->this$0:Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;

    invoke-static {v3}, Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;->b(Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;)Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b00a8

    .line 40
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b00a7

    .line 41
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    .line 42
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    const/4 v3, -0x3

    const v4, 0x7f0b02d3

    .line 44
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    new-instance v5, Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer$lowBatteryPopup$2$1$$special$$inlined$with$lambda$1;

    invoke-direct {v5, v2, v0, p0}, Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer$lowBatteryPopup$2$1$$special$$inlined$with$lambda$1;-><init>(Landroid/support/v7/app/AlertDialog;Landroid/content/res/Resources;Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer$lowBatteryPopup$2$1;)V

    check-cast v5, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v3, v4, v5}, Landroid/support/v7/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v0, 0x0

    .line 48
    invoke-virtual {v2, v0}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 49
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 43
    invoke-static {v1, v2}, Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;->a(Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;Landroid/support/v7/app/AlertDialog;)V

    return-void
.end method
