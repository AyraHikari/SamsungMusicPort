.class Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView$4;->a:Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 p1, 0x0

    const/4 p3, 0x6

    if-eq p2, p3, :cond_1

    const/4 p3, 0x5

    if-ne p2, p3, :cond_0

    goto :goto_0

    :cond_0
    return p1

    .line 125
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView$4;->a:Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;

    invoke-static {p2}, Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;->c(Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;)Landroid/content/Context;

    move-result-object p2

    const-string p3, "input_method"

    .line 126
    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    .line 127
    iget-object p3, p0, Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView$4;->a:Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;

    invoke-static {p3}, Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;->a(Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;)Landroid/widget/EditText;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 129
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView$4;->a:Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;->a(Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 131
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "InputVoucherCodeView"

    .line 132
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setOnEditorActionListener voucher code is "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView$4;->a:Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;

    invoke-static {p2}, Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;->b(Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;)Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView$OnInputVoucherListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView$OnInputVoucherListener;->a(Ljava/lang/String;)V

    :cond_2
    const/4 p1, 0x1

    return p1
.end method
