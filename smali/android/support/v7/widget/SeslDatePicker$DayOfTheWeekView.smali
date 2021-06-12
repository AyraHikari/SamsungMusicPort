.class public Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/SeslDatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DayOfTheWeekView"
.end annotation


# instance fields
.field private mDayColorSet:[I

.field private mDayLabelCalendar:Ljava/util/Calendar;

.field private mDefaultWeekdayFeatureString:Ljava/lang/String;

.field private mMonthDayLabelPaint:Landroid/graphics/Paint;

.field private mNormalDayTextColor:I

.field private mSaturdayTextColor:I

.field private mSundayTextColor:I

.field private mWeekdayFeatureString:Ljava/lang/String;

.field final synthetic this$0:Landroid/support/v7/widget/SeslDatePicker;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/SeslDatePicker;Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 2

    .line 2065
    iput-object p1, p0, Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    .line 2066
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x7

    .line 2060
    new-array p1, p1, [I

    iput-object p1, p0, Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;->mDayColorSet:[I

    const-string p1, "XXXXXXR"

    .line 2063
    iput-object p1, p0, Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;->mDefaultWeekdayFeatureString:Ljava/lang/String;

    .line 2068
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;->mDayLabelCalendar:Ljava/util/Calendar;

    .line 2070
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 2071
    sget p2, Landroid/support/v7/appcompat/R$dimen;->sesl_date_picker_month_day_label_text_size:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 2073
    sget v0, Landroid/support/v7/appcompat/R$styleable;->DatePicker_dayTextColor:I

    sget v1, Landroid/support/v7/appcompat/R$color;->sesl_date_picker_normal_text_color_light:I

    .line 2074
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 2073
    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;->mNormalDayTextColor:I

    .line 2075
    sget v0, Landroid/support/v7/appcompat/R$styleable;->DatePicker_sundayTextColor:I

    sget v1, Landroid/support/v7/appcompat/R$color;->sesl_date_picker_sunday_text_color_light:I

    .line 2076
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 2075
    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;->mSundayTextColor:I

    .line 2077
    sget p3, Landroid/support/v7/appcompat/R$color;->sesl_date_picker_saturday_week_text_color_light:I

    const/4 v0, 0x0

    invoke-static {p1, p3, v0}, Landroid/support/v4/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;->mSaturdayTextColor:I

    const-string p1, "CscFeature_Calendar_SetColorOfDays"

    .line 2080
    iget-object p3, p0, Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;->mDefaultWeekdayFeatureString:Ljava/lang/String;

    invoke-static {p1, p3}, Landroid/support/v4/feature/SeslCscFeatureReflector;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;->mWeekdayFeatureString:Ljava/lang/String;

    .line 2083
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    .line 2084
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2085
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    iget p3, p0, Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;->mNormalDayTextColor:I

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2086
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2087
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    const-string p2, "sec-roboto-light"

    const/4 p3, 0x0

    invoke-static {p2, p3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2088
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 2089
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2090
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 2095
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2098
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePicker;->access$4100(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2102
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePicker;->access$4600(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    .line 2103
    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v1}, Landroid/support/v7/widget/SeslDatePicker;->access$4700(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v2}, Landroid/support/v7/widget/SeslDatePicker;->access$4100(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    div-int/2addr v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2105
    :goto_0
    iget-object v4, p0, Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v4}, Landroid/support/v7/widget/SeslDatePicker;->access$4100(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 2106
    iget-object v4, p0, Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;->mWeekdayFeatureString:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v5, v3, 0x2

    .line 2107
    iget-object v6, p0, Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v6}, Landroid/support/v7/widget/SeslDatePicker;->access$4100(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v6

    rem-int/2addr v5, v6

    const/16 v6, 0x42

    if-eq v4, v6, :cond_2

    const/16 v6, 0x52

    if-eq v4, v6, :cond_1

    .line 2116
    iget-object v4, p0, Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;->mDayColorSet:[I

    iget v6, p0, Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;->mNormalDayTextColor:I

    aput v6, v4, v5

    goto :goto_1

    .line 2110
    :cond_1
    iget-object v4, p0, Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;->mDayColorSet:[I

    iget v6, p0, Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;->mSundayTextColor:I

    aput v6, v4, v5

    goto :goto_1

    .line 2113
    :cond_2
    iget-object v4, p0, Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;->mDayColorSet:[I

    iget v6, p0, Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;->mSaturdayTextColor:I

    aput v6, v4, v5

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2121
    :cond_3
    :goto_2
    iget-object v3, p0, Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v3}, Landroid/support/v7/widget/SeslDatePicker;->access$4100(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 2122
    iget-object v3, p0, Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v3}, Landroid/support/v7/widget/SeslDatePicker;->access$4200(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v3

    add-int/2addr v3, v2

    iget-object v4, p0, Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v4}, Landroid/support/v7/widget/SeslDatePicker;->access$4100(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v4

    rem-int/2addr v3, v4

    .line 2123
    iget-object v4, p0, Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;->mDayLabelCalendar:Ljava/util/Calendar;

    const/4 v5, 0x7

    invoke-virtual {v4, v5, v3}, Ljava/util/Calendar;->set(II)V

    .line 2125
    iget-object v4, p0, Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v4}, Landroid/support/v7/widget/SeslDatePicker;->access$4800(Landroid/support/v7/widget/SeslDatePicker;)Ljava/text/SimpleDateFormat;

    move-result-object v4

    iget-object v5, p0, Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;->mDayLabelCalendar:Ljava/util/Calendar;

    .line 2126
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    .line 2125
    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 2126
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 2128
    iget-object v5, p0, Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v5}, Landroid/support/v7/widget/SeslDatePicker;->access$1100(Landroid/support/v7/widget/SeslDatePicker;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2129
    iget-object v5, p0, Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v5}, Landroid/support/v7/widget/SeslDatePicker;->access$4100(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    sub-int/2addr v5, v2

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x1

    mul-int v5, v5, v1

    .line 2130
    iget-object v6, p0, Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v6}, Landroid/support/v7/widget/SeslDatePicker;->access$4900(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v6

    add-int/2addr v5, v6

    goto :goto_3

    :cond_4
    mul-int/lit8 v5, v2, 0x2

    add-int/lit8 v5, v5, 0x1

    mul-int v5, v5, v1

    .line 2132
    iget-object v6, p0, Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v6}, Landroid/support/v7/widget/SeslDatePicker;->access$4900(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v6

    add-int/2addr v5, v6

    .line 2135
    :goto_3
    iget-object v6, p0, Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    iget-object v7, p0, Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;->mDayColorSet:[I

    aget v3, v7, v3

    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v3, v5

    int-to-float v5, v0

    .line 2136
    iget-object v6, p0, Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v3, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method
