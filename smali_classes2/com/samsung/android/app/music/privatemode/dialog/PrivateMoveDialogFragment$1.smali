.class Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment$1;->a:Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 137
    iget-object p2, p0, Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment$1;->a:Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment;

    invoke-static {p2}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment;->a(Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment;)V

    .line 138
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
