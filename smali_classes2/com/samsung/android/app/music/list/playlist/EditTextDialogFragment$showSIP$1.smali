.class final Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$showSIP$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;-><init>()V
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

    iput-object p1, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$showSIP$1;->this$0:Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 87
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$showSIP$1;->this$0:Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "input_method"

    .line 88
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 89
    iget-object v1, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$showSIP$1;->this$0:Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;

    invoke-static {v1}, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->access$getEditTextView$p(Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;)Landroid/widget/EditText;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x1

    .line 88
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_1
    sget-object v0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->Companion:Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$Companion;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$Companion;->getTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$showSIP$1;->this$0:Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " activity is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
