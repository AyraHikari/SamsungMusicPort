.class public Landroid/support/v7/app/AlertController$ButtonBarLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ButtonBarLayout"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1261
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1257
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 1253
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 1248
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 10

    .line 1266
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 1268
    invoke-virtual {p0}, Landroid/support/v7/app/AlertController$ButtonBarLayout;->getChildCount()I

    move-result v0

    .line 1270
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/app/AlertController$ButtonBarLayout;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/app/AlertController$ButtonBarLayout;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1271
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/app/AlertController$ButtonBarLayout;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v7/app/AlertController$ButtonBarLayout;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    const/16 v7, 0x8

    if-ge v4, v0, :cond_1

    .line 1274
    invoke-virtual {p0, v4}, Landroid/support/v7/app/AlertController$ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1275
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-eq v9, v7, :cond_0

    instance-of v7, v8, Landroid/support/v7/widget/AppCompatButton;

    if-eqz v7, :cond_0

    .line 1276
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v5, v7

    const/high16 v7, -0x80000000

    .line 1277
    invoke-static {v1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 1278
    invoke-static {v2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 1277
    invoke-virtual {v8, v9, v7}, Landroid/view/View;->measure(II)V

    .line 1279
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v6, v7

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    if-lt v5, v6, :cond_9

    if-ge v1, v6, :cond_2

    goto :goto_4

    .line 1294
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/app/AlertController$ButtonBarLayout;->getOrientation()I

    move-result v0

    if-eqz v0, :cond_c

    .line 1295
    invoke-virtual {p0, v3}, Landroid/support/v7/app/AlertController$ButtonBarLayout;->setOrientation(I)V

    .line 1297
    sget v0, Landroid/support/v7/appcompat/R$id;->button1:I

    invoke-virtual {p0, v0}, Landroid/support/v7/app/AlertController$ButtonBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 1298
    :goto_1
    sget v1, Landroid/support/v7/appcompat/R$id;->button2:I

    invoke-virtual {p0, v1}, Landroid/support/v7/app/AlertController$ButtonBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    .line 1299
    :goto_2
    sget v4, Landroid/support/v7/appcompat/R$id;->button3:I

    invoke-virtual {p0, v4}, Landroid/support/v7/app/AlertController$ButtonBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_5

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    .line 1300
    :goto_3
    sget v4, Landroid/support/v7/appcompat/R$id;->sem_divider1:I

    invoke-virtual {p0, v4}, Landroid/support/v7/app/AlertController$ButtonBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 1301
    sget v5, Landroid/support/v7/appcompat/R$id;->sem_divider2:I

    invoke-virtual {p0, v5}, Landroid/support/v7/app/AlertController$ButtonBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_8

    if-eqz v2, :cond_6

    if-nez v0, :cond_7

    :cond_6
    if-eqz v2, :cond_8

    if-eqz v1, :cond_8

    .line 1305
    :cond_7
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    if-eqz v4, :cond_c

    if-eqz v0, :cond_c

    if-eqz v1, :cond_c

    .line 1309
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    .line 1284
    :cond_9
    :goto_4
    invoke-virtual {p0}, Landroid/support/v7/app/AlertController$ButtonBarLayout;->getOrientation()I

    move-result v1

    if-eq v1, v2, :cond_c

    .line 1285
    invoke-virtual {p0, v2}, Landroid/support/v7/app/AlertController$ButtonBarLayout;->setOrientation(I)V

    :goto_5
    if-ge v3, v0, :cond_b

    .line 1287
    invoke-virtual {p0, v3}, Landroid/support/v7/app/AlertController$ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1288
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v7, :cond_a

    instance-of v2, v1, Landroid/support/v7/widget/AppCompatButton;

    if-nez v2, :cond_a

    .line 1289
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_b
    const/16 v0, 0x11

    .line 1292
    invoke-virtual {p0, v0}, Landroid/support/v7/app/AlertController$ButtonBarLayout;->setGravity(I)V

    .line 1312
    :cond_c
    :goto_6
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method
