.class Lcom/samsung/android/app/music/dialog/MobileDataConfirmDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/dialog/MobileDataConfirmDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/dialog/MobileDataConfirmDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/dialog/MobileDataConfirmDialog;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/samsung/android/app/music/dialog/MobileDataConfirmDialog$2;->a:Lcom/samsung/android/app/music/dialog/MobileDataConfirmDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 58
    invoke-static {}, Lcom/samsung/android/app/music/dialog/MobileDataConfirmDialog;->b()Lcom/samsung/android/app/music/dialog/MobileDataConfirmDialog$OnConnectListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 59
    invoke-static {}, Lcom/samsung/android/app/music/dialog/MobileDataConfirmDialog;->b()Lcom/samsung/android/app/music/dialog/MobileDataConfirmDialog$OnConnectListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/music/dialog/MobileDataConfirmDialog$OnConnectListener;->a()V

    :cond_0
    return-void
.end method
