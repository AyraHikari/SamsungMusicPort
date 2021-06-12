.class Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView$2;
.super Landroid/text/InputFilter$LengthFilter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/Toast;

.field final synthetic b:Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;ILandroid/widget/Toast;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView$2;->b:Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;

    iput-object p3, p0, Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView$2;->a:Landroid/widget/Toast;

    invoke-direct {p0, p2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 0

    .line 86
    invoke-super/range {p0 .. p6}, Landroid/text/InputFilter$LengthFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 88
    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView$2;->a:Landroid/widget/Toast;

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    :cond_0
    return-object p1
.end method
