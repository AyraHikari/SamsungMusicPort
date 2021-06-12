.class Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment;->a(ILjava/lang/String;)V
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

    .line 235
    iput-object p1, p0, Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment$3;->a:Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment$3;->a:Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateMoveDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 240
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method
