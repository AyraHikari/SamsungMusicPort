.class Landroid/support/v7/widget/SeslSimpleMonthView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/SeslSimpleMonthView$OnDeactivatedDayClickListener;,
        Landroid/support/v7/widget/SeslSimpleMonthView$OnDayClickListener;,
        Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;
    }
.end annotation


# static fields
.field private static final DEFAULT_MONTH_LINE:I = 0x6

.field private static final DEFAULT_NUM_DAYS:I = 0x7

.field private static final DEFAULT_WEEK_DAY_STRING_FEATURE:Ljava/lang/String; = "XXXXXXR"

.field private static final DEFAULT_WEEK_START:I = 0x1

.field private static final DIVISOR_FOR_CIRCLE_POSITION_Y:F = 2.7f

.field private static final LEAP_MONTH:I = 0x1

.field private static final LEAP_MONTH_WEIGHT:F = 0.5f

.field private static final MAX_MONTH_VIEW_ID:I = 0x2a

.field private static final MIN_HEIGHT:I = 0xa

.field private static final MONTH_WEIGHT:I = 0x64

.field private static final SIZE_UNSPECIFIED:I = -0x1

.field private static final TAG:Ljava/lang/String; = "SemSimpleMonthView"

.field private static final TAG_CSCFEATURE_CALENDAR_SETCOLOROFDAYS:Ljava/lang/String; = "CscFeature_Calendar_SetColorOfDays"

.field private static final YEAR_WEIGHT:I = 0x2710


# instance fields
.field private mAbnormalSelectedDayPaint:Landroid/graphics/Paint;

.field private final mAbnormalStartEndDateBackgroundAlpha:I

.field private final mCalendar:Ljava/util/Calendar;

.field private mCalendarWidth:I

.field private mContext:Landroid/content/Context;

.field private mConvertLunarToSolarMethod:Ljava/lang/reflect/Method;

