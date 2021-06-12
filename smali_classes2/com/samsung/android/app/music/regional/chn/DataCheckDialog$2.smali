.class Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$2;->a:Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 222
    iget-object p1, p0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$2;->a:Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->dismiss()V

    .line 223
    iget-object p1, p0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$2;->a:Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;

    invoke-static {p1}, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->e(Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;)Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$OnDialogResultListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 224
    iget-object p1, p0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$2;->a:Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;

    invoke-static {p1}, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->e(Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;)Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$OnDialogResultListener;

    move-result-object p1

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$OnDialogResultListener;->a(I)V

    :cond_0
    return-void
.end method
