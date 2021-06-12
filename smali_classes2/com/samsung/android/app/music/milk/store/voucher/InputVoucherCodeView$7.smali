.class Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;->getEditTextFilterEmoji()Landroid/text/InputFilter;
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

    .line 209
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView$7;->a:Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 0

    :goto_0
    if-ge p2, p3, :cond_1

    .line 214
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p4

    invoke-static {p4}, Ljava/lang/Character;->getType(C)I

    move-result p4

    const/16 p5, 0x13

    if-ne p4, p5, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
