.class final Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$onCreateDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/widget/WindowFocusLinearLayout$OnWindowFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$onCreateDialog$2;->this$0:Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onWindowFocusChanged(Z)V
    .locals 3

    .line 138
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$onCreateDialog$2;->this$0:Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->access$getEditTextView$p(Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 139
    iget-object p1, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$onCreateDialog$2;->this$0:Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->access$isKeyboardVisible$p(Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 140
    iget-object p1, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$onCreateDialog$2;->this$0:Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->access$getShowSIP$p(Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;)Ljava/lang/Runnable;

    move-result-object p1

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p1, v1, v2}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 142
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$onCreateDialog$2;->this$0:Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->access$getShowSIP$p(Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method
