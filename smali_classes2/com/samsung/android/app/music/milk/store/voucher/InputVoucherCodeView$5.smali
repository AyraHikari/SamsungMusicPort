.class Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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

    .line 141
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView$5;->a:Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 145
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView$5;->a:Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;->a(Z)V

    goto :goto_0

    .line 147
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView$5;->a:Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;->a(Z)V

    :goto_0
    return-void
.end method
