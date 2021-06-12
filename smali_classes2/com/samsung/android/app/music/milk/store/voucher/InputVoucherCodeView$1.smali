.class Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 63
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView$1;->a:Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 66
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView$1;->a:Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;->a(Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, "InputVoucherCodeView"

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOnClickListener  voucher code is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "InputVoucherCodeView"

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOnEditorActionListener  voucher code is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView$1;->a:Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;->b(Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;)Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView$OnInputVoucherListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView$OnInputVoucherListener;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