.field private mDayColorSet:[I

.field private mDayLengthMethod:Ljava/lang/reflect/Method;

.field private mDayNumberDisabledAlpha:I

.field private mDayNumberPaint:Landroid/graphics/Paint;

.field private mDayNumberSelectedPaint:Landroid/graphics/Paint;

.field private mDayOfWeekStart:I

.field private mDaySelectedCircleSize:I

.field private mDaySelectedCircleStroke:I

.field private mEnabledDayEnd:I

.field private mEnabledDayStart:I

.field private mEndDay:I

.field private mEndMonth:I

.field private mEndYear:I

.field private mGetDayMethod:Ljava/lang/reflect/Method;

.field private mGetMonthMethod:Ljava/lang/reflect/Method;

.field private mGetWeekDayMethod:Ljava/lang/reflect/Method;

.field private mGetYearMethod:Ljava/lang/reflect/Method;

.field private mIsFirstMonth:Z

.field private mIsLastMonth:Z

.field private mIsLeapEndMonth:I

.field private mIsLeapMonth:Z

.field private mIsLeapStartMonth:I

.field private mIsLunar:Z

.field private mIsNextMonthLeap:Z

.field private mIsPrevMonthLeap:Z

.field private mIsRTL:Z

.field private mLockAccessibilityDelegate:Z

.field private mMaxDate:Ljava/util/Calendar;

.field private mMinDate:Ljava/util/Calendar;

.field private mMiniDayNumberTextSize:I

.field private mMode:I

.field private mMonth:I

.field private mNormalTextColor:I

.field private mNumCells:I

.field private mNumDays:I

.field private mOnDayClickListener:Landroid/support/v7/widget/SeslSimpleMonthView$OnDayClickListener;

.field private mOnDeactivatedDayClickListener:Landroid/support/v7/widget/SeslSimpleMonthView$OnDeactivatedDayClickListener;

.field private mPadding:I

.field private mPathClassLoader:Ldalvik/system/PathClassLoader;

.field private final mPrevNextMonthDayNumberAlpha:I

.field private mSaturdayTextColor:I

.field private mSelectedDay:I

.field private mSelectedDayColor:I

.field private mSelectedDayNumberTextColor:I

.field private mSolarLunarConverter:Ljava/lang/Object;

.field private mStartDay:I

.field private mStartMonth:I

.field private mStartYear:I

.field private mSundayTextColor:I

.field private mTempDate:Ljava/util/Calendar;

.field private final mTouchHelper:Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;

.field private mWeekHeight:I

.field private mWeekStart:I

.field private mYear:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 175
    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/SeslSimpleMonthView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101035c

    .line 179
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/SeslSimpleMonthView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 183
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x7

    .line 110
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayColorSet:[I

    const/4 v1, 0x0

    .line 111
    iput v1, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMode:I

    .line 112
    iput v1, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayOfWeekStart:I

    .line 115
    iput v1, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mPadding:I

    const/4 v2, -0x1

    .line 118
    iput v2, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mSelectedDay:I

    const/4 v2, 0x1

    .line 121
    iput v2, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mWeekStart:I

    .line 124
    iput v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mNumDays:I

    .line 127
    iget v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mNumDays:I

    iput v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mNumCells:I

    .line 130
    iput v2, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mEnabledDayStart:I

    const/16 v0, 0x1f

    .line 133
    iput v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mEnabledDayEnd:I

    .line 139
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mCalendar:Ljava/util/Calendar;

    .line 140
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMinDate:Ljava/util/Calendar;

    .line 141
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMaxDate:Ljava/util/Calendar;

    .line 142
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mTempDate:Ljava/util/Calendar;

    .line 152
    iput-boolean v1, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsLunar:Z

    .line 153
    iput-boolean v1, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsLeapMonth:Z

    const/4 v0, 0x0

    .line 155
    iput-object v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    .line 168
    iput-boolean v1, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsFirstMonth:Z

    .line 169
    iput-boolean v1, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsLastMonth:Z

    .line 170
    iput-boolean v1, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsPrevMonthLeap:Z

    .line 171
    iput-boolean v1, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsNextMonthLeap:Z

    .line 184
    iput-object p1, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mContext:Landroid/content/Context;

    .line 185
    invoke-direct {p0}, Landroid/support/v7/widget/SeslSimpleMonthView;->isRTL()Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsRTL:Z

    .line 187
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 189
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 190
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget v4, Landroid/support/v7/appcompat/R$attr;->colorPrimaryDark:I

    invoke-virtual {p1, v4, v3, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 191
    iget p1, v3, Landroid/util/TypedValue;->resourceId:I

    if-eqz p1, :cond_0

    .line 192
    iget p1, v3, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mSelectedDayColor:I

    goto :goto_0

    .line 194
    :cond_0
    iget p1, v3, Landroid/util/TypedValue;->data:I

    iput p1, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mSelectedDayColor:I

    .line 197
    :goto_0
    sget p1, Landroid/support/v7/appcompat/R$color;->sesl_date_picker_sunday_number_text_color_light:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mSundayTextColor:I

    .line 198
    sget p1, Landroid/support/v7/appcompat/R$color;->sesl_date_picker_saturday_text_color_light:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mSaturdayTextColor:I

    .line 200
    iget-object p1, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/support/v7/appcompat/R$styleable;->DatePicker:[I

    invoke-virtual {p1, p2, v3, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 202
    sget p2, Landroid/support/v7/appcompat/R$styleable;->DatePicker_dayNumberTextColor:I

    sget p3, Landroid/support/v7/appcompat/R$color;->sesl_date_picker_normal_day_number_text_color_light:I

    .line 203
    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    .line 202
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mNormalTextColor:I

    .line 205
    sget p2, Landroid/support/v7/appcompat/R$styleable;->DatePicker_selectedDayNumberTextColor:I

    sget p3, Landroid/support/v7/appcompat/R$color;->sesl_date_picker_selected_day_number_text_color_light:I

    .line 206
    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    .line 205
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mSelectedDayNumberTextColor:I

    .line 208
    sget p2, Landroid/support/v7/appcompat/R$styleable;->DatePicker_dayNumberDisabledAlpha:I

    sget p3, Landroid/support/v7/appcompat/R$integer;->sesl_day_number_disabled_alpha_light:I

    .line 209
    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    .line 208
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayNumberDisabledAlpha:I

    .line 210
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 212
    sget p1, Landroid/support/v7/appcompat/R$dimen;->sesl_date_picker_calendar_week_height:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mWeekHeight:I

    .line 213
    sget p1, Landroid/support/v7/appcompat/R$dimen;->sesl_date_picker_selected_day_circle_radius:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDaySelectedCircleSize:I

    .line 215
    sget p1, Landroid/support/v7/appcompat/R$dimen;->sesl_date_picker_selected_day_circle_stroke:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDaySelectedCircleStroke:I

    .line 217
    sget p1, Landroid/support/v7/appcompat/R$dimen;->sesl_date_picker_day_number_text_size:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMiniDayNumberTextSize:I

    .line 219
    sget p1, Landroid/support/v7/appcompat/R$dimen;->sesl_date_picker_calendar_view_width:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mCalendarWidth:I

    .line 220
    sget p1, Landroid/support/v7/appcompat/R$dimen;->sesl_date_picker_calendar_view_padding:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mPadding:I

    .line 223
    new-instance p1, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;

    invoke-direct {p1, p0, p0}, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;-><init>(Landroid/support/v7/widget/SeslSimpleMonthView;Landroid/view/View;)V

    iput-object p1, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mTouchHelper:Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;

    .line 224
    iget-object p1, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mTouchHelper:Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;

    invoke-static {p0, p1}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 225
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/SeslSimpleMonthView;->setImportantForAccessibility(I)V

    .line 226
    iput-boolean v2, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mLockAccessibilityDelegate:Z

    .line 228
    iget-object p1, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "current_sec_active_themepackage"

    invoke-static {p1, p2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 231
    sget p1, Landroid/support/v7/appcompat/R$integer;->sesl_day_number_theme_disabled_alpha:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayNumberDisabledAlpha:I

    .line 234
    :cond_1
    sget p1, Landroid/support/v7/appcompat/R$integer;->sesl_day_number_theme_disabled_alpha:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mPrevNextMonthDayNumberAlpha:I

    .line 235
    sget p1, Landroid/support/v7/appcompat/R$integer;->sesl_date_picker_abnormal_start_end_date_background_alpha:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mAbnormalStartEndDateBackgroundAlpha:I

    .line 239
    invoke-direct {p0}, Landroid/support/v7/widget/SeslSimpleMonthView;->initView()V

    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/widget/SeslSimpleMonthView;FF)I
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/SeslSimpleMonthView;->getDayFromLocation(FF)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Landroid/support/v7/widget/SeslSimpleMonthView;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsFirstMonth:Z

    return p0
.end method

.method static synthetic access$1000(Landroid/support/v7/widget/SeslSimpleMonthView;)I
    .locals 0

    .line 59
    iget p0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mYear:I

    return p0
.end method

.method static synthetic access$1100(Landroid/support/v7/widget/SeslSimpleMonthView;IIZ)I
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/SeslSimpleMonthView;->getDaysInMonthLunar(IIZ)I

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Landroid/support/v7/widget/SeslSimpleMonthView;IIIZ)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/SeslSimpleMonthView;->onDeactivatedDayClick(IIIZ)V

    return-void
.end method

.method static synthetic access$1300(Landroid/support/v7/widget/SeslSimpleMonthView;)I
    .locals 0

    .line 59
    iget p0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mNumCells:I

    return p0
.end method

.method static synthetic access$1400(Landroid/support/v7/widget/SeslSimpleMonthView;III)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/SeslSimpleMonthView;->onDayClick(III)V

    return-void
.end method

.method static synthetic access$1500(Landroid/support/v7/widget/SeslSimpleMonthView;)I
    .locals 0

    .line 59
    iget p0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mPadding:I

    return p0
.end method

.method static synthetic access$1600(Landroid/support/v7/widget/SeslSimpleMonthView;)Landroid/content/Context;
    .locals 0

    .line 59
    iget-object p0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1700(Landroid/support/v7/widget/SeslSimpleMonthView;)I
    .locals 0

    .line 59
    iget p0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mWeekHeight:I

    return p0
.end method

.method static synthetic access$1800(Landroid/support/v7/widget/SeslSimpleMonthView;)I
    .locals 0

    .line 59
    iget p0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mCalendarWidth:I

    return p0
.end method

.method static synthetic access$1900(Landroid/support/v7/widget/SeslSimpleMonthView;)I
    .locals 0

    .line 59
    iget p0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mNumDays:I

    return p0
.end method

.method static synthetic access$200(Landroid/support/v7/widget/SeslSimpleMonthView;)I
    .locals 0

    .line 59
    iget p0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mEnabledDayStart:I

    return p0
.end method

.method static synthetic access$2000(Landroid/support/v7/widget/SeslSimpleMonthView;)Ldalvik/system/PathClassLoader;
    .locals 0

    .line 59
    iget-object p0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    return-object p0
.end method

.method static synthetic access$2100(Landroid/support/v7/widget/SeslSimpleMonthView;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsPrevMonthLeap:Z

    return p0
.end method

.method static synthetic access$2200(Landroid/support/v7/widget/SeslSimpleMonthView;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsNextMonthLeap:Z

    return p0
.end method

.method static synthetic access$2300(Landroid/support/v7/widget/SeslSimpleMonthView;)Ljava/lang/Object;
    .locals 0

    .line 59
    iget-object p0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mSolarLunarConverter:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$2400(Landroid/support/v7/widget/SeslSimpleMonthView;)Ljava/lang/reflect/Method;
    .locals 0

    .line 59
    iget-object p0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mConvertLunarToSolarMethod:Ljava/lang/reflect/Method;

    return-object p0
.end method

.method static synthetic access$2500(Landroid/support/v7/widget/SeslSimpleMonthView;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/SeslSimpleMonthView;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2600(Landroid/support/v7/widget/SeslSimpleMonthView;)Ljava/lang/reflect/Method;
    .locals 0

    .line 59
    iget-object p0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mGetYearMethod:Ljava/lang/reflect/Method;

    return-object p0
.end method

.method static synthetic access$2700(Landroid/support/v7/widget/SeslSimpleMonthView;)Ljava/lang/reflect/Method;
    .locals 0

    .line 59
    iget-object p0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mGetMonthMethod:Ljava/lang/reflect/Method;

    return-object p0
.end method

.method static synthetic access$2800(Landroid/support/v7/widget/SeslSimpleMonthView;)Ljava/lang/reflect/Method;
    .locals 0

    .line 59
    iget-object p0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mGetDayMethod:Ljava/lang/reflect/Method;

    return-object p0
.end method

.method static synthetic access$2900(Landroid/support/v7/widget/SeslSimpleMonthView;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/SeslSimpleMonthView;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Landroid/support/v7/widget/SeslSimpleMonthView;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsLastMonth:Z

    return p0
.end method

.method static synthetic access$400(Landroid/support/v7/widget/SeslSimpleMonthView;)I
    .locals 0

    .line 59
    iget p0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mEnabledDayEnd:I

    return p0
.end method

.method static synthetic access$500(Landroid/support/v7/widget/SeslSimpleMonthView;)I
    .locals 0

    .line 59
    invoke-direct {p0}, Landroid/support/v7/widget/SeslSimpleMonthView;->findDayOffset()I

    move-result p0

    return p0
.end method

.method static synthetic access$600(Landroid/support/v7/widget/SeslSimpleMonthView;)I
    .locals 0

    .line 59
    iget p0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mSelectedDay:I

    return p0
.end method

.method static synthetic access$700(Landroid/support/v7/widget/SeslSimpleMonthView;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsLunar:Z

    return p0
.end method

.method static synthetic access$800(Landroid/support/v7/widget/SeslSimpleMonthView;)I
    .locals 0

    .line 59
    iget p0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMonth:I

    return p0
.end method

.method static synthetic access$900(Landroid/support/v7/widget/SeslSimpleMonthView;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsLeapMonth:Z

    return p0
.end method

.method private drawDays(Landroid/graphics/Canvas;)V
    .locals 37

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 592
    iget v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mWeekHeight:I

    const/4 v8, 0x2

    mul-int/lit8 v1, v1, 0x2

    div-int/lit8 v1, v1, 0x3

    .line 593
    iget v2, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mCalendarWidth:I

    iget v3, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mNumDays:I

    mul-int/lit8 v3, v3, 0x2

    div-int v9, v2, v3

    .line 594
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/SeslSimpleMonthView;->findDayOffset()I

    move-result v10

    .line 598
    iget v2, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMiniDayNumberTextSize:I

    int-to-float v2, v2

    const v3, 0x402ccccd    # 2.7f

    div-float v11, v2, v3

    .line 605
    iget v12, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mStartYear:I

    .line 606
    iget v2, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mStartMonth:I

    int-to-float v2, v2

    .line 607
    iget v13, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mStartDay:I

    .line 608
    iget v14, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mEndYear:I

    .line 609
    iget v3, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mEndMonth:I

    int-to-float v3, v3

    .line 610
    iget v15, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mEndDay:I

    .line 612
    iget-boolean v4, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsLunar:Z

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v6, 0x1

    if-eqz v4, :cond_0

    iget v4, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsLeapStartMonth:I

    if-ne v4, v6, :cond_0

    add-float/2addr v2, v5

    :cond_0
    move/from16 v16, v2

    .line 616
    iget-boolean v2, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsLunar:Z

    if-eqz v2, :cond_1

    iget v2, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsLeapEndMonth:I

    if-ne v2, v6, :cond_1

    add-float/2addr v3, v5

    :cond_1
    move/from16 v17, v3

    .line 620
    iget v4, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mYear:I

    .line 621
    iget v2, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMonth:I

    int-to-float v2, v2

    .line 622
    iget-boolean v3, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsLunar:Z

    if-eqz v3, :cond_2

    iget-boolean v3, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsLeapMonth:Z

    if-eqz v3, :cond_2

    add-float/2addr v2, v5

    :cond_2
    move/from16 v18, v2

    mul-int/lit16 v2, v12, 0x2710

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v5, v16, v3

    float-to-int v5, v5

    add-int/2addr v2, v5

    mul-int/lit16 v5, v14, 0x2710

    mul-float v8, v17, v3

    float-to-int v8, v8

    add-int/2addr v5, v8

    mul-int/lit16 v8, v4, 0x2710

    mul-float v3, v3, v18

    float-to-int v3, v3

    add-int/2addr v8, v3

    .line 630
    iget v3, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMode:I

    const/16 v20, 0x0

    if-eqz v3, :cond_4

    add-int v3, v2, v13

    add-int v6, v5, v15

    if-le v3, v6, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    move/from16 v22, v3

    goto :goto_1

    :cond_4
    const/16 v22, 0x0

    :goto_1
    if-nez v22, :cond_9

    if-ne v12, v14, :cond_5

    cmpl-float v3, v16, v17

    if-nez v3, :cond_5

    if-ne v4, v12, :cond_5

    cmpl-float v3, v18, v16

    if-nez v3, :cond_5

    move v8, v13

    move v5, v15

    goto :goto_3

    :cond_5
    if-ge v2, v8, :cond_7

    if-ge v8, v5, :cond_7

    if-ne v4, v14, :cond_6

    cmpl-float v2, v18, v17

    if-eqz v2, :cond_7

    .line 645
    :cond_6
    iget v2, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mNumCells:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    move v5, v2

    :goto_2
    const/4 v8, 0x0

    goto :goto_3

    :cond_7
    const/4 v3, 0x1

    if-ne v4, v12, :cond_8

    cmpl-float v2, v18, v16

    if-nez v2, :cond_8

    .line 648
    iget v2, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mNumCells:I

    add-int/2addr v2, v3

    move v5, v2

    move v8, v13

    goto :goto_3

    :cond_8
    if-ne v4, v14, :cond_9

    cmpl-float v2, v18, v17

    if-nez v2, :cond_9

    move v5, v15

    goto :goto_2

    :cond_9
    const/4 v5, -0x1

    const/4 v8, -0x1

    :goto_3
    move v2, v1

    move/from16 v23, v10

    const/4 v3, 0x1

    const/16 v24, 0x0

    .line 655
    :goto_4
    iget v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mNumCells:I

    if-gt v3, v1, :cond_1e

    .line 656
    iget-boolean v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsRTL:Z

    if-eqz v1, :cond_a

    .line 657
    iget v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mNumDays:I

    const/16 v21, 0x1

    add-int/lit8 v1, v1, -0x1

    sub-int v1, v1, v23

    const/16 v19, 0x2

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    mul-int v1, v1, v9

    .line 658
    iget v6, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mPadding:I

    add-int/2addr v1, v6

    :goto_5
    move v6, v1

    goto :goto_6

    :cond_a
    const/16 v21, 0x1

    mul-int/lit8 v1, v23, 0x2

    add-int/lit8 v1, v1, 0x1

    mul-int v1, v1, v9

    .line 660
    iget v6, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mPadding:I

    add-int/2addr v1, v6

    goto :goto_5

    .line 663
    :goto_6
    iget v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mWeekStart:I

    add-int v1, v23, v1

    move/from16 v26, v10

    iget v10, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mNumDays:I

    rem-int/2addr v1, v10

    .line 664
    iget-object v10, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    move/from16 v27, v9

    iget-object v9, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayColorSet:[I

    aget v1, v9, v1

    invoke-virtual {v10, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 666
    iget v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mEnabledDayStart:I

    if-lt v3, v1, :cond_b

    iget v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mEnabledDayEnd:I

    if-le v3, v1, :cond_c

    .line 667
    :cond_b
    iget-object v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    iget v9, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayNumberDisabledAlpha:I

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 669
    :cond_c
    iget-object v9, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    if-eqz v22, :cond_13

    if-ne v12, v4, :cond_d

    cmpl-float v1, v16, v18

    if-nez v1, :cond_d

    if-ne v13, v3, :cond_d

    .line 675
    iget v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMode:I

    const/4 v10, 0x2

    if-eq v1, v10, :cond_e

    :cond_d
    if-ne v14, v4, :cond_f

    cmpl-float v1, v17, v18

    if-nez v1, :cond_f

    if-ne v15, v3, :cond_f

    iget v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMode:I

    const/4 v10, 0x1

    if-ne v1, v10, :cond_f

    :cond_e
    int-to-float v1, v6

    int-to-float v10, v2

    sub-float/2addr v10, v11

    move/from16 v28, v5

    .line 679
    iget v5, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDaySelectedCircleSize:I

    int-to-float v5, v5

    move/from16 v29, v8

    iget-object v8, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v10, v5, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 682
    iget v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mSelectedDayNumberTextColor:I

    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_7

    :cond_f
    move/from16 v28, v5

    move/from16 v29, v8

    :goto_7
    if-ne v14, v4, :cond_11

    cmpl-float v1, v17, v18

    if-nez v1, :cond_11

    if-ne v15, v3, :cond_11

    .line 685
    iget v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMode:I

    const/4 v5, 0x2

    if-eq v1, v5, :cond_10

    goto :goto_8

    :cond_10
    const/4 v8, 0x1

    goto :goto_9

    :cond_11
    :goto_8
    if-ne v12, v4, :cond_12

    cmpl-float v1, v16, v18

    if-nez v1, :cond_12

    if-ne v13, v3, :cond_12

    iget v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMode:I

    const/4 v8, 0x1

    if-ne v1, v8, :cond_12

    :goto_9
    int-to-float v1, v6

    int-to-float v5, v2

    sub-float/2addr v5, v11

    .line 689
    iget v10, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDaySelectedCircleSize:I

    int-to-float v10, v10

    iget-object v8, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mAbnormalSelectedDayPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v5, v10, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_12
    move v10, v3

    move/from16 v21, v4

    move/from16 v31, v12

    move/from16 v32, v13

    move/from16 v33, v14

    move/from16 v34, v15

    move/from16 v15, v27

    move/from16 v35, v28

    move/from16 v8, v29

    move v12, v2

    move v14, v6

    goto/16 :goto_10

    :cond_13
    move/from16 v28, v5

    if-ge v8, v3, :cond_15

    move/from16 v5, v28

    if-ge v3, v5, :cond_14

    sub-int v1, v6, v27

    int-to-float v10, v1

    int-to-float v1, v2

    sub-float/2addr v1, v11

    move/from16 v30, v2

    .line 695
    iget v2, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDaySelectedCircleSize:I

    int-to-float v2, v2

    sub-float v21, v1, v2

    mul-int/lit8 v1, v27, 0x2

    int-to-float v1, v1

    add-float v28, v10, v1

    .line 696
    iget v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDaySelectedCircleSize:I

    const/4 v2, 0x2

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float v29, v21, v1

    iget-object v2, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v31, v12

    move/from16 v12, v30

    move-object/from16 v30, v2

    move v2, v10

    move v10, v3

    move/from16 v3, v21

    move/from16 v21, v4

    move/from16 v4, v28

    move/from16 v32, v13

    move v13, v5

    move/from16 v5, v29

    move/from16 v33, v14

    move/from16 v34, v15

    const/4 v15, -0x1

    move v14, v6

    move-object/from16 v6, v30

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 698
    iget v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mSelectedDayNumberTextColor:I

    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_b

    :cond_14
    move v10, v3

    move/from16 v21, v4

    move/from16 v31, v12

    move/from16 v32, v13

    move/from16 v33, v14

    move/from16 v34, v15

    const/4 v15, -0x1

    move v12, v2

    move v13, v5

    goto :goto_a

    :cond_15
    move v10, v3

    move/from16 v21, v4

    move/from16 v31, v12

    move/from16 v32, v13

    move/from16 v33, v14

    move/from16 v34, v15

    move/from16 v13, v28

    const/4 v15, -0x1

    move v12, v2

    :goto_a
    move v14, v6

    :goto_b
    if-eq v8, v15, :cond_16

    if-ne v8, v13, :cond_16

    if-ne v10, v8, :cond_16

    int-to-float v1, v14

    int-to-float v2, v12

    sub-float/2addr v2, v11

    .line 702
    iget v3, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDaySelectedCircleSize:I

    int-to-float v3, v3

    iget-object v4, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 704
    iget v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mSelectedDayNumberTextColor:I

    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setColor(I)V

    move/from16 v35, v13

    move/from16 v15, v27

    goto/16 :goto_10

    :cond_16
    if-ne v13, v10, :cond_18

    int-to-float v1, v12

    sub-float v6, v1, v11

    .line 707
    iget-boolean v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsRTL:Z

    if-eqz v1, :cond_17

    int-to-float v1, v14

    :goto_c
    move v2, v1

    goto :goto_d

    :cond_17
    sub-int v1, v14, v27

    int-to-float v1, v1

    goto :goto_c

    .line 708
    :goto_d
    iget v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDaySelectedCircleSize:I

    int-to-float v1, v1

    sub-float v3, v6, v1

    move/from16 v5, v27

    int-to-float v1, v5

    add-float v4, v2, v1

    .line 709
    iget v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDaySelectedCircleSize:I

    const/16 v19, 0x2

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float v25, v3, v1

    iget-object v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    move-object/from16 v27, v1

    move-object/from16 v1, p1

    move v15, v5

    move/from16 v5, v25

    move/from16 v35, v13

    move v13, v6

    move-object/from16 v6, v27

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    int-to-float v1, v14

    .line 712
    iget v2, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDaySelectedCircleSize:I

    int-to-float v2, v2

    iget-object v3, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v13, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 713
    iget v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mSelectedDayNumberTextColor:I

    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_10

    :cond_18
    move/from16 v35, v13

    move/from16 v15, v27

    if-ne v8, v10, :cond_1a

    int-to-float v1, v12

    sub-float v13, v1, v11

    .line 716
    iget-boolean v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsRTL:Z

    if-eqz v1, :cond_19

    sub-int v6, v14, v15

    int-to-float v1, v6

    :goto_e
    move v2, v1

    goto :goto_f

    :cond_19
    int-to-float v1, v14

    goto :goto_e

    .line 717
    :goto_f
    iget v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDaySelectedCircleSize:I

    int-to-float v1, v1

    sub-float v3, v13, v1

    int-to-float v1, v15

    add-float v4, v2, v1

    .line 718
    iget v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDaySelectedCircleSize:I

    const/4 v5, 0x2

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float v5, v3, v1

    iget-object v6, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    int-to-float v1, v14

    .line 721
    iget v2, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDaySelectedCircleSize:I

    int-to-float v2, v2

    iget-object v3, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v13, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 722
    iget v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mSelectedDayNumberTextColor:I

    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 726
    :cond_1a
    :goto_10
    iget v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMode:I

    if-nez v1, :cond_1b

    move/from16 v13, v35

    if-ne v10, v13, :cond_1c

    .line 727
    iget v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mSelectedDayNumberTextColor:I

    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_11

    :cond_1b
    move/from16 v13, v35

    :cond_1c
    :goto_11
    const-string v1, "%d"

    const/4 v2, 0x1

    .line 729
    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v20

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    int-to-float v2, v14

    int-to-float v3, v12

    invoke-virtual {v7, v1, v2, v3, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v1, v23, 0x1

    .line 731
    iget v2, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mNumDays:I

    if-ne v1, v2, :cond_1d

    .line 733
    iget v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mWeekHeight:I

    add-int v2, v12, v1

    add-int/lit8 v24, v24, 0x1

    const/16 v23, 0x0

    goto :goto_12

    :cond_1d
    move/from16 v23, v1

    move v2, v12

    :goto_12
    add-int/lit8 v3, v10, 0x1

    move v5, v13

    move v9, v15

    move/from16 v4, v21

    move/from16 v10, v26

    move/from16 v12, v31

    move/from16 v13, v32

    move/from16 v14, v33

    move/from16 v15, v34

    goto/16 :goto_4

    :cond_1e
    move v12, v2

    move v13, v5

    move v15, v9

    move/from16 v26, v10

    .line 742
    iget-boolean v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsLastMonth:Z

    if-nez v1, :cond_2a

    move v14, v12

    move/from16 v10, v24

    const/4 v12, 0x1

    :goto_13
    const/4 v1, 0x6

    if-eq v10, v1, :cond_2a

    .line 745
    iget-boolean v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsRTL:Z

    if-eqz v1, :cond_1f

    .line 746
    iget v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mNumDays:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    sub-int v1, v1, v23

    const/4 v3, 0x2

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v2

    mul-int v1, v1, v15

    .line 747
    iget v3, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mPadding:I

    add-int/2addr v1, v3

    :goto_14
    move v6, v1

    goto :goto_15

    :cond_1f
    const/4 v2, 0x1

    mul-int/lit8 v1, v23, 0x2

    add-int/2addr v1, v2

    mul-int v1, v1, v15

    .line 749
    iget v2, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mPadding:I

    add-int/2addr v1, v2

    goto :goto_14

    .line 751
    :goto_15
    iget v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mWeekStart:I

    add-int v1, v23, v1

    iget v2, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mNumDays:I

    rem-int/2addr v1, v2

    .line 752
    iget-object v2, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    iget-object v3, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayColorSet:[I

    aget v1, v3, v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 753
    iget-object v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    iget v2, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mPrevNextMonthDayNumberAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 755
    iget v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMode:I

    if-eqz v1, :cond_23

    iget v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mNumCells:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    if-ne v13, v1, :cond_23

    .line 758
    iget v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mEndDay:I

    if-lt v12, v1, :cond_22

    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/SeslSimpleMonthView;->isNextMonthEndMonth()Z

    move-result v1

    if-nez v1, :cond_20

    goto :goto_18

    .line 763
    :cond_20
    iget v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mEndDay:I

    if-ne v12, v1, :cond_23

    int-to-float v1, v14

    sub-float v5, v1, v11

    .line 765
    iget-boolean v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsRTL:Z

    if-eqz v1, :cond_21

    int-to-float v1, v6

    :goto_16
    move v2, v1

    goto :goto_17

    :cond_21
    sub-int v1, v6, v15

    int-to-float v1, v1

    goto :goto_16

    .line 766
    :goto_17
    iget v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDaySelectedCircleSize:I

    int-to-float v1, v1

    sub-float v3, v5, v1

    int-to-float v1, v15

    add-float v4, v2, v1

    .line 767
    iget v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDaySelectedCircleSize:I

    const/16 v16, 0x2

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float v16, v3, v1

    iget-object v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v1

    move-object/from16 v1, p1

    move v9, v5

    move/from16 v5, v16

    move/from16 v36, v8

    move v8, v6

    move-object/from16 v6, v17

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    int-to-float v1, v8

    .line 770
    iget v2, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDaySelectedCircleSize:I

    int-to-float v2, v2

    iget-object v3, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v9, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_19

    :cond_22
    :goto_18
    move/from16 v36, v8

    move v8, v6

    sub-int v6, v8, v15

    int-to-float v2, v6

    int-to-float v1, v14

    sub-float/2addr v1, v11

    .line 760
    iget v3, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDaySelectedCircleSize:I

    int-to-float v3, v3

    sub-float v3, v1, v3

    mul-int/lit8 v9, v15, 0x2

    int-to-float v1, v9

    add-float v4, v2, v1

    .line 761
    iget v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDaySelectedCircleSize:I

    const/4 v5, 0x2

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float v5, v3, v1

    iget-object v6, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_19

    :cond_23
    move/from16 v36, v8

    move v8, v6

    .line 775
    :goto_19
    iget-boolean v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsLunar:Z

    if-nez v1, :cond_25

    .line 776
    iget v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMonth:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 777
    iget v2, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mYear:I

    const/16 v9, 0xb

    if-le v1, v9, :cond_24

    add-int/lit8 v2, v2, 0x1

    const/4 v1, 0x0

    .line 783
    :cond_24
    iget-object v3, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->clear()V

    .line 784
    iget-object v3, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v3, v2, v1, v12}, Ljava/util/Calendar;->set(III)V

    .line 786
    iget-object v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mTempDate:Ljava/util/Calendar;

    iget-object v2, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 787
    iget-object v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    iget v2, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayNumberDisabledAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_1a

    :cond_25
    const/16 v9, 0xb

    .line 791
    :cond_26
    :goto_1a
    iget-object v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    .line 792
    iget v2, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMode:I

    if-eqz v2, :cond_28

    iget v2, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mNumCells:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    if-ne v13, v2, :cond_28

    iget v2, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mEndDay:I

    if-le v12, v2, :cond_27

    .line 793
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/SeslSimpleMonthView;->isNextMonthEndMonth()Z

    move-result v2

    if-nez v2, :cond_28

    .line 794
    :cond_27
    iget v2, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mSelectedDayNumberTextColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    :cond_28
    const-string v2, "%d"

    const/4 v3, 0x1

    .line 796
    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v20

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    int-to-float v3, v8

    int-to-float v4, v14

    invoke-virtual {v7, v2, v3, v4, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v1, v23, 0x1

    .line 798
    iget v2, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mNumDays:I

    if-ne v1, v2, :cond_29

    .line 800
    iget v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mWeekHeight:I

    add-int/2addr v14, v1

    add-int/lit8 v10, v10, 0x1

    const/16 v23, 0x0

    goto :goto_1b

    :cond_29
    move/from16 v23, v1

    :goto_1b
    add-int/lit8 v12, v12, 0x1

    move/from16 v8, v36

    goto/16 :goto_13

    :cond_2a
    move/from16 v36, v8

    const/16 v9, 0xb

    if-lez v26, :cond_37

    .line 807
    iget-boolean v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsFirstMonth:Z

    if-nez v1, :cond_37

    .line 808
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 809
    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    .line 810
    iget v2, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mYear:I

    iget v3, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMonth:I

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Calendar;->set(III)V

    move/from16 v8, v26

    neg-int v2, v8

    const/4 v10, 0x5

    .line 811
    invoke-virtual {v1, v10, v2}, Ljava/util/Calendar;->add(II)V

    .line 813
    invoke-virtual {v1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 814
    iget-boolean v2, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsLunar:Z

    if-eqz v2, :cond_2c

    .line 815
    iget v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mYear:I

    .line 816
    iget v2, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMonth:I

    iget-boolean v3, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsLeapMonth:Z

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    sub-int/2addr v2, v3

    if-gez v2, :cond_2b

    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0xb

    .line 821
    :cond_2b
    iget-boolean v3, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsPrevMonthLeap:Z

    invoke-direct {v0, v2, v1, v3}, Landroid/support/v7/widget/SeslSimpleMonthView;->getDaysInMonthLunar(IIZ)I

    move-result v1

    sub-int/2addr v1, v8

    add-int/2addr v1, v4

    goto :goto_1c

    :cond_2c
    const/4 v4, 0x1

    :goto_1c
    move v13, v1

    const/4 v12, 0x0

    :goto_1d
    if-ge v12, v8, :cond_37

    .line 827
    iget-boolean v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsRTL:Z

    if-eqz v1, :cond_2d

    .line 828
    iget v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mNumDays:I

    sub-int/2addr v1, v4

    sub-int/2addr v1, v12

    const/4 v2, 0x2

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v4

    mul-int v1, v1, v15

    .line 829
    iget v2, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mPadding:I

    add-int/2addr v1, v2

    :goto_1e
    move v14, v1

    goto :goto_1f

    :cond_2d
    mul-int/lit8 v1, v12, 0x2

    add-int/2addr v1, v4

    mul-int v1, v1, v15

    .line 831
    iget v2, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mPadding:I

    add-int/2addr v1, v2

    goto :goto_1e

    .line 833
    :goto_1f
    iget v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mWeekHeight:I

    const/4 v2, 0x2

    mul-int/lit8 v1, v1, 0x2

    div-int/lit8 v6, v1, 0x3

    .line 834
    iget v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mWeekStart:I

    add-int/2addr v1, v12

    iget v2, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mNumDays:I

    rem-int/2addr v1, v2

    .line 835
    iget-object v2, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    iget-object v3, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayColorSet:[I

    aget v1, v3, v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 836
    iget-object v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    iget v2, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mPrevNextMonthDayNumberAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 838
    iget v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMode:I

    if-eqz v1, :cond_31

    if-nez v36, :cond_31

    .line 841
    iget v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mStartDay:I

    if-gt v13, v1, :cond_30

    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/SeslSimpleMonthView;->isPrevMonthStartMonth()Z

    move-result v1

    if-nez v1, :cond_2e

    goto :goto_22

    .line 846
    :cond_2e
    iget v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mStartDay:I

    if-ne v13, v1, :cond_31

    int-to-float v1, v6

    sub-float v5, v1, v11

    .line 848
    iget-boolean v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsRTL:Z

    if-eqz v1, :cond_2f

    sub-int v1, v14, v15

    int-to-float v1, v1

    :goto_20
    move v2, v1

    goto :goto_21

    :cond_2f
    int-to-float v1, v14

    goto :goto_20

    .line 849
    :goto_21
    iget v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDaySelectedCircleSize:I

    int-to-float v1, v1

    sub-float v3, v5, v1

    int-to-float v1, v15

    add-float v4, v2, v1

    .line 850
    iget v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDaySelectedCircleSize:I

    const/16 v16, 0x2

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float v16, v3, v1

    iget-object v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v1

    move-object/from16 v1, p1

    move v9, v5

    move/from16 v5, v16

    move v10, v6

    move-object/from16 v6, v17

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    int-to-float v1, v14

    .line 853
    iget v2, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDaySelectedCircleSize:I

    int-to-float v2, v2

    iget-object v3, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v9, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_23

    :cond_30
    :goto_22
    move v10, v6

    sub-int v1, v14, v15

    int-to-float v2, v1

    int-to-float v1, v10

    sub-float/2addr v1, v11

    .line 843
    iget v3, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDaySelectedCircleSize:I

    int-to-float v3, v3

    sub-float v3, v1, v3

    mul-int/lit8 v9, v15, 0x2

    int-to-float v1, v9

    add-float v4, v2, v1

    .line 844
    iget v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDaySelectedCircleSize:I

    const/4 v5, 0x2

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float v5, v3, v1

    iget-object v6, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_23

    :cond_31
    move v10, v6

    .line 858
    :goto_23
    iget-boolean v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsLunar:Z

    if-nez v1, :cond_33

    .line 859
    iget v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMonth:I

    const/4 v2, 0x1

    add-int/lit8 v9, v1, -0x1

    .line 860
    iget v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mYear:I

    if-gez v9, :cond_32

    add-int/lit8 v1, v1, -0x1

    const/16 v9, 0xb

    .line 866
    :cond_32
    iget-object v2, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->clear()V

    .line 867
    iget-object v2, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1, v9, v13}, Ljava/util/Calendar;->set(III)V

    .line 869
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 870
    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    .line 871
    iget-object v2, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMinDate:Ljava/util/Calendar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMinDate:Ljava/util/Calendar;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v5, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMinDate:Ljava/util/Calendar;

    const/4 v6, 0x5

    .line 872
    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 871
    invoke-virtual {v1, v2, v3, v5}, Ljava/util/Calendar;->set(III)V

    .line 873
    iget-object v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mTempDate:Ljava/util/Calendar;

    iget-object v2, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 874
    iget-object v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    iget v2, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayNumberDisabledAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_24

    :cond_33
    const/4 v4, 0x2

    const/4 v6, 0x5

    .line 878
    :cond_34
    :goto_24
    iget-object v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    .line 879
    iget v2, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMode:I

    if-eqz v2, :cond_36

    if-nez v36, :cond_36

    iget v2, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mStartDay:I

    if-ge v13, v2, :cond_35

    .line 880
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/SeslSimpleMonthView;->isPrevMonthStartMonth()Z

    move-result v2

    if-nez v2, :cond_36

    .line 881
    :cond_35
    iget v2, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mSelectedDayNumberTextColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    :cond_36
    const-string v1, "%d"

    const/4 v2, 0x1

    .line 883
    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v20

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    int-to-float v3, v14

    int-to-float v5, v10

    iget-object v9, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v3, v5, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v12, v12, 0x1

    const/4 v4, 0x1

    const/16 v9, 0xb

    const/4 v10, 0x5

    goto/16 :goto_1d

    :cond_37
    return-void
.end method

.method private findDayOffset()I
    .locals 2

    .line 934
    iget v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayOfWeekStart:I

    iget v1, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mWeekStart:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayOfWeekStart:I

    iget v1, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mNumDays:I

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayOfWeekStart:I

    :goto_0
    iget v1, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mWeekStart:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private getDayFromLocation(FF)I
    .locals 3

    .line 946
    iget v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mPadding:I

    .line 947
    iget-boolean v1, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsRTL:Z

    if-eqz v1, :cond_0

    .line 948
    iget v1, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mCalendarWidth:I

    int-to-float v1, v1

    sub-float p1, v1, p1

    :cond_0
    int-to-float v0, v0

    cmpg-float v1, p1, v0

    if-ltz v1, :cond_2

    .line 950
    iget v1, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mCalendarWidth:I

    iget v2, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mPadding:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1

    goto :goto_0

    :cond_1
    float-to-int p2, p2

    .line 954
    iget v1, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mWeekHeight:I

    div-int/2addr p2, v1

    sub-float/2addr p1, v0

    .line 955
    iget v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mNumDays:I

    int-to-float v0, v0

    mul-float p1, p1, v0

    iget v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mCalendarWidth:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    float-to-int p1, p1

    .line 957
    invoke-direct {p0}, Landroid/support/v7/widget/SeslSimpleMonthView;->findDayOffset()I

    move-result v0

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x1

    .line 958
    iget v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mNumDays:I

    mul-int p2, p2, v0

    add-int/2addr p1, p2

    return p1

    :cond_2
    :goto_0
    const/4 p1, -0x1

    return p1
.end method

.method private static getDaysInMonth(II)I
    .locals 2

    packed-switch p0, :pswitch_data_0

    .line 541
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid Month"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const/16 p0, 0x1e

    return p0

    .line 530
    :pswitch_1
    rem-int/lit8 p0, p1, 0x4

    const/16 v0, 0x1c

    if-nez p0, :cond_2

    .line 531
    rem-int/lit8 p0, p1, 0x64

    const/16 v1, 0x1d

    if-nez p0, :cond_1

    .line 532
    rem-int/lit16 p1, p1, 0x190

    if-nez p1, :cond_0

    return v1

    :cond_0
    return v0

    :cond_1
    return v1

    :cond_2
    return v0

    :pswitch_2
    const/16 p0, 0x1f

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private getDaysInMonthLunar(IIZ)I
    .locals 5

    .line 497
    invoke-static {p1, p2}, Landroid/support/v7/widget/SeslSimpleMonthView;->getDaysInMonth(II)I

    move-result v0

    .line 499
    iget-object v1, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mSolarLunarConverter:Ljava/lang/Object;

    if-nez v1, :cond_0

    const-string p1, "SemSimpleMonthView"

    const-string p2, "getDaysInMonthLunar, mSolarLunarConverter is null"

    .line 500
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 504
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mSolarLunarConverter:Ljava/lang/Object;

    iget-object v2, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayLengthMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, v4

    const/4 p2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, p2

    const/4 p1, 0x2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v3, p1

    invoke-direct {p0, v1, v2, v3}, Landroid/support/v7/widget/SeslSimpleMonthView;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 506
    instance-of p2, p1, Ljava/lang/Integer;

    if-eqz p2, :cond_1

    .line 507
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_1
    const-string p1, "SemSimpleMonthView"

    const-string p2, "getDaysInMonthLunar, dayLength is not Integer"

    .line 509
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private varargs getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 1392
    :try_start_0
    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p3, "SemSimpleMonthView"

    .line 1394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " NoSuchMethodException"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private initView()V
    .locals 3

    .line 365
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    .line 366
    iget-object v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 367
    iget-object v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    iget v2, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mSelectedDayColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 368
    iget-object v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 369
    iget-object v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    iget v2, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDaySelectedCircleStroke:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 370
    iget-object v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 371
    iget-object v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 373
    new-instance v0, Landroid/graphics/Paint;

    iget-object v2, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mAbnormalSelectedDayPaint:Landroid/graphics/Paint;

    .line 374
    iget-object v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mAbnormalSelectedDayPaint:Landroid/graphics/Paint;

    iget v2, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mNormalTextColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 375
    iget-object v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mAbnormalSelectedDayPaint:Landroid/graphics/Paint;

    iget v2, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mAbnormalStartEndDateBackgroundAlpha:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 377
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    .line 378
    iget-object v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 379
    iget-object v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    iget v1, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMiniDayNumberTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 380
    iget-object v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    const-string v1, "sec-roboto-light"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 381
    iget-object v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 382
    iget-object v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 383
    iget-object v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    return-void
.end method

.method private varargs invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const-string p1, "SemSimpleMonthView"

    const-string p2, "method is null"

    .line 1404
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 1409
    :cond_0
    :try_start_0
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string p3, "SemSimpleMonthView"

    .line 1415
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " InvocationTargetException"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p1

    const-string p3, "SemSimpleMonthView"

    .line 1413
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " IllegalArgumentException"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception p1

    const-string p3, "SemSimpleMonthView"

    .line 1411
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " IllegalAccessException"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v0
.end method

.method private isNextMonthEndMonth()Z
    .locals 6

    .line 913
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsLunar:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    .line 914
    iget v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMonth:I

    int-to-float v0, v0

    .line 915
    iget v3, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mEndMonth:I

    int-to-float v3, v3

    .line 916
    iget-boolean v4, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsLeapMonth:Z

    const/high16 v5, 0x3f000000    # 0.5f

    if-eqz v4, :cond_0

    add-float/2addr v0, v5

    .line 919
    :cond_0
    iget v4, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsLeapEndMonth:I

    if-ne v4, v2, :cond_1

    add-float/2addr v3, v5

    :cond_1
    sub-float/2addr v3, v0

    .line 923
    iget v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mYear:I

    iget v4, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mEndYear:I

    const/high16 v5, 0x3f800000    # 1.0f

    if-ne v0, v4, :cond_2

    cmpg-float v0, v3, v5

    if-ltz v0, :cond_3

    cmpl-float v0, v3, v5

    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsNextMonthLeap:Z

    if-eqz v0, :cond_3

    :cond_2
    iget v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mYear:I

    iget v4, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mEndYear:I

    sub-int/2addr v4, v2

    if-ne v0, v4, :cond_4

    const/high16 v0, 0x41400000    # 12.0f

    add-float/2addr v3, v0

    cmpg-float v0, v3, v5

    if-ltz v0, :cond_3

    cmpl-float v0, v3, v5

    if-nez v0, :cond_4

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsNextMonthLeap:Z

    if-nez v0, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    return v1

    .line 927
    :cond_5
    iget v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mYear:I

    iget v3, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mEndYear:I

    if-ne v0, v3, :cond_6

    iget v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMonth:I

    iget v3, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mEndMonth:I

    sub-int/2addr v3, v2

    if-eq v0, v3, :cond_7

    :cond_6
    iget v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mYear:I

    iget v3, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mEndYear:I

    sub-int/2addr v3, v2

    if-ne v0, v3, :cond_8

    iget v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMonth:I

    const/16 v3, 0xb

    if-ne v0, v3, :cond_8

    iget v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mEndMonth:I

    if-nez v0, :cond_8

    :cond_7
    const/4 v1, 0x1

    :cond_8
    return v1
.end method

.method private isPrevMonthStartMonth()Z
    .locals 6

    .line 891
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsLunar:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    .line 892
    iget v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMonth:I

    int-to-float v0, v0

    .line 893
    iget v3, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mStartMonth:I

    int-to-float v3, v3

    .line 894
    iget-boolean v4, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsLeapMonth:Z

    const/high16 v5, 0x3f000000    # 0.5f

    if-eqz v4, :cond_0

    add-float/2addr v0, v5

    .line 897
    :cond_0
    iget v4, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsLeapStartMonth:I

    if-ne v4, v2, :cond_1

    add-float/2addr v3, v5

    :cond_1
    sub-float/2addr v0, v3

    .line 901
    iget v3, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mYear:I

    iget v4, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mStartYear:I

    const/high16 v5, 0x3f800000    # 1.0f

    if-ne v3, v4, :cond_2

    cmpg-float v3, v0, v5

    if-ltz v3, :cond_3

    cmpl-float v3, v0, v5

    if-nez v3, :cond_2

    iget-boolean v3, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsPrevMonthLeap:Z

    if-eqz v3, :cond_3

    :cond_2
    iget v3, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mYear:I

    iget v4, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mStartYear:I

    add-int/2addr v4, v2

    if-ne v3, v4, :cond_4

    const/high16 v3, 0x41400000    # 12.0f

    add-float/2addr v0, v3

    cmpg-float v3, v0, v5

    if-ltz v3, :cond_3

    cmpl-float v0, v0, v5

    if-nez v0, :cond_4

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsPrevMonthLeap:Z

    if-nez v0, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    return v1

    .line 905
    :cond_5
    iget v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mYear:I

    iget v3, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mStartYear:I

    if-ne v0, v3, :cond_6

    iget v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMonth:I

    iget v3, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mStartMonth:I

    add-int/2addr v3, v2

    if-eq v0, v3, :cond_7

    :cond_6
    iget v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mYear:I

    iget v3, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mStartYear:I

    add-int/2addr v3, v2

    if-ne v0, v3, :cond_8

    iget v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMonth:I

    if-nez v0, :cond_8

    iget v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mStartMonth:I

    const/16 v3, 0xb

    if-ne v0, v3, :cond_8

    :cond_7
    const/4 v1, 0x1

    :cond_8
    return v1
.end method

.method private isRTL()Z
    .locals 4

    .line 1321
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "ur"

    .line 1323
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 1327
    :cond_0
    invoke-virtual {v0, v0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1326
    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method private static isValidDayOfWeek(I)Z
    .locals 2

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/4 v1, 0x7

    if-gt p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isValidMonth(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0xb

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private makeMeasureSpec(II)I
    .locals 4

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    return p1

    .line 564
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 565
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v1, v2, :cond_3

    if-eqz v1, :cond_2

    if-ne v1, v3, :cond_1

    .line 569
    iput v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mCalendarWidth:I

    return p1

    .line 577
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown measure mode: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 575
    :cond_2
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    return p1

    .line 572
    :cond_3
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mCalendarWidth:I

    .line 573
    iget p1, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mCalendarWidth:I

    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    return p1
.end method

.method private onDayClick(III)V
    .locals 1

    .line 974
    iget-object v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mOnDayClickListener:Landroid/support/v7/widget/SeslSimpleMonthView$OnDayClickListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 975
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslSimpleMonthView;->playSoundEffect(I)V

    .line 976
    iget-object v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mOnDayClickListener:Landroid/support/v7/widget/SeslSimpleMonthView$OnDayClickListener;

    invoke-interface {v0, p0, p1, p2, p3}, Landroid/support/v7/widget/SeslSimpleMonthView$OnDayClickListener;->onDayClick(Landroid/support/v7/widget/SeslSimpleMonthView;III)V

    .line 980
    :cond_0
    iget-object p1, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mTouchHelper:Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;

    const/4 p2, 0x1

    invoke-virtual {p1, p3, p2}, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->sendEventForVirtualView(II)Z

    return-void
.end method

.method private onDeactivatedDayClick(IIIZ)V
    .locals 9

    .line 985
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsLunar:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 986
    iget-object v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 987
    iget-object v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/Calendar;->set(III)V

    if-eqz p4, :cond_0

    .line 989
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 990
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 991
    iget-object v2, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMinDate:Ljava/util/Calendar;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMinDate:Ljava/util/Calendar;

    const/4 v5, 0x5

    .line 992
    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 991
    invoke-virtual {v0, v2, v3, v4}, Ljava/util/Calendar;->set(III)V

    .line 993
    iget-object v2, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 997
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mTempDate:Ljava/util/Calendar;

    iget-object v2, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 1003
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mOnDeactivatedDayClickListener:Landroid/support/v7/widget/SeslSimpleMonthView$OnDeactivatedDayClickListener;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 1004
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslSimpleMonthView;->playSoundEffect(I)V

    .line 1005
    iget-object v2, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mOnDeactivatedDayClickListener:Landroid/support/v7/widget/SeslSimpleMonthView$OnDeactivatedDayClickListener;

    iget-boolean v7, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsLeapMonth:Z

    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v8, p4

    invoke-interface/range {v2 .. v8}, Landroid/support/v7/widget/SeslSimpleMonthView$OnDeactivatedDayClickListener;->onDeactivatedDayClick(Landroid/support/v7/widget/SeslSimpleMonthView;IIIZZ)V

    .line 1010
    :cond_2
    iget-object p1, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mTouchHelper:Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {p1, p3, v1}, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->sendEventForVirtualView(II)Z

    return-void
.end method


# virtual methods
.method public clearAccessibilityFocus()V
    .locals 1

    .line 1019
    iget-object v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mTouchHelper:Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->clearFocusedVirtualView()V

    return-void
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 297
    iget-object v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mTouchHelper:Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public getNumDays()I
    .locals 1

    .line 1303
    iget v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mNumDays:I

    return v0
.end method

.method public getWeekStart()I
    .locals 1

    .line 1299
    iget v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mWeekStart:I

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 244
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 245
    invoke-direct {p0}, Landroid/support/v7/widget/SeslSimpleMonthView;->isRTL()Z

    move-result p1

    iput-boolean p1, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsRTL:Z

    .line 247
    iget-object p1, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mTouchHelper:Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->invalidateRoot()V

    .line 249
    iget-object p1, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 250
    sget v0, Landroid/support/v7/appcompat/R$dimen;->sesl_date_picker_calendar_week_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mWeekHeight:I

    .line 251
    sget v0, Landroid/support/v7/appcompat/R$dimen;->sesl_date_picker_selected_day_circle_radius:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDaySelectedCircleSize:I

    .line 253
    sget v0, Landroid/support/v7/appcompat/R$dimen;->sesl_date_picker_day_number_text_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMiniDayNumberTextSize:I

    .line 255
    sget v0, Landroid/support/v7/appcompat/R$dimen;->sesl_date_picker_calendar_view_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mCalendarWidth:I

    .line 257
    invoke-direct {p0}, Landroid/support/v7/widget/SeslSimpleMonthView;->initView()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 388
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslSimpleMonthView;->drawDays(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 547
    iget v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mCalendarWidth:I

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/SeslSimpleMonthView;->makeMeasureSpec(II)I

    move-result p1

    .line 548
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 550
    iget-object p1, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mTouchHelper:Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->invalidateRoot()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 584
    iget-object p1, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mTouchHelper:Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->invalidateRoot()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 302
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    .line 304
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Landroid/support/v7/widget/SeslSimpleMonthView;->getDayFromLocation(FF)I

    move-result p1

    .line 306
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsFirstMonth:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mEnabledDayStart:I

    if-lt p1, v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsLastMonth:Z

    if-eqz v0, :cond_3

    iget v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mEnabledDayEnd:I

    if-le p1, v0, :cond_3

    :cond_2
    return v1

    :cond_3
    const/16 v0, 0xb

    const/4 v2, 0x2

    const/4 v3, 0x5

    if-gtz p1, :cond_6

    .line 312
    iget-boolean v4, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsLunar:Z

    if-eqz v4, :cond_5

    .line 313
    iget v2, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mYear:I

    .line 314
    iget v3, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMonth:I

    iget-boolean v4, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsLeapMonth:Z

    xor-int/2addr v4, v1

    sub-int/2addr v3, v4

    if-gez v3, :cond_4

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_4
    move v0, v3

    .line 320
    :goto_0
    iget-boolean v3, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsPrevMonthLeap:Z

    invoke-direct {p0, v0, v2, v3}, Landroid/support/v7/widget/SeslSimpleMonthView;->getDaysInMonthLunar(IIZ)I

    move-result v3

    add-int/2addr v3, p1

    .line 322
    invoke-direct {p0, v2, v0, v3, v1}, Landroid/support/v7/widget/SeslSimpleMonthView;->onDeactivatedDayClick(IIIZ)V

    goto :goto_1

    .line 324
    :cond_5
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 325
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 326
    iget v4, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mYear:I

    iget v5, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMonth:I

    invoke-virtual {v0, v4, v5, v1}, Ljava/util/Calendar;->set(III)V

    sub-int/2addr p1, v1

    .line 327
    invoke-virtual {v0, v3, p1}, Ljava/util/Calendar;->add(II)V

    .line 328
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    .line 329
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 328
    invoke-direct {p0, p1, v2, v0, v1}, Landroid/support/v7/widget/SeslSimpleMonthView;->onDeactivatedDayClick(IIIZ)V

    goto :goto_1

    .line 332
    :cond_6
    iget v4, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mNumCells:I

    if-le p1, v4, :cond_9

    .line 333
    iget-boolean v4, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsLunar:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_8

    .line 334
    iget v2, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mYear:I

    .line 335
    iget v3, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMonth:I

    iget-boolean v4, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsNextMonthLeap:Z

    xor-int/2addr v4, v1

    add-int/2addr v3, v4

    if-le v3, v0, :cond_7

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    .line 340
    :cond_7
    iget v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mNumCells:I

    sub-int/2addr p1, v0

    invoke-direct {p0, v2, v3, p1, v5}, Landroid/support/v7/widget/SeslSimpleMonthView;->onDeactivatedDayClick(IIIZ)V

    goto :goto_1

    .line 342
    :cond_8
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 343
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 344
    iget v4, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mYear:I

    iget v6, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMonth:I

    iget v7, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mNumCells:I

    invoke-virtual {v0, v4, v6, v7}, Ljava/util/Calendar;->set(III)V

    .line 345
    iget v4, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mNumCells:I

    sub-int/2addr p1, v4

    invoke-virtual {v0, v3, p1}, Ljava/util/Calendar;->add(II)V

    .line 346
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    .line 347
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 346
    invoke-direct {p0, p1, v2, v0, v5}, Landroid/support/v7/widget/SeslSimpleMonthView;->onDeactivatedDayClick(IIIZ)V

    goto :goto_1

    .line 351
    :cond_9
    iget v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mYear:I

    iget v2, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMonth:I

    invoke-direct {p0, v0, v2, p1}, Landroid/support/v7/widget/SeslSimpleMonthView;->onDayClick(III)V

    :goto_1
    return v1
.end method

.method public setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V
    .locals 1

    .line 280
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mLockAccessibilityDelegate:Z

    if-nez v0, :cond_0

    .line 281
    invoke-super {p0, p1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    :cond_0
    return-void
.end method

.method public setEndDate(Ljava/util/Calendar;I)V
    .locals 1

    const/4 v0, 0x1

    .line 1314
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mEndYear:I

    const/4 v0, 0x2

    .line 1315
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mEndMonth:I

    const/4 v0, 0x5

    .line 1316
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mEndDay:I

    .line 1317
    iput p2, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsLeapEndMonth:I

    return-void
.end method

.method public setFirstMonth()V
    .locals 1

    const/4 v0, 0x1

    .line 1426
    iput-boolean v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsFirstMonth:Z

    return-void
.end method

.method public setLastMonth()V
    .locals 1

    const/4 v0, 0x1

    .line 1431
    iput-boolean v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsLastMonth:Z

    return-void
.end method

.method public setLunar(ZZLdalvik/system/PathClassLoader;)V
    .locals 5

    .line 1336
    iput-boolean p1, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsLunar:Z

    .line 1337
    iput-boolean p2, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsLeapMonth:Z

    .line 1339
    iget-boolean p1, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsLunar:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mSolarLunarConverter:Ljava/lang/Object;

    if-nez p1, :cond_2

    .line 1340
    iput-object p3, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    :try_start_0
    const-string p1, "com.android.calendar.Feature"

    .line 1344
    iget-object p2, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    const/4 p3, 0x1

    invoke-static {p1, p3, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p1, :cond_0

    const-string p1, "SemSimpleMonthView"

    const-string p2, "setLunar, Calendar Feature class is null"

    .line 1350
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string p2, "getSolarLunarConverter"

    const/4 v0, 0x0

    .line 1354
    new-array v1, v0, [Ljava/lang/Class;

    invoke-direct {p0, p1, p2, v1}, Landroid/support/v7/widget/SeslSimpleMonthView;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    const/4 p2, 0x0

    .line 1355
    new-array v1, v0, [Ljava/lang/Object;

    invoke-direct {p0, p2, p1, v1}, Landroid/support/v7/widget/SeslSimpleMonthView;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mSolarLunarConverter:Ljava/lang/Object;

    :try_start_1
    const-string p1, "com.samsung.android.calendar.secfeature.lunarcalendar.SolarLunarConverter"

    .line 1361
    iget-object p2, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    invoke-static {p1, p3, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    if-nez p1, :cond_1

    const-string p1, "SemSimpleMonthView"

    const-string p2, "setLunar, Calendar Converter class is null"

    .line 1368
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string p2, "convertLunarToSolar"

    const/4 v1, 0x4

    .line 1372
    new-array v1, v1, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, p3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x3

    aput-object v2, v1, v4

    invoke-direct {p0, p1, p2, v1}, Landroid/support/v7/widget/SeslSimpleMonthView;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    iput-object p2, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mConvertLunarToSolarMethod:Ljava/lang/reflect/Method;

    const-string p2, "getWeekday"

    .line 1375
    new-array v1, v4, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, p3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v3

    invoke-direct {p0, p1, p2, v1}, Landroid/support/v7/widget/SeslSimpleMonthView;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    iput-object p2, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mGetWeekDayMethod:Ljava/lang/reflect/Method;

    const-string p2, "getYear"

    .line 1378
    new-array v1, v0, [Ljava/lang/Class;

    invoke-direct {p0, p1, p2, v1}, Landroid/support/v7/widget/SeslSimpleMonthView;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    iput-object p2, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mGetYearMethod:Ljava/lang/reflect/Method;

    const-string p2, "getMonth"

    .line 1379
    new-array v1, v0, [Ljava/lang/Class;

    invoke-direct {p0, p1, p2, v1}, Landroid/support/v7/widget/SeslSimpleMonthView;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    iput-object p2, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mGetMonthMethod:Ljava/lang/reflect/Method;

    const-string p2, "getDay"

    .line 1380
    new-array v1, v0, [Ljava/lang/Class;

    invoke-direct {p0, p1, p2, v1}, Landroid/support/v7/widget/SeslSimpleMonthView;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    iput-object p2, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mGetDayMethod:Ljava/lang/reflect/Method;

    const-string p2, "getDayLengthOf"

    .line 1382
    new-array v1, v4, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v0

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v0, v1, p3

    sget-object p3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object p3, v1, v3

    invoke-direct {p0, p1, p2, v1}, Landroid/support/v7/widget/SeslSimpleMonthView;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayLengthMethod:Ljava/lang/reflect/Method;

    goto :goto_0

    :catch_0
    const-string p1, "SemSimpleMonthView"

    const-string p2, "setLunar, Calendar Converter class not found"

    .line 1364
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_1
    const-string p1, "SemSimpleMonthView"

    const-string p2, "setLunar, Calendar Feature class not found"

    .line 1346
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method setMonthParams(IIIIIILjava/util/Calendar;Ljava/util/Calendar;IIIIIIIII)V
    .locals 14

    move-object v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, p8

    move/from16 v3, p17

    .line 417
    iput v3, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMode:I

    .line 418
    iget v3, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mWeekHeight:I

    const/16 v4, 0xa

    if-ge v3, v4, :cond_0

    .line 419
    iput v4, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mWeekHeight:I

    :cond_0
    move v3, p1

    .line 422
    iput v3, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mSelectedDay:I

    .line 424
    invoke-static/range {p2 .. p2}, Landroid/support/v7/widget/SeslSimpleMonthView;->isValidMonth(I)Z

    move-result v3

    if-eqz v3, :cond_1

    move/from16 v3, p2

    .line 425
    iput v3, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMonth:I

    :cond_1
    move/from16 v3, p3

    .line 427
    iput v3, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mYear:I

    .line 429
    iget-object v3, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->clear()V

    .line 430
    iget-object v3, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mCalendar:Ljava/util/Calendar;

    iget v4, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMonth:I

    const/4 v5, 0x2

    invoke-virtual {v3, v5, v4}, Ljava/util/Calendar;->set(II)V

    .line 431
    iget-object v3, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mCalendar:Ljava/util/Calendar;

    iget v4, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mYear:I

    const/4 v6, 0x1

    invoke-virtual {v3, v6, v4}, Ljava/util/Calendar;->set(II)V

    .line 432
    iget-object v3, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mCalendar:Ljava/util/Calendar;

    const/4 v4, 0x5

    invoke-virtual {v3, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 434
    iput-object v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMinDate:Ljava/util/Calendar;

    .line 435
    iput-object v2, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMaxDate:Ljava/util/Calendar;

    .line 438
    iget-boolean v3, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsLunar:Z

    const/4 v7, 0x7

    if-eqz v3, :cond_4

    iget-object v3, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mSolarLunarConverter:Ljava/lang/Object;

    if-eqz v3, :cond_4

    .line 439
    iget-object v3, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mSolarLunarConverter:Ljava/lang/Object;

    iget-object v8, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mConvertLunarToSolarMethod:Ljava/lang/reflect/Method;

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    iget v10, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mYear:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    iget v10, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMonth:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v5

    iget-boolean v10, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsLeapMonth:Z

    .line 440
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v12, 0x3

    aput-object v10, v9, v12

    .line 439
    invoke-direct {p0, v3, v8, v9}, Landroid/support/v7/widget/SeslSimpleMonthView;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    iget-object v3, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mSolarLunarConverter:Ljava/lang/Object;

    iget-object v8, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mGetYearMethod:Ljava/lang/reflect/Method;

    new-array v9, v11, [Ljava/lang/Object;

    invoke-direct {p0, v3, v8, v9}, Landroid/support/v7/widget/SeslSimpleMonthView;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 442
    iget-object v8, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mSolarLunarConverter:Ljava/lang/Object;

    iget-object v9, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mGetMonthMethod:Ljava/lang/reflect/Method;

    new-array v10, v11, [Ljava/lang/Object;

    invoke-direct {p0, v8, v9, v10}, Landroid/support/v7/widget/SeslSimpleMonthView;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 443
    iget-object v9, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mSolarLunarConverter:Ljava/lang/Object;

    iget-object v10, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mGetDayMethod:Ljava/lang/reflect/Method;

    new-array v13, v11, [Ljava/lang/Object;

    invoke-direct {p0, v9, v10, v13}, Landroid/support/v7/widget/SeslSimpleMonthView;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 444
    instance-of v10, v3, Ljava/lang/Integer;

    if-eqz v10, :cond_2

    instance-of v10, v8, Ljava/lang/Integer;

    if-eqz v10, :cond_2

    instance-of v10, v9, Ljava/lang/Integer;

    if-eqz v10, :cond_2

    .line 446
    iget-object v7, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mSolarLunarConverter:Ljava/lang/Object;

    iget-object v10, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mGetWeekDayMethod:Ljava/lang/reflect/Method;

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v3, v12, v11

    aput-object v8, v12, v6

    aput-object v9, v12, v5

    invoke-direct {p0, v7, v10, v12}, Landroid/support/v7/widget/SeslSimpleMonthView;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 448
    instance-of v7, v3, Ljava/lang/Integer;

    if-eqz v7, :cond_3

    .line 449
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, v6

    iput v3, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayOfWeekStart:I

    goto :goto_0

    .line 452
    :cond_2
    iget-object v3, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayOfWeekStart:I

    .line 454
    :cond_3
    :goto_0
    iget v3, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMonth:I

    iget v7, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mYear:I

    iget-boolean v8, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsLeapMonth:Z

    invoke-direct {p0, v3, v7, v8}, Landroid/support/v7/widget/SeslSimpleMonthView;->getDaysInMonthLunar(IIZ)I

    move-result v3

    iput v3, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mNumCells:I

    goto :goto_1

    .line 456
    :cond_4
    iget-object v3, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayOfWeekStart:I

    .line 457
    iget v3, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMonth:I

    iget v7, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mYear:I

    invoke-static {v3, v7}, Landroid/support/v7/widget/SeslSimpleMonthView;->getDaysInMonth(II)I

    move-result v3

    iput v3, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mNumCells:I

    .line 461
    :goto_1
    invoke-static/range {p4 .. p4}, Landroid/support/v7/widget/SeslSimpleMonthView;->isValidDayOfWeek(I)Z

    move-result v3

    if-eqz v3, :cond_5

    move/from16 v3, p4

    .line 462
    iput v3, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mWeekStart:I

    goto :goto_2

    .line 464
    :cond_5
    iget-object v3, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v3

    iput v3, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mWeekStart:I

    .line 467
    :goto_2
    iget v3, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMonth:I

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v3, v7, :cond_6

    iget v3, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mYear:I

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v3, v7, :cond_6

    .line 468
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    goto :goto_3

    :cond_6
    move/from16 v1, p5

    .line 471
    :goto_3
    iget v3, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mMonth:I

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v3, v5, :cond_7

    iget v3, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mYear:I

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v3, v5, :cond_7

    .line 472
    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    goto :goto_4

    :cond_7
    move/from16 v2, p6

    :goto_4
    const/16 v3, 0x20

    if-lez v1, :cond_8

    if-ge v2, v3, :cond_8

    .line 476
    iput v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mEnabledDayStart:I

    :cond_8
    if-lez v2, :cond_9

    if-ge v2, v3, :cond_9

    if-lt v2, v1, :cond_9

    .line 479
    iput v2, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mEnabledDayEnd:I

    .line 483
    :cond_9
    iget-object v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mTouchHelper:Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/SeslSimpleMonthView$MonthViewTouchHelper;->invalidateRoot()V

    move/from16 v1, p9

    .line 485
    iput v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mStartYear:I

    move/from16 v1, p10

    .line 486
    iput v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mStartMonth:I

    move/from16 v1, p11

    .line 487
    iput v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mStartDay:I

    move/from16 v1, p12

    .line 488
    iput v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsLeapStartMonth:I

    move/from16 v1, p13

    .line 489
    iput v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mEndYear:I

    move/from16 v1, p14

    .line 490
    iput v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mEndMonth:I

    move/from16 v1, p15

    .line 491
    iput v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mEndDay:I

    move/from16 v1, p16

    .line 492
    iput v1, v0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsLeapEndMonth:I

    return-void
.end method

.method public setNextMonthLeap()V
    .locals 1

    const/4 v0, 0x1

    .line 1441
    iput-boolean v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsNextMonthLeap:Z

    return-void
.end method

.method public setOnDayClickListener(Landroid/support/v7/widget/SeslSimpleMonthView$OnDayClickListener;)V
    .locals 0

    .line 286
    iput-object p1, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mOnDayClickListener:Landroid/support/v7/widget/SeslSimpleMonthView$OnDayClickListener;

    return-void
.end method

.method public setOnDeactivatedDayClickListener(Landroid/support/v7/widget/SeslSimpleMonthView$OnDeactivatedDayClickListener;)V
    .locals 0

    .line 291
    iput-object p1, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mOnDeactivatedDayClickListener:Landroid/support/v7/widget/SeslSimpleMonthView$OnDeactivatedDayClickListener;

    return-void
.end method

.method public setPrevMonthLeap()V
    .locals 1

    const/4 v0, 0x1

    .line 1436
    iput-boolean v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsPrevMonthLeap:Z

    return-void
.end method

.method public setStartDate(Ljava/util/Calendar;I)V
    .locals 1

    const/4 v0, 0x1

    .line 1307
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mStartYear:I

    const/4 v0, 0x2

    .line 1308
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mStartMonth:I

    const/4 v0, 0x5

    .line 1309
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mStartDay:I

    .line 1310
    iput p2, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mIsLeapStartMonth:I

    return-void
.end method

.method setTextColor()V
    .locals 5

    const-string v0, "CscFeature_Calendar_SetColorOfDays"

    const-string v1, "XXXXXXR"

    .line 261
    invoke-static {v0, v1}, Landroid/support/v4/feature/SeslCscFeatureReflector;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 263
    :goto_0
    iget v2, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mNumDays:I

    if-ge v1, v2, :cond_2

    .line 264
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v3, v1, 0x2

    .line 265
    iget v4, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mNumDays:I

    rem-int/2addr v3, v4

    const/16 v4, 0x52

    if-ne v2, v4, :cond_0

    .line 267
    iget-object v2, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayColorSet:[I

    iget v4, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mSundayTextColor:I

    aput v4, v2, v3

    goto :goto_1

    :cond_0
    const/16 v4, 0x42

    if-ne v2, v4, :cond_1

    .line 269
    iget-object v2, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayColorSet:[I

    iget v4, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mSaturdayTextColor:I

    aput v4, v2, v3

    goto :goto_1

    .line 271
    :cond_1
    iget-object v2, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mDayColorSet:[I

    iget v4, p0, Landroid/support/v7/widget/SeslSimpleMonthView;->mNormalTextColor:I

    aput v4, v2, v3

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
