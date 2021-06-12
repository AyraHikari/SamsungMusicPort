.class Lcom/samsung/android/app/music/dialog/LowBatteryPopup$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/dialog/LowBatteryPopup;->a(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/dialog/LowBatteryPopup;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/dialog/LowBatteryPopup;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/samsung/android/app/music/dialog/LowBatteryPopup$3;->a:Lcom/samsung/android/app/music/dialog/LowBatteryPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 88
    iget-object p1, p0, Lcom/samsung/android/app/music/dialog/LowBatteryPopup$3;->a:Lcom/samsung/android/app/music/dialog/LowBatteryPopup;

    invoke-static {p1}, Lcom/samsung/android/app/music/dialog/LowBatteryPopup;->a(Lcom/samsung/android/app/music/dialog/LowBatteryPopup;)Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 89
    iget-object p1, p0, Lcom/samsung/android/app/music/dialog/LowBatteryPopup$3;->a:Lcom/samsung/android/app/music/dialog/LowBatteryPopup;

    invoke-static {p1}, Lcom/samsung/android/app/music/dialog/LowBatteryPopup;->b(Lcom/samsung/android/app/music/dialog/LowBatteryPopup;)V

    return-void
.end method
