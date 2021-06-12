.class Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/SeslDatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CalendarPagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/SeslDatePicker;

.field views:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/support/v7/widget/SeslSimpleMonthView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/SeslDatePicker;)V
    .locals 0

    .line 1696
    iput-object p1, p0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 1694
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->views:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 3

    .line 1816
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroyItem : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v7/widget/SeslDatePicker;->access$3600(Landroid/support/v7/widget/SeslDatePicker;Ljava/lang/String;)V

    .line 1817
    check-cast p1, Landroid/support/v4/view/ViewPager;

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 1818
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->views:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 1

    .line 1838
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    const-string v0, "finishUpdate"

    invoke-static {p1, v0}, Landroid/support/v7/widget/SeslDatePicker;->access$3600(Landroid/support/v7/widget/SeslDatePicker;Ljava/lang/String;)V

    return-void
.end method

.method public getCount()I
    .locals 4

    .line 1706
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslDatePicker;->getMaxYear()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-virtual {v1}, Landroid/support/v7/widget/SeslDatePicker;->getMinYear()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1707
    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    .line 1708
    invoke-virtual {v2}, Landroid/support/v7/widget/SeslDatePicker;->getMaxMonth()I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-virtual {v3}, Landroid/support/v7/widget/SeslDatePicker;->getMinMonth()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v0, v0, 0xc

    add-int/2addr v2, v0

    .line 1707
    invoke-static {v1, v2}, Landroid/support/v7/widget/SeslDatePicker;->access$902(Landroid/support/v7/widget/SeslDatePicker;I)I

    .line 1710
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePicker;->access$1500(Landroid/support/v7/widget/SeslDatePicker;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1711
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-virtual {v2}, Landroid/support/v7/widget/SeslDatePicker;->getMaxYear()I

    move-result v2

    invoke-static {v1, v2}, Landroid/support/v7/widget/SeslDatePicker;->access$3500(Landroid/support/v7/widget/SeslDatePicker;I)I

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v7/widget/SeslDatePicker;->access$902(Landroid/support/v7/widget/SeslDatePicker;I)I

    .line 1714
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePicker;->access$900(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, -0x2

    return p1
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 25

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 1719
    new-instance v15, Landroid/support/v7/widget/SeslSimpleMonthView;

    iget-object v2, v0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v2}, Landroid/support/v7/widget/SeslDatePicker;->access$500(Landroid/support/v7/widget/SeslDatePicker;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v15, v2}, Landroid/support/v7/widget/SeslSimpleMonthView;-><init>(Landroid/content/Context;)V

    .line 1720
    iget-object v2, v0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "instantiateItem : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/support/v7/widget/SeslDatePicker;->access$3600(Landroid/support/v7/widget/SeslDatePicker;Ljava/lang/String;)V

    const/4 v13, 0x1

    .line 1721
    invoke-virtual {v15, v13}, Landroid/support/v7/widget/SeslSimpleMonthView;->setClickable(Z)V

    .line 1722
    iget-object v2, v0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-virtual {v15, v2}, Landroid/support/v7/widget/SeslSimpleMonthView;->setOnDayClickListener(Landroid/support/v7/widget/SeslSimpleMonthView$OnDayClickListener;)V

    .line 1724
    iget-object v2, v0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-virtual {v15, v2}, Landroid/support/v7/widget/SeslSimpleMonthView;->setOnDeactivatedDayClickListener(Landroid/support/v7/widget/SeslSimpleMonthView$OnDeactivatedDayClickListener;)V

    .line 1726
    invoke-virtual {v15}, Landroid/support/v7/widget/SeslSimpleMonthView;->setTextColor()V

    .line 1729
    iget-object v2, v0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-virtual {v2}, Landroid/support/v7/widget/SeslDatePicker;->getMinMonth()I

    move-result v2

    add-int/2addr v2, v1

    .line 1731
    div-int/lit8 v3, v2, 0xc

    iget-object v4, v0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-virtual {v4}, Landroid/support/v7/widget/SeslDatePicker;->getMinYear()I

    move-result v4

    add-int/2addr v3, v4

    .line 1732
    rem-int/lit8 v2, v2, 0xc

    .line 1736
    iget-object v4, v0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v4}, Landroid/support/v7/widget/SeslDatePicker;->access$1500(Landroid/support/v7/widget/SeslDatePicker;)Z

    move-result v4

    const/4 v12, 0x0

    if-eqz v4, :cond_0

    .line 1737
    iget-object v2, v0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v2, v1}, Landroid/support/v7/widget/SeslDatePicker;->access$3700(Landroid/support/v7/widget/SeslDatePicker;I)Landroid/support/v7/widget/SeslDatePicker$LunarDate;

    move-result-object v2

    .line 1738
    iget v3, v2, Landroid/support/v7/widget/SeslDatePicker$LunarDate;->year:I

    .line 1739
    iget v4, v2, Landroid/support/v7/widget/SeslDatePicker$LunarDate;->month:I

    .line 1740
    iget-boolean v2, v2, Landroid/support/v7/widget/SeslDatePicker$LunarDate;->isLeapMonth:Z

    move v5, v3

    goto :goto_0

    :cond_0
    move v4, v2

    move v5, v3

    const/4 v2, 0x0

    .line 1745
    :goto_0
    iget-object v3, v0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v3}, Landroid/support/v7/widget/SeslDatePicker;->access$1400(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v6, -0x1

    const/4 v7, 0x5

    const/4 v8, 0x2

    if-ne v3, v5, :cond_1

    iget-object v3, v0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    .line 1746
    invoke-static {v3}, Landroid/support/v7/widget/SeslDatePicker;->access$1400(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v3, v4, :cond_1

    .line 1747
    iget-object v3, v0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v3}, Landroid/support/v7/widget/SeslDatePicker;->access$1400(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    goto :goto_1

    :cond_1
    const/4 v3, -0x1

    .line 1750
    :goto_1
    iget-object v9, v0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v9}, Landroid/support/v7/widget/SeslDatePicker;->access$1500(Landroid/support/v7/widget/SeslDatePicker;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1752
    iget-object v3, v0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v3}, Landroid/support/v7/widget/SeslDatePicker;->access$1600(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v3

    if-ne v3, v5, :cond_2

    iget-object v3, v0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v3}, Landroid/support/v7/widget/SeslDatePicker;->access$1700(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v3

    if-ne v3, v4, :cond_2

    .line 1753
    iget-object v3, v0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v3}, Landroid/support/v7/widget/SeslDatePicker;->access$1800(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v3

    goto :goto_2

    :cond_2
    const/4 v3, -0x1

    .line 1756
    :cond_3
    :goto_2
    iget-object v6, v0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v6}, Landroid/support/v7/widget/SeslDatePicker;->access$3800(Landroid/support/v7/widget/SeslDatePicker;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1757
    iget-object v6, v0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v6}, Landroid/support/v7/widget/SeslDatePicker;->access$1500(Landroid/support/v7/widget/SeslDatePicker;)Z

    move-result v6

    iget-object v9, v0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    iget-object v9, v9, Landroid/support/v7/widget/SeslDatePicker;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    invoke-virtual {v15, v6, v2, v9}, Landroid/support/v7/widget/SeslSimpleMonthView;->setLunar(ZZLdalvik/system/PathClassLoader;)V

    .line 1760
    :cond_4
    iget-object v2, v0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v2}, Landroid/support/v7/widget/SeslDatePicker;->access$2000(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 1761
    iget-object v6, v0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v6}, Landroid/support/v7/widget/SeslDatePicker;->access$2000(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 1762
    iget-object v9, v0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v9}, Landroid/support/v7/widget/SeslDatePicker;->access$2000(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 1763
    iget-object v10, v0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v10}, Landroid/support/v7/widget/SeslDatePicker;->access$2500(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object v10

    invoke-virtual {v10, v13}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 1764
    iget-object v11, v0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v11}, Landroid/support/v7/widget/SeslDatePicker;->access$2500(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 1765
    iget-object v11, v0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v11}, Landroid/support/v7/widget/SeslDatePicker;->access$2500(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 1767
    iget-object v11, v0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v11}, Landroid/support/v7/widget/SeslDatePicker;->access$1500(Landroid/support/v7/widget/SeslDatePicker;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1768
    iget-object v2, v0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v2}, Landroid/support/v7/widget/SeslDatePicker;->access$2100(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v2

    .line 1769
    iget-object v6, v0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v6}, Landroid/support/v7/widget/SeslDatePicker;->access$2200(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v6

    .line 1770
    iget-object v7, v0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v7}, Landroid/support/v7/widget/SeslDatePicker;->access$2300(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v7

    .line 1771
    iget-object v8, v0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v8}, Landroid/support/v7/widget/SeslDatePicker;->access$2600(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v8

    .line 1772
    iget-object v9, v0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v9}, Landroid/support/v7/widget/SeslDatePicker;->access$2700(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v9

    .line 1773
    iget-object v10, v0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v10}, Landroid/support/v7/widget/SeslDatePicker;->access$2800(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v10

    move v11, v2

    move/from16 v16, v6

    move/from16 v17, v7

    move/from16 v20, v8

    move/from16 v21, v9

    move/from16 v22, v10

    goto :goto_3

    :cond_5
    move v11, v2

    move/from16 v16, v6

    move/from16 v22, v7

    move/from16 v21, v8

    move/from16 v17, v9

    move/from16 v20, v10

    .line 1776
    :goto_3
    iget-object v2, v0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-virtual {v2}, Landroid/support/v7/widget/SeslDatePicker;->getFirstDayOfWeek()I

    move-result v6

    const/4 v7, 0x1

    const/16 v8, 0x1f

    iget-object v2, v0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    .line 1777
    invoke-static {v2}, Landroid/support/v7/widget/SeslDatePicker;->access$3900(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object v9

    iget-object v2, v0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v2}, Landroid/support/v7/widget/SeslDatePicker;->access$4000(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object v10

    iget-object v2, v0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v2}, Landroid/support/v7/widget/SeslDatePicker;->access$2400(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v14

    iget-object v2, v0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    .line 1778
    invoke-static {v2}, Landroid/support/v7/widget/SeslDatePicker;->access$2900(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v18

    iget-object v2, v0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v2}, Landroid/support/v7/widget/SeslDatePicker;->access$1900(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v19

    move-object v2, v15

    move/from16 v12, v16

    const/16 v23, 0x1

    move/from16 v13, v17

    move-object/from16 v24, v15

    move/from16 v15, v20

    move/from16 v16, v21

    move/from16 v17, v22

    .line 1776
    invoke-virtual/range {v2 .. v19}, Landroid/support/v7/widget/SeslSimpleMonthView;->setMonthParams(IIIIIILjava/util/Calendar;Ljava/util/Calendar;IIIIIIIII)V

    if-nez v1, :cond_6

    .line 1782
    invoke-virtual/range {v24 .. v24}, Landroid/support/v7/widget/SeslSimpleMonthView;->setFirstMonth()V

    .line 1784
    :cond_6
    iget-object v2, v0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v2}, Landroid/support/v7/widget/SeslDatePicker;->access$900(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_7

    .line 1785
    invoke-virtual/range {v24 .. v24}, Landroid/support/v7/widget/SeslSimpleMonthView;->setLastMonth()V

    .line 1788
    :cond_7
    iget-object v2, v0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v2}, Landroid/support/v7/widget/SeslDatePicker;->access$1500(Landroid/support/v7/widget/SeslDatePicker;)Z

    move-result v2

    if-eqz v2, :cond_9

    if-eqz v1, :cond_8

    .line 1791
    iget-object v2, v0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    add-int/lit8 v3, v1, -0x1

    invoke-static {v2, v3}, Landroid/support/v7/widget/SeslDatePicker;->access$3700(Landroid/support/v7/widget/SeslDatePicker;I)Landroid/support/v7/widget/SeslDatePicker$LunarDate;

    move-result-object v2

    .line 1792
    iget-boolean v2, v2, Landroid/support/v7/widget/SeslDatePicker$LunarDate;->isLeapMonth:Z

    if-eqz v2, :cond_8

    .line 1793
    invoke-virtual/range {v24 .. v24}, Landroid/support/v7/widget/SeslSimpleMonthView;->setPrevMonthLeap()V

    .line 1797
    :cond_8
    iget-object v2, v0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v2}, Landroid/support/v7/widget/SeslDatePicker;->access$900(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_9

    .line 1798
    iget-object v2, v0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    add-int/lit8 v3, v1, 0x1

    invoke-static {v2, v3}, Landroid/support/v7/widget/SeslDatePicker;->access$3700(Landroid/support/v7/widget/SeslDatePicker;I)Landroid/support/v7/widget/SeslDatePicker$LunarDate;

    move-result-object v2

    .line 1799
    iget-boolean v2, v2, Landroid/support/v7/widget/SeslDatePicker$LunarDate;->isLeapMonth:Z

    if-eqz v2, :cond_9

    .line 1800
    invoke-virtual/range {v24 .. v24}, Landroid/support/v7/widget/SeslSimpleMonthView;->setNextMonthLeap()V

    .line 1806
    :cond_9
    iget-object v2, v0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-virtual/range {v24 .. v24}, Landroid/support/v7/widget/SeslSimpleMonthView;->getNumDays()I

    move-result v3

    invoke-static {v2, v3}, Landroid/support/v7/widget/SeslDatePicker;->access$4102(Landroid/support/v7/widget/SeslDatePicker;I)I

    .line 1807
    iget-object v2, v0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-virtual/range {v24 .. v24}, Landroid/support/v7/widget/SeslSimpleMonthView;->getWeekStart()I

    move-result v3

    invoke-static {v2, v3}, Landroid/support/v7/widget/SeslDatePicker;->access$4202(Landroid/support/v7/widget/SeslDatePicker;I)I

    .line 1808
    move-object/from16 v2, p1

    check-cast v2, Landroid/support/v4/view/ViewPager;

    move-object/from16 v3, v24

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    .line 1809
    iget-object v2, v0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->views:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v3
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 1823
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public startUpdate(Landroid/view/View;)V
    .locals 1

    .line 1833
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    const-string v0, "startUpdate"

    invoke-static {p1, v0}, Landroid/support/v7/widget/SeslDatePicker;->access$3600(Landroid/support/v7/widget/SeslDatePicker;Ljava/lang/String;)V

    return-void
.end method
