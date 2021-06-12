.class final Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$onResume$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->onResume()V
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

    iput-object p1, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$onResume$4;->this$0:Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 232
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$onResume$4;->this$0:Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$onResume$4;->this$0:Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->access$getRecreatedErrorCode$p(Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 241
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$onResume$4;->this$0:Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->getTextInputLayout()Landroid/support/design/widget/TextInputLayout;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$onResume$4;->this$0:Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;

    invoke-static {v1}, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->access$getLastErrorMessage$p(Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 242
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$onResume$4;->this$0:Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->setLastErrorCode(I)V

    goto :goto_0

    .line 237
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$onResume$4;->this$0:Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->getTextInputLayout()Landroid/support/design/widget/TextInputLayout;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$onResume$4;->this$0:Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;

    invoke-static {v1}, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->access$getLastErrorMessage$p(Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 238
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$onResume$4;->this$0:Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->setLastErrorCode(I)V

    goto :goto_0

    .line 245
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$onResume$4;->this$0:Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->getTextInputLayout()Landroid/support/design/widget/TextInputLayout;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$onResume$4;->this$0:Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;

    invoke-static {v2}, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->access$getLastErrorMessage$p(Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 246
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$onResume$4;->this$0:Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->setLastErrorCode(I)V

    .line 249
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$onResume$4;->this$0:Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$onResume$4;->this$0:Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;

    invoke-static {v1}, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->access$getEditTextView$p(Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;)Landroid/widget/EditText;

    move-result-object v1

    if-nez v1, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_5
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->access$updatePositiveButton(Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
