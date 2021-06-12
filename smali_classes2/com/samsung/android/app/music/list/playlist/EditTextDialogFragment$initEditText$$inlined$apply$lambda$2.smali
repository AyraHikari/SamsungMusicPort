.class public final Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$initEditText$$inlined$apply$lambda$2;
.super Landroid/text/InputFilter$LengthFilter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->initEditText(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;


# direct methods
.method constructor <init>(ILcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;)V
    .locals 0

    iput-object p2, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$initEditText$$inlined$apply$lambda$2;->this$0:Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;

    .line 308
    invoke-direct {p0, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 3

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dest"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 319
    invoke-static {}, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->access$getPATTERN_SPECIAL_CHARACTERS$cp()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 321
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/samsung/android/app/music/util/EmojiListUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x2

    .line 327
    :goto_1
    invoke-super/range {p0 .. p6}, Landroid/text/InputFilter$LengthFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object p2

    const/4 p3, 0x0

    if-eqz p2, :cond_2

    or-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    move-object p2, p3

    :goto_2
    if-nez v0, :cond_5

    .line 334
    iget-object p2, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$initEditText$$inlined$apply$lambda$2;->this$0:Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;

    const/4 p4, -0x1

    invoke-virtual {p2, p4}, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->setLastErrorCode(I)V

    .line 335
    iget-object p2, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$initEditText$$inlined$apply$lambda$2;->this$0:Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;

    invoke-virtual {p2}, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->getTextInputLayout()Landroid/support/design/widget/TextInputLayout;

    move-result-object p2

    if-nez p2, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_3
    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p2, p3}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 336
    iget-object p2, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$initEditText$$inlined$apply$lambda$2;->this$0:Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;

    invoke-virtual {p2}, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->getTextInputLayout()Landroid/support/design/widget/TextInputLayout;

    move-result-object p2

    if-nez p2, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_4
    invoke-virtual {p2, v1}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    return-object p1

    :cond_5
    and-int/lit8 p1, v0, 0x2

    if-eqz p1, :cond_8

    .line 340
    iget-object p1, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$initEditText$$inlined$apply$lambda$2;->this$0:Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->getLastErrorCode()I

    move-result p1

    if-eq p1, v2, :cond_7

    .line 341
    iget-object p1, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$initEditText$$inlined$apply$lambda$2;->this$0:Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->setLastErrorCode(I)V

    .line 342
    iget-object p1, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$initEditText$$inlined$apply$lambda$2;->this$0:Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->getTextInputLayout()Landroid/support/design/widget/TextInputLayout;

    move-result-object p1

    if-nez p1, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_6
    iget-object p2, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$initEditText$$inlined$apply$lambda$2;->this$0:Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;

    const p3, 0x7f0b016b

    invoke-virtual {p2, p3}, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 344
    :cond_7
    invoke-interface {p4, p5, p6}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 347
    :cond_8
    iget-object p1, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$initEditText$$inlined$apply$lambda$2;->this$0:Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->getLastErrorCode()I

    move-result p1

    const/4 p3, 0x1

    if-eq p1, p3, :cond_a

    .line 348
    iget-object p1, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$initEditText$$inlined$apply$lambda$2;->this$0:Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;

    invoke-virtual {p1, p3}, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->setLastErrorCode(I)V

    .line 349
    iget-object p1, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$initEditText$$inlined$apply$lambda$2;->this$0:Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->getTextInputLayout()Landroid/support/design/widget/TextInputLayout;

    move-result-object p1

    if-nez p1, :cond_9

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_9
    iget-object p4, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$initEditText$$inlined$apply$lambda$2;->this$0:Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;

    const p5, 0x7f0b0196

    .line 350
    new-array p3, p3, [Ljava/lang/Object;

    const/16 p6, 0x32

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    aput-object p6, p3, v1

    .line 349
    invoke-virtual {p4, p5, p3}, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p1, p3}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    :cond_a
    return-object p2
.end method
