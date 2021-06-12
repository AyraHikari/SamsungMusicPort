.class Landroid/support/v7/widget/SeslDatePicker$CalendarPageChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/SeslDatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CalendarPageChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/SeslDatePicker;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/SeslDatePicker;)V
    .locals 0

    .line 1845
    iput-object p1, p0, Landroid/support/v7/widget/SeslDatePicker$CalendarPageChangeListener;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/SeslDatePicker;Landroid/support/v7/widget/SeslDatePicker$1;)V
    .locals 0

    .line 1845
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslDatePicker$CalendarPageChangeListener;-><init>(Landroid/support/v7/widget/SeslDatePicker;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 7

    .line 1856
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker$CalendarPageChangeListener;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePicker;->access$1100(Landroid/support/v7/widget/SeslDatePicker;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1857
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker$CalendarPageChangeListener;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v0, v1}, Landroid/support/v7/widget/SeslDatePicker;->access$1202(Landroid/support/v7/widget/SeslDatePicker;Z)Z

    .line 1860
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker$CalendarPageChangeListener;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePicker;->access$4300(Landroid/support/v7/widget/SeslDatePicker;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1861
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker$CalendarPageChangeListener;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1, v1}, Landroid/support/v7/widget/SeslDatePicker;->access$4302(Landroid/support/v7/widget/SeslDatePicker;Z)Z

    return-void

    .line 1866
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker$CalendarPageChangeListener;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v0, p1}, Landroid/support/v7/widget/SeslDatePicker;->access$802(Landroid/support/v7/widget/SeslDatePicker;I)I

    .line 1868
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker$CalendarPageChangeListener;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslDatePicker;->getMinMonth()I

    move-result v0

    add-int/2addr v0, p1

    .line 1870
    div-int/lit8 v2, v0, 0xc

    iget-object v3, p0, Landroid/support/v7/widget/SeslDatePicker$CalendarPageChangeListener;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-virtual {v3}, Landroid/support/v7/widget/SeslDatePicker;->getMinYear()I

    move-result v3

    add-int/2addr v2, v3

    .line 1871
    rem-int/lit8 v0, v0, 0xc

    .line 1872
    iget-object v3, p0, Landroid/support/v7/widget/SeslDatePicker$CalendarPageChangeListener;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v3}, Landroid/support/v7/widget/SeslDatePicker;->access$1400(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 1874
    iget-object v5, p0, Landroid/support/v7/widget/SeslDatePicker$CalendarPageChangeListener;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v5}, Landroid/support/v7/widget/SeslDatePicker;->access$1500(Landroid/support/v7/widget/SeslDatePicker;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1875
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker$CalendarPageChangeListener;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v0, p1}, Landroid/support/v7/widget/SeslDatePicker;->access$3700(Landroid/support/v7/widget/SeslDatePicker;I)Landroid/support/v7/widget/SeslDatePicker$LunarDate;

    move-result-object v0

    .line 1876
    iget v2, v0, Landroid/support/v7/widget/SeslDatePicker$LunarDate;->year:I

    .line 1877
    iget v3, v0, Landroid/support/v7/widget/SeslDatePicker$LunarDate;->month:I

    .line 1878
    iget-object v5, p0, Landroid/support/v7/widget/SeslDatePicker$CalendarPageChangeListener;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v5}, Landroid/support/v7/widget/SeslDatePicker;->access$1800(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v5

    .line 1879
    iget-object v6, p0, Landroid/support/v7/widget/SeslDatePicker$CalendarPageChangeListener;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    iget-boolean v0, v0, Landroid/support/v7/widget/SeslDatePicker$LunarDate;->isLeapMonth:Z

    invoke-static {v6, v0}, Landroid/support/v7/widget/SeslDatePicker;->access$3002(Landroid/support/v7/widget/SeslDatePicker;Z)Z

    move v0, v3

    move v3, v5

    .line 1885
    :cond_2
    iget-object v5, p0, Landroid/support/v7/widget/SeslDatePicker$CalendarPageChangeListener;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v5}, Landroid/support/v7/widget/SeslDatePicker;->access$100(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-eq v2, v5, :cond_3

    const/4 v1, 0x1

    .line 1889
    :cond_3
    iget-object v5, p0, Landroid/support/v7/widget/SeslDatePicker$CalendarPageChangeListener;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v5}, Landroid/support/v7/widget/SeslDatePicker;->access$100(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5, v6, v2}, Ljava/util/Calendar;->set(II)V

    .line 1890
    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePicker$CalendarPageChangeListener;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v2}, Landroid/support/v7/widget/SeslDatePicker;->access$100(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object v2

    const/4 v5, 0x2

    invoke-virtual {v2, v5, v0}, Ljava/util/Calendar;->set(II)V

    .line 1891
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker$CalendarPageChangeListener;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePicker;->access$100(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1892
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker$CalendarPageChangeListener;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePicker;->access$100(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v0

    if-le v3, v0, :cond_4

    .line 1893
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker$CalendarPageChangeListener;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePicker;->access$100(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v3

    .line 1895
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker$CalendarPageChangeListener;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePicker;->access$100(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 1897
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker$CalendarPageChangeListener;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePicker;->access$4400(Landroid/support/v7/widget/SeslDatePicker;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v2, 0x3e8

    .line 1898
    iput v2, v0, Landroid/os/Message;->what:I

    .line 1899
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1900
    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker$CalendarPageChangeListener;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v1}, Landroid/support/v7/widget/SeslDatePicker;->access$4400(Landroid/support/v7/widget/SeslDatePicker;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1902
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker$CalendarPageChangeListener;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePicker;->access$4400(Landroid/support/v7/widget/SeslDatePicker;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x3e9

    .line 1903
    iput v1, v0, Landroid/os/Message;->what:I

    .line 1904
    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker$CalendarPageChangeListener;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v1}, Landroid/support/v7/widget/SeslDatePicker;->access$4400(Landroid/support/v7/widget/SeslDatePicker;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1907
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker$CalendarPageChangeListener;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePicker;->access$4500(Landroid/support/v7/widget/SeslDatePicker;)Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;

    move-result-object v0

    iget-object v0, v0, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->views:Landroid/util/SparseArray;

    .line 1908
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x10

    if-eqz v1, :cond_5

    .line 1909
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/SeslSimpleMonthView;

    invoke-virtual {v1}, Landroid/support/v7/widget/SeslSimpleMonthView;->clearAccessibilityFocus()V

    .line 1910
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_5

    .line 1911
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/SeslSimpleMonthView;

    invoke-virtual {v1, v6}, Landroid/support/v7/widget/SeslSimpleMonthView;->setImportantForAccessibility(I)V

    :cond_5
    if-eqz p1, :cond_6

    add-int/lit8 v1, p1, -0x1

    .line 1914
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 1915
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/SeslSimpleMonthView;

    invoke-virtual {v3}, Landroid/support/v7/widget/SeslSimpleMonthView;->clearAccessibilityFocus()V

    .line 1916
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v2, :cond_6

    .line 1917
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/SeslSimpleMonthView;

    invoke-virtual {v1, v5}, Landroid/support/v7/widget/SeslSimpleMonthView;->setImportantForAccessibility(I)V

    .line 1920
    :cond_6
    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker$CalendarPageChangeListener;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v1}, Landroid/support/v7/widget/SeslDatePicker;->access$900(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v1

    sub-int/2addr v1, v6

    if-eq p1, v1, :cond_7

    add-int/2addr p1, v6

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 1921
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/SeslSimpleMonthView;

    invoke-virtual {v1}, Landroid/support/v7/widget/SeslSimpleMonthView;->clearAccessibilityFocus()V

    .line 1922
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_7

    .line 1923
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/SeslSimpleMonthView;

    invoke-virtual {p1, v5}, Landroid/support/v7/widget/SeslSimpleMonthView;->setImportantForAccessibility(I)V

    :cond_7
    return-void
.end method
