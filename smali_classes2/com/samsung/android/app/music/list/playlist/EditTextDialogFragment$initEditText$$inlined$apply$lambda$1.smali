.class public final Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$initEditText$$inlined$apply$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->initEditText(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $this_apply:Landroid/widget/EditText;

.field final synthetic this$0:Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;


# direct methods
.method constructor <init>(Landroid/widget/EditText;Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$initEditText$$inlined$apply$lambda$1;->$this_apply:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$initEditText$$inlined$apply$lambda$1;->this$0:Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    const-string p2, "s"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    const-string p2, "s"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 297
    iget-object p1, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$initEditText$$inlined$apply$lambda$1;->this$0:Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;

    iget-object p2, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$initEditText$$inlined$apply$lambda$1;->$this_apply:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->access$updatePositiveButton(Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;Ljava/lang/String;)V

    return-void
.end method
