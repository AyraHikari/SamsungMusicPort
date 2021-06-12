.class public abstract Lcom/samsung/android/app/music/milk/store/widget/BaseSpinnerAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/ArrayAdapter<",
        "TItem;>;"
    }
.end annotation


# instance fields
.field private a:I


# virtual methods
.method protected a()I
    .locals 1
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation

    const v0, 0x7f040135

    return v0
.end method

.method public abstract a(I)Ljava/lang/String;
.end method

.method protected a(ILandroid/widget/TextView;)V
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/BaseSpinnerAdapter;->a(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 37
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 0

    .line 31
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/widget/BaseSpinnerAdapter;->a:I

    return-void
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/BaseSpinnerAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "layout_inflater"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    const p3, 0x7f040134

    const/4 v0, 0x0

    .line 66
    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    const p3, 0x7f1303b9

    .line 69
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 70
    invoke-virtual {p0, p1, p3}, Lcom/samsung/android/app/music/milk/store/widget/BaseSpinnerAdapter;->a(ILandroid/widget/TextView;)V

    .line 71
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/BaseSpinnerAdapter;->a(I)Ljava/lang/String;

    if-eqz p3, :cond_3

    .line 74
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/BaseSpinnerAdapter;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 75
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/BaseSpinnerAdapter;->a:I

    const/4 v1, 0x1

    if-ne v0, p1, :cond_1

    .line 77
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/BaseSpinnerAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0f0178

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    .line 76
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 78
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/BaseSpinnerAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0f0177

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    .line 80
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 82
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 86
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/BaseSpinnerAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0f0176

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    .line 85
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p1, 0x0

    .line 87
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_3
    :goto_0
    return-object p2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    if-nez p2, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/BaseSpinnerAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "layout_inflater"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    .line 47
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/BaseSpinnerAdapter;->a()I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    const p3, 0x7f1303b9

    .line 50
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p0, p1, p3}, Lcom/samsung/android/app/music/milk/store/widget/BaseSpinnerAdapter;->a(ILandroid/widget/TextView;)V

    return-object p2
.end method
