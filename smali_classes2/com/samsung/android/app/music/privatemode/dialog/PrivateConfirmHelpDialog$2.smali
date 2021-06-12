.class Lcom/samsung/android/app/music/privatemode/dialog/PrivateConfirmHelpDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/privatemode/dialog/PrivateConfirmHelpDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/CheckBox;

.field final synthetic b:Z

.field final synthetic c:Lcom/samsung/android/app/music/privatemode/dialog/PrivateConfirmHelpDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/privatemode/dialog/PrivateConfirmHelpDialog;Landroid/widget/CheckBox;Z)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/samsung/android/app/music/privatemode/dialog/PrivateConfirmHelpDialog$2;->c:Lcom/samsung/android/app/music/privatemode/dialog/PrivateConfirmHelpDialog;

    iput-object p2, p0, Lcom/samsung/android/app/music/privatemode/dialog/PrivateConfirmHelpDialog$2;->a:Landroid/widget/CheckBox;

    iput-boolean p3, p0, Lcom/samsung/android/app/music/privatemode/dialog/PrivateConfirmHelpDialog$2;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method
