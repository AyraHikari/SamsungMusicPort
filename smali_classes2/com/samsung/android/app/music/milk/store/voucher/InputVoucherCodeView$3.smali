.class Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


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

    .line 97
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView$3;->a:Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 109
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 110
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_0

    .line 111
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView$3;->a:Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;->a(Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;Z)V

    goto :goto_0

    .line 113
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView$3;->a:Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;->a(Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;Z)V

    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
