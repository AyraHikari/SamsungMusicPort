.class Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$InputTextFilter;
.super Landroid/text/method/NumberKeyListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InputTextFilter"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)V
    .locals 0

    .line 2619
    iput-object p1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 2

    .line 2635
    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v0}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$2100(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 2636
    invoke-super/range {p0 .. p6}, Landroid/text/method/NumberKeyListener;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2638
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2641
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4, v1, p5}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2642
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result p2

    invoke-interface {p4, p6, p2}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    .line 2644
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object p1

    .line 2647
    :cond_1
    iget-object p2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {p2, p1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$2200(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;Ljava/lang/String;)I

    move-result p2

    .line 2656
    iget-object p3, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {p3}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$2300(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result p3

    if-gt p2, p3, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iget-object p2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p3, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {p3}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$2300(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result p3

    invoke-static {p2, p3}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$2400(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-le p1, p2, :cond_2

    goto :goto_0

    :cond_2
    return-object v0

    .line 2657
    :cond_3
    :goto_0
    iget-object p1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {p1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$400(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 2658
    iget-object p1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {p1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$2500(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)Landroid/widget/Toast;

    move-result-object p1

    if-nez p1, :cond_4

    .line 2659
    iget-object p1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p2, p2, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mContext:Landroid/content/Context;

    iget-object p3, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {p3}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$2600(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$2502(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 2661
    :cond_4
    iget-object p1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {p1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$2500(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_5
    const-string p1, ""

    return-object p1

    .line 2668
    :cond_6
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2669
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4, v1, p5}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2670
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result p3

    invoke-interface {p4, p6, p3}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2671
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 2672
    iget-object p3, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {p3}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$2100(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)[Ljava/lang/String;

    move-result-object p3

    array-length p4, p3

    const/4 p5, 0x0

    :goto_1
    if-ge p5, p4, :cond_9

    aget-object p6, p3, p5

    .line 2673
    invoke-virtual {p6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p6

    .line 2674
    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v0}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$2700(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2675
    invoke-virtual {p6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_8

    return-object p1

    .line 2678
    :cond_7
    invoke-virtual {p6, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p6

    if-eqz p6, :cond_8

    return-object p1

    :cond_8
    add-int/lit8 p5, p5, 0x1

    goto :goto_1

    .line 2682
    :cond_9
    iget-object p1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {p1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$400(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 2683
    iget-object p1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {p1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$2500(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)Landroid/widget/Toast;

    move-result-object p1

    if-nez p1, :cond_a

    .line 2684
    iget-object p1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p2, p2, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mContext:Landroid/content/Context;

    iget-object p3, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {p3}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$2600(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$2502(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 2686
    :cond_a
    iget-object p1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {p1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$2500(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_b
    const-string p1, ""

    return-object p1
.end method

.method protected getAcceptedChars()[C
    .locals 1

    .line 2629
    invoke-static {}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$2000()[C

    move-result-object v0

    return-object v0
.end method

.method public getInputType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
