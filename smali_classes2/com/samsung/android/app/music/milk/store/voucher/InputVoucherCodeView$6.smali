.class Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/inputmethod/InputMethodManager;

.field final synthetic b:Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView$6;->b:Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView$6;->a:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 173
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView$6;->a:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView$6;->b:Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;->a(Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method
