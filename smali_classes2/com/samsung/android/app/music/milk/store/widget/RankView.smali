.class public Lcom/samsung/android/app/music/milk/store/widget/RankView;
.super Landroid/support/v7/widget/AppCompatTextView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public setRankChange(I)V
    .locals 4

    const-string v0, ""

    const v1, 0x7f020293

    if-gez p1, :cond_0

    const v2, 0x7f020294

    goto :goto_0

    :cond_0
    if-lez p1, :cond_1

    const v2, 0x7f020292

    goto :goto_0

    :cond_1
    const v2, 0x7f020293

    :goto_0
    if-eqz p1, :cond_2

    .line 45
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/16 v3, -0x3e8

    if-gt p1, v3, :cond_2

    const-string v0, ""

    const v2, 0x7f020533

    .line 52
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/RankView;->getContext()Landroid/content/Context;

    move-result-object p1

    const v3, 0x7f0f0193

    invoke-static {p1, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/RankView;->setTextColor(I)V

    .line 53
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/widget/RankView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, -0x1

    const/4 v0, 0x0

    if-eq v2, p1, :cond_4

    .line 56
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/RankView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-ne v2, v1, :cond_3

    const/4 v1, 0x0

    .line 58
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/widget/RankView;->setCompoundDrawablePadding(I)V

    .line 59
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v3, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    .line 61
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/RankView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100388

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/widget/RankView;->setCompoundDrawablePadding(I)V

    goto :goto_1

    :cond_4
    move-object p1, v0

    .line 65
    :goto_1
    invoke-virtual {p0, p1, v0, v0, v0}, Lcom/samsung/android/app/music/milk/store/widget/RankView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
