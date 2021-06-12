.class final Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer$lowBatteryPopup$2$1$$special$$inlined$with$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer$lowBatteryPopup$2$1;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/app/AlertDialog;

.field final synthetic b:Landroid/content/res/Resources;

.field final synthetic c:Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer$lowBatteryPopup$2$1;


# direct methods
.method constructor <init>(Landroid/support/v7/app/AlertDialog;Landroid/content/res/Resources;Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer$lowBatteryPopup$2$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer$lowBatteryPopup$2$1$$special$$inlined$with$lambda$1;->a:Landroid/support/v7/app/AlertDialog;

    iput-object p2, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer$lowBatteryPopup$2$1$$special$$inlined$with$lambda$1;->b:Landroid/content/res/Resources;

    iput-object p3, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer$lowBatteryPopup$2$1$$special$$inlined$with$lambda$1;->c:Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer$lowBatteryPopup$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 45
    iget-object p1, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer$lowBatteryPopup$2$1$$special$$inlined$with$lambda$1;->a:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 46
    iget-object p1, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer$lowBatteryPopup$2$1$$special$$inlined$with$lambda$1;->c:Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer$lowBatteryPopup$2$1;

    iget-object p1, p1, Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer$lowBatteryPopup$2$1;->a:Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer$lowBatteryPopup$2;

    iget-object p1, p1, Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer$lowBatteryPopup$2;->this$0:Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;

    const/4 p2, 0x0

    check-cast p2, Landroid/support/v7/app/AlertDialog;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;->a(Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;Landroid/support/v7/app/AlertDialog;)V

    return-void
.end method
