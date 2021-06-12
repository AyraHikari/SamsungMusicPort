.class Lcom/samsung/android/app/music/milk/MilkDialogReceiver$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->a(Lcom/samsung/android/app/music/milk/MilkDialogReceiver$DialogMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/MilkDialogReceiver;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/MilkDialogReceiver;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$6;->a:Lcom/samsung/android/app/music/milk/MilkDialogReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 230
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 231
    iget-object p2, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$6;->a:Lcom/samsung/android/app/music/milk/MilkDialogReceiver;

    invoke-static {p2}, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->a(Lcom/samsung/android/app/music/milk/MilkDialogReceiver;)Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    const-class v0, Lcom/samsung/android/app/music/settings/DeviceManagementActivity;

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 233
    iget-object p2, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$6;->a:Lcom/samsung/android/app/music/milk/MilkDialogReceiver;

    invoke-static {p2}, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->a(Lcom/samsung/android/app/music/milk/MilkDialogReceiver;)Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
