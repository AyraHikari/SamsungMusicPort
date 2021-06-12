.class Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog$1;->a:Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 164
    iget-object p1, p0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog$1;->a:Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;

    const-string p2, "MY_DEVICE"

    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->a(Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;ILjava/lang/String;)V

    return-void
.end method
