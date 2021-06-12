.class final Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$initEditText$$inlined$apply$lambda$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->initEditText(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $this_apply:Landroid/widget/EditText;

.field final synthetic this$0:Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;


# direct methods
.method constructor <init>(Landroid/widget/EditText;Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$initEditText$$inlined$apply$lambda$3;->$this_apply:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$initEditText$$inlined$apply$lambda$3;->this$0:Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    const/4 p3, 0x6

    if-ne p2, p3, :cond_2

    .line 362
    iget-object p2, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$initEditText$$inlined$apply$lambda$3;->this$0:Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;

    invoke-virtual {p2}, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    if-nez p2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string p3, "input_method"

    invoke-virtual {p2, p3}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_1

    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    .line 365
    iget-object p3, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$initEditText$$inlined$apply$lambda$3;->$this_apply:Landroid/widget/EditText;

    invoke-virtual {p3}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object p3

    .line 364
    invoke-virtual {p2, p3, p1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    const/4 p1, 0x1

    return p1

    .line 362
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return p1
.end method
