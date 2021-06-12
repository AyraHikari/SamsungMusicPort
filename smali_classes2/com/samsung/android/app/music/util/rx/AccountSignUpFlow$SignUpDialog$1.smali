.class Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$SignUpDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$SignUpDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$SignUpDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$SignUpDialog;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$SignUpDialog$1;->a:Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$SignUpDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 214
    iget-object p1, p0, Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$SignUpDialog$1;->a:Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$SignUpDialog;

    invoke-static {p1}, Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$SignUpDialog;->a(Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$SignUpDialog;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$SignUpDialog$1;->a:Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$SignUpDialog;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
