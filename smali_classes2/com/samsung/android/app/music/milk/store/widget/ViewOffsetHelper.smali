.class public Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/view/View;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetHelper;->a:Landroid/view/View;

    return-void
.end method

.method private c()V
    .locals 3

    .line 22
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-ne v0, v1, :cond_0

    .line 23
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetHelper;->a:Landroid/view/View;

    iget v1, p0, Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetHelper;->c:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    goto :goto_0

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetHelper;->a:Landroid/view/View;

    iget v1, p0, Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetHelper;->c:I

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetHelper;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetHelper;->b:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetHelper;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetHelper;->b:I

    .line 18
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetHelper;->c()V

    return-void
.end method

.method public a(I)Z
    .locals 1

    .line 30
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetHelper;->c:I

    if-eq v0, p1, :cond_0

    .line 31
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetHelper;->c:I

    .line 32
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetHelper;->c()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetHelper;->c:I

    return v0
.end method
