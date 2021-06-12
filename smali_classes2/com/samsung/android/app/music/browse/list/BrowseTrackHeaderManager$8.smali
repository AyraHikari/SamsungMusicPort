.class Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;)V
    .locals 0

    .line 544
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$8;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 545
    iput p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$8;->b:I

    .line 546
    iput p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$8;->c:I

    .line 547
    iput p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$8;->d:I

    return-void
.end method

.method private a()V
    .locals 14

    const/4 v0, 0x2

    .line 649
    new-array v1, v0, [I

    .line 650
    new-array v2, v0, [I

    .line 651
    new-array v3, v0, [I

    .line 652
    new-array v4, v0, [I

    .line 653
    new-array v5, v0, [I

    .line 655
    iget-object v6, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$8;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;

    invoke-static {v6}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->a(Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x0

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    .line 656
    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-nez v12, :cond_1

    .line 658
    invoke-virtual {v11, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    move-object v7, v11

    goto :goto_0

    .line 659
    :cond_1
    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_2

    .line 661
    invoke-virtual {v11, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    move-object v8, v11

    goto :goto_0

    .line 662
    :cond_2
    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-ne v12, v0, :cond_3

    .line 664
    invoke-virtual {v11, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    move-object v10, v11

    goto :goto_0

    .line 665
    :cond_3
    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const/4 v13, 0x3

    if-ne v12, v13, :cond_0

    .line 667
    invoke-virtual {v11, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    move-object v9, v11

    goto :goto_0

    .line 670
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$8;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->h(Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;)Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 671
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$8;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->i(Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 674
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$8;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->h(Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;)Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;

    move-result-object v0

    const/4 v6, 0x0

    if-eqz v0, :cond_7

    .line 675
    aget v0, v1, v6

    aget v5, v5, v6

    iget-object v11, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$8;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;

    invoke-static {v11}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->i(Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v11

    add-int/2addr v5, v11

    if-ge v0, v5, :cond_6

    .line 676
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$8;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->i(Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$8;->c(Landroid/view/View;)V

    goto :goto_1

    .line 678
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$8;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->i(Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$8;->a(Landroid/view/View;)Z

    :cond_7
    :goto_1
    if-eqz v7, :cond_8

    .line 681
    aget v0, v1, v6

    aget v2, v2, v6

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v2, v5

    if-ge v0, v2, :cond_8

    .line 682
    invoke-direct {p0, v7}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$8;->c(Landroid/view/View;)V

    goto :goto_2

    .line 684
    :cond_8
    invoke-direct {p0, v7}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$8;->a(Landroid/view/View;)Z

    .line 686
    :goto_2
    aget v0, v1, v6

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    aget v2, v3, v6

    if-le v0, v2, :cond_9

    .line 687
    invoke-direct {p0, v9}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$8;->c(Landroid/view/View;)V

    goto :goto_3

    .line 689
    :cond_9
    invoke-direct {p0, v9}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$8;->a(Landroid/view/View;)Z

    .line 691
    :goto_3
    aget v0, v1, v6

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    aget v1, v4, v6

    if-le v0, v1, :cond_a

    .line 692
    invoke-direct {p0, v10}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$8;->c(Landroid/view/View;)V

    goto :goto_4

    .line 694
    :cond_a
    invoke-direct {p0, v10}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$8;->a(Landroid/view/View;)Z

    :goto_4
    return-void
.end method

.method private a(Landroid/view/View;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 699
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$8;->b:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$8;->c:I

    if-gt v1, v2, :cond_1

    .line 700
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$8;->a(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 701
    iget v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$8;->b:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$8;->b:I

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method private a(Landroid/view/View;I)Z
    .locals 1

    .line 722
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 725
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private b(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    .line 710
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$8;->a(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 711
    iget v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$8;->b:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$8;->b:I

    :cond_0
    return-void
.end method

.method private c(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    .line 717
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$8;->a(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 8

    .line 551
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$8;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->g(Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$8;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;

    invoke-static {v1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->g(Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$8;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;

    invoke-static {v1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->g(Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getPaddingEnd()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$8;->c:I

    .line 552
    iget v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$8;->c:I

    iget v1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$8;->d:I

    if-eq v0, v1, :cond_12

    iget v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$8;->c:I

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 556
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$8;->c:I

    iput v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$8;->d:I

    .line 562
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$8;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->a(Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    move-object v4, v3

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 563
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_2

    move-object v3, v5

    goto :goto_0

    .line 565
    :cond_2
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    move-object v1, v5

    goto :goto_0

    .line 567
    :cond_3
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    move-object v2, v5

    goto :goto_0

    .line 569
    :cond_4
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    move-object v4, v5

    goto :goto_0

    :cond_5
    if-eqz v1, :cond_6

    .line 574
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    .line 575
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$8;->a()V

    goto/16 :goto_2

    :cond_6
    const/4 v0, 0x0

    .line 577
    iput v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$8;->b:I

    .line 578
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$8;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->a(Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 579
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_7

    .line 580
    iget v5, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$8;->b:I

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$8;->b:I

    const-string v5, "BrowseTrackHeaderManager"

    .line 581
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sum - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$8;->b:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 581
    invoke-static {v5, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 586
    :cond_8
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$8;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->h(Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;)Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 587
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$8;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->i(Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_9

    .line 588
    iget v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$8;->b:I

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$8;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;

    invoke-static {v1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->i(Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$8;->b:I

    :cond_9
    const-string v0, "BrowseTrackHeaderManager"

    .line 591
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "layoutWidth - "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$8;->c:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", sum - "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$8;->b:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    iget v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$8;->b:I

    iget v1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$8;->c:I

    if-le v0, v1, :cond_d

    if-eqz v2, :cond_a

    .line 596
    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$8;->b(Landroid/view/View;)V

    .line 598
    :cond_a
    iget v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$8;->b:I

    iget v1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$8;->c:I

    if-le v0, v1, :cond_11

    if-eqz v3, :cond_b

    .line 600
    invoke-direct {p0, v3}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$8;->b(Landroid/view/View;)V

    .line 602
    :cond_b
    iget v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$8;->b:I

    iget v1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$8;->c:I

    if-le v0, v1, :cond_11

    if-eqz v4, :cond_c

    .line 604
    invoke-direct {p0, v4}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$8;->b(Landroid/view/View;)V

    .line 606
    :cond_c
    iget v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$8;->b:I

    iget v1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$8;->c:I

    if-le v0, v1, :cond_11

    .line 607
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$8;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->i(Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$8;->b(Landroid/view/View;)V

    goto :goto_2

    .line 613
    :cond_d
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$8;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->h(Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;)Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 614
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$8;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->i(Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$8;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->i(Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_e

    .line 615
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$8;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->i(Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$8;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_e

    return-void

    .line 620
    :cond_e
    iget v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$8;->b:I

    iget v1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$8;->c:I

    if-gt v0, v1, :cond_11

    if-eqz v4, :cond_f

    .line 621
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_f

    .line 622
    invoke-direct {p0, v4}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$8;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    .line 626
    :cond_f
    iget v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$8;->b:I

    iget v1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$8;->c:I

    if-gt v0, v1, :cond_11

    if-eqz v3, :cond_10

    .line 627
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_10

    .line 628
    invoke-direct {p0, v3}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$8;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_10

    return-void

    .line 632
    :cond_10
    iget v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$8;->b:I

    iget v1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$8;->c:I

    if-gt v0, v1, :cond_11

    if-eqz v2, :cond_11

    .line 633
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_11

    .line 634
    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$8;->a(Landroid/view/View;)Z

    :cond_11
    :goto_2
    return-void

    :cond_12
    :goto_3
    const-string v0, "BrowseTrackHeaderManager"

    .line 553
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "layout width not changed. layoutWidth - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$8;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
