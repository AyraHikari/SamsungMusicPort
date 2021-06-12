.class public final Lcom/samsung/android/app/music/list/SpinnerHelper$setDropDownItems$adapter$1;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/SpinnerHelper;->a([I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/SpinnerHelper;

.field final synthetic b:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/SpinnerHelper;Ljava/util/List;Landroid/content/Context;IILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List;",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/List;",
            ")V"
        }
    .end annotation

    .line 64
    iput-object p1, p0, Lcom/samsung/android/app/music/list/SpinnerHelper$setDropDownItems$adapter$1;->a:Lcom/samsung/android/app/music/list/SpinnerHelper;

    iput-object p2, p0, Lcom/samsung/android/app/music/list/SpinnerHelper$setDropDownItems$adapter$1;->b:Ljava/util/List;

    invoke-direct {p0, p3, p4, p5, p6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const-string v0, "parent"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const-string p3, "item"

    .line 76
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/samsung/android/app/music/list/SpinnerHelper$setDropDownItems$adapter$1;->a:Lcom/samsung/android/app/music/list/SpinnerHelper;

    invoke-static {p3}, Lcom/samsung/android/app/music/list/SpinnerHelper;->a(Lcom/samsung/android/app/music/list/SpinnerHelper;)[Z

    move-result-object p3

    if-nez p3, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    aget-boolean p3, p3, p1

    if-eqz p3, :cond_1

    const/high16 p3, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const p3, 0x3ebd70a4    # 0.37f

    :goto_0
    invoke-virtual {p2, p3}, Landroid/view/View;->setAlpha(F)V

    .line 78
    iget-object p3, p0, Lcom/samsung/android/app/music/list/SpinnerHelper$setDropDownItems$adapter$1;->a:Lcom/samsung/android/app/music/list/SpinnerHelper;

    invoke-static {p3}, Lcom/samsung/android/app/music/list/SpinnerHelper;->b(Lcom/samsung/android/app/music/list/SpinnerHelper;)I

    move-result p3

    const/4 v0, 0x0

    if-ne p1, p3, :cond_3

    const p3, 0x1020014

    .line 79
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    if-eqz p3, :cond_2

    .line 80
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/SpinnerHelper$setDropDownItems$adapter$1;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0057

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    const p3, 0x7f130571

    .line 81
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    if-eqz p3, :cond_3

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    const p3, 0x7f130572

    .line 84
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    if-eqz p3, :cond_5

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x4

    .line 85
    :goto_1
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 86
    new-instance v0, Lcom/samsung/android/app/music/list/SpinnerHelper$setDropDownItems$adapter$1$getDropDownView$$inlined$apply$lambda$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/list/SpinnerHelper$setDropDownItems$adapter$1$getDropDownView$$inlined$apply$lambda$1;-><init>(Lcom/samsung/android/app/music/list/SpinnerHelper$setDropDownItems$adapter$1;I)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    return-object p2
.end method

.method public isEnabled(I)Z
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/samsung/android/app/music/list/SpinnerHelper$setDropDownItems$adapter$1;->a:Lcom/samsung/android/app/music/list/SpinnerHelper;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/SpinnerHelper;->a(Lcom/samsung/android/app/music/list/SpinnerHelper;)[Z

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    aget-boolean p1, v0, p1

    return p1
.end method
