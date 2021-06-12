.class public Landroid/support/v7/widget/SeslDatePicker;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/widget/SeslSimpleMonthView$OnDayClickListener;
.implements Landroid/support/v7/widget/SeslSimpleMonthView$OnDeactivatedDayClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/SeslDatePicker$LunarUtils;,
        Landroid/support/v7/widget/SeslDatePicker$LunarDate;,
        Landroid/support/v7/widget/SeslDatePicker$OnEditTextModeChangedListener;,
        Landroid/support/v7/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;,
        Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;,
        Landroid/support/v7/widget/SeslDatePicker$CalendarPageChangeListener;,
        Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;,
        Landroid/support/v7/widget/SeslDatePicker$SavedState;,
        Landroid/support/v7/widget/SeslDatePicker$ValidationCallback;,
        Landroid/support/v7/widget/SeslDatePicker$OnDateChangedListener;,
        Landroid/support/v7/widget/SeslDatePicker$DateMode;
    }
.end annotation


# static fields
.field public static final DATE_MODE_END:I = 0x2

.field public static final DATE_MODE_NONE:I = 0x0

.field public static final DATE_MODE_START:I = 0x1

.field private static final DEFAULT_END_YEAR:I = 0x834

.field private static final DEFAULT_LONG_PRESS_UPDATE_INTERVAL:J = 0x12cL

.field private static final DEFAULT_MONTH_PER_YEAR:I = 0xc

.field private static final DEFAULT_START_YEAR:I = 0x76e

.field private static final LEAP_MONTH:I = 0x1

.field private static final MAX_FONT_SCALE:F = 1.2f

.field private static final MESSAGE_CALENDAR_HEADER_MONTH_BUTTON_SET:I = 0x3e9

.field private static final MESSAGE_CALENDAR_HEADER_TEXT_VALUE_SET:I = 0x3e8

.field private static final NOT_LEAP_MONTH:I = 0x0

.field private static final SESL_DEBUG:Z = false

.field private static final SIZE_UNSPECIFIED:I = -0x1

.field private static final TAG:Ljava/lang/String; = "Picker"

.field private static final TAG_CSCFEATURE_CALENDAR_SETCOLOROFDAYS:Ljava/lang/String; = "CscFeature_Calendar_SetColorOfDays"

.field private static final USE_LOCALE:I = 0x0

.field public static final VIEW_TYPE_CALENDAR:I = 0x0

.field public static final VIEW_TYPE_SPINNER:I = 0x1

.field private static mPackageManager:Landroid/content/pm/PackageManager;


# instance fields
.field private mAnimator:Landroid/widget/ViewAnimator;

.field private mBackgroundBorderlessResId:I

.field private final mBtnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mCalendarHeader:Landroid/widget/RelativeLayout;

.field private mCalendarHeaderClickListener:Landroid/view/View$OnClickListener;

.field private mCalendarHeaderLayout:Landroid/widget/RelativeLayout;

.field private mCalendarHeaderLayoutHeight:I

.field private mCalendarHeaderText:Landroid/widget/TextView;

.field private mCalendarPagerAdapter:Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;

.field private mCalendarViewMargin:I

.field private mCalendarViewPager:Landroid/support/v4/view/ViewPager;

.field private mCalendarViewPagerHeight:I

.field private mCalendarViewPagerWidth:I

.field private mChangeCurrentByOneFromLongPressCommand:Landroid/support/v7/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;

.field private mContext:Landroid/content/Context;

.field private mCurrentDate:Ljava/util/Calendar;

.field private mCurrentLocale:Ljava/util/Locale;

.field private mCurrentPosition:I

.field private mCurrentViewType:I

.field private mCustomButtonView:Landroid/view/View;

.field private mDatePickerHeight:I

.field private mDatePickerLayout:Landroid/widget/LinearLayout;

.field private mDayFormatter:Ljava/text/SimpleDateFormat;

.field private mDayOfTheWeekLayout:Landroid/widget/LinearLayout;

.field private mDayOfTheWeekLayoutHeight:I

.field private mDayOfTheWeekLayoutWidth:I

.field private mDayOfTheWeekView:Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;

.field private mEndDate:Ljava/util/Calendar;

.field private mFirstBlankSpace:Landroid/view/View;

.field private mFirstBlankSpaceHeight:I

.field private mFirstDayOfWeek:I

.field private mGetLunarMethod:Ljava/lang/reflect/Method;

.field private mHandler:Landroid/os/Handler;

.field private mIndexOfLeapMonthField:Ljava/lang/reflect/Field;

.field private mIsConfigurationChanged:Z

.field private mIsEnabled:Z

.field private mIsFarsiLanguage:Z

.field private mIsFirstMeasure:Z

.field private mIsFromSetLunar:Z

.field private mIsLeapEndMonth:I

.field private mIsLeapMonth:Z

.field private mIsLeapStartMonth:I

.field private mIsLunar:Z

.field private mIsLunarSupported:Z

.field private mIsRTL:Z

.field private mIsSimplifiedChinese:Z

.field private mIsTibetanLanguage:Z

.field private mLunarChanged:Z

.field private mLunarCurrentDay:I

.field private mLunarCurrentMonth:I

.field private mLunarCurrentYear:I

.field private mLunarEndDay:I

.field private mLunarEndMonth:I

.field private mLunarEndYear:I

.field private mLunarStartDay:I

.field private mLunarStartMonth:I

.field private mLunarStartYear:I

.field private mMaxDate:Ljava/util/Calendar;

.field private mMinDate:Ljava/util/Calendar;

.field private mMode:I

.field private mMonthBtnKeyListener:Landroid/view/View$OnKeyListener;

.field private mMonthBtnTouchListener:Landroid/view/View$OnTouchListener;

.field private mNextButton:Landroid/widget/ImageButton;

.field private mNumDays:I

.field private mOldCalendarViewPagerWidth:I

.field private mOldSelectedDay:I

.field private mOnDateChangedListener:Landroid/support/v7/widget/SeslDatePicker$OnDateChangedListener;

.field private mPadding:I

.field mPathClassLoader:Ldalvik/system/PathClassLoader;

.field private mPositionCount:I

.field private mPrevButton:Landroid/widget/ImageButton;

.field private mSecondBlankSpace:Landroid/view/View;

.field private mSecondBlankSpaceHeight:I

.field private mSolarLunarTables:Ljava/lang/Object;

.field private mSpinnerLayout:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

.field private mStartDate:Ljava/util/Calendar;

.field private mStartOfLunarYearField:Ljava/lang/reflect/Field;

.field private mTempDate:Ljava/util/Calendar;

.field private mTempMinMaxDate:Ljava/util/Calendar;

.field private mTotalMonthCountWithLeap:[I

.field private mValidationCallback:Landroid/support/v7/widget/SeslDatePicker$ValidationCallback;

.field private mWeekStart:I

.field private mWidthPerYearField:Ljava/lang/reflect/Field;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 462
    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/SeslDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101035c

    .line 469
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/SeslDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 476
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/SeslDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9

    .line 483
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    .line 203
    iput-boolean v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsConfigurationChanged:Z

    const/4 v1, 0x1

    .line 206
    iput-boolean v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsFirstMeasure:Z

    .line 209
    iput-boolean v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsEnabled:Z

    const/4 v2, -0x1

    .line 219
    iput v2, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentViewType:I

    .line 225
    iput v2, p0, Landroid/support/v7/widget/SeslDatePicker;->mOldSelectedDay:I

    .line 226
    iput v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mPadding:I

    .line 234
    iput v2, p0, Landroid/support/v7/widget/SeslDatePicker;->mBackgroundBorderlessResId:I

    .line 237
    iput v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mMode:I

    .line 238
    iput v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mFirstDayOfWeek:I

    .line 261
    iput-boolean v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsLunarSupported:Z

    .line 262
    iput-boolean v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsLunar:Z

    .line 263
    iput-boolean v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsLeapMonth:Z

    .line 264
    iput-boolean v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsFromSetLunar:Z

    .line 265
    iput-boolean v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarChanged:Z

    const/4 v2, 0x0

    .line 282
    iput-object v2, p0, Landroid/support/v7/widget/SeslDatePicker;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    .line 291
    new-instance v3, Landroid/support/v7/widget/SeslDatePicker$1;

    invoke-direct {v3, p0}, Landroid/support/v7/widget/SeslDatePicker$1;-><init>(Landroid/support/v7/widget/SeslDatePicker;)V

    iput-object v3, p0, Landroid/support/v7/widget/SeslDatePicker;->mBtnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 301
    new-instance v3, Landroid/support/v7/widget/SeslDatePicker$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Landroid/support/v7/widget/SeslDatePicker$2;-><init>(Landroid/support/v7/widget/SeslDatePicker;Landroid/os/Looper;)V

    iput-object v3, p0, Landroid/support/v7/widget/SeslDatePicker;->mHandler:Landroid/os/Handler;

    .line 410
    new-instance v3, Landroid/support/v7/widget/SeslDatePicker$3;

    invoke-direct {v3, p0}, Landroid/support/v7/widget/SeslDatePicker$3;-><init>(Landroid/support/v7/widget/SeslDatePicker;)V

    iput-object v3, p0, Landroid/support/v7/widget/SeslDatePicker;->mMonthBtnTouchListener:Landroid/view/View$OnTouchListener;

    .line 421
    new-instance v3, Landroid/support/v7/widget/SeslDatePicker$4;

    invoke-direct {v3, p0}, Landroid/support/v7/widget/SeslDatePicker$4;-><init>(Landroid/support/v7/widget/SeslDatePicker;)V

    iput-object v3, p0, Landroid/support/v7/widget/SeslDatePicker;->mMonthBtnKeyListener:Landroid/view/View$OnKeyListener;

    .line 435
    new-instance v3, Landroid/support/v7/widget/SeslDatePicker$5;

    invoke-direct {v3, p0}, Landroid/support/v7/widget/SeslDatePicker$5;-><init>(Landroid/support/v7/widget/SeslDatePicker;)V

    iput-object v3, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarHeaderClickListener:Landroid/view/View$OnClickListener;

    .line 485
    iput-object p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mContext:Landroid/content/Context;

    .line 486
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    .line 487
    invoke-direct {p0}, Landroid/support/v7/widget/SeslDatePicker;->isRTL()Z

    move-result v3

    iput-boolean v3, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsRTL:Z

    .line 488
    invoke-direct {p0}, Landroid/support/v7/widget/SeslDatePicker;->isFarsiLanguage()Z

    move-result v3

    iput-boolean v3, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsFarsiLanguage:Z

    .line 489
    invoke-direct {p0}, Landroid/support/v7/widget/SeslDatePicker;->isTibetanLanguage()Z

    move-result v3

    iput-boolean v3, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsTibetanLanguage:Z

    .line 490
    invoke-direct {p0}, Landroid/support/v7/widget/SeslDatePicker;->isSimplifiedChinese()Z

    move-result v3

    iput-boolean v3, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsSimplifiedChinese:Z

    .line 491
    iget-boolean v3, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsSimplifiedChinese:Z

    if-eqz v3, :cond_0

    .line 492
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "EEEEE"

    iget-object v5, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v3, p0, Landroid/support/v7/widget/SeslDatePicker;->mDayFormatter:Ljava/text/SimpleDateFormat;

    goto :goto_0

    .line 494
    :cond_0
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "EEE"

    iget-object v5, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v3, p0, Landroid/support/v7/widget/SeslDatePicker;->mDayFormatter:Ljava/text/SimpleDateFormat;

    .line 496
    :goto_0
    iget-object v3, p0, Landroid/support/v7/widget/SeslDatePicker;->mMinDate:Ljava/util/Calendar;

    iget-object v4, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-direct {p0, v3, v4}, Landroid/support/v7/widget/SeslDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v7/widget/SeslDatePicker;->mMinDate:Ljava/util/Calendar;

    .line 497
    iget-object v3, p0, Landroid/support/v7/widget/SeslDatePicker;->mMaxDate:Ljava/util/Calendar;

    iget-object v4, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-direct {p0, v3, v4}, Landroid/support/v7/widget/SeslDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v7/widget/SeslDatePicker;->mMaxDate:Ljava/util/Calendar;

    .line 498
    iget-object v3, p0, Landroid/support/v7/widget/SeslDatePicker;->mMaxDate:Ljava/util/Calendar;

    iget-object v4, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-direct {p0, v3, v4}, Landroid/support/v7/widget/SeslDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v7/widget/SeslDatePicker;->mTempMinMaxDate:Ljava/util/Calendar;

    .line 499
    iget-object v3, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v4, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-direct {p0, v3, v4}, Landroid/support/v7/widget/SeslDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    .line 500
    iget-object v3, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v4, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-direct {p0, v3, v4}, Landroid/support/v7/widget/SeslDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v7/widget/SeslDatePicker;->mTempDate:Ljava/util/Calendar;

    .line 502
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslDatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 503
    sget-object v4, Landroid/support/v7/appcompat/R$styleable;->DatePicker:[I

    invoke-virtual {p1, p2, v4, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 505
    sget v5, Landroid/support/v7/appcompat/R$styleable;->DatePicker_android_startYear:I

    const/16 v6, 0x76e

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 506
    sget v6, Landroid/support/v7/appcompat/R$styleable;->DatePicker_android_endYear:I

    const/16 v7, 0x834

    invoke-virtual {v4, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 507
    iget-object v7, p0, Landroid/support/v7/widget/SeslDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v7, v5, v0, v1}, Ljava/util/Calendar;->set(III)V

    .line 508
    iget-object v5, p0, Landroid/support/v7/widget/SeslDatePicker;->mMaxDate:Ljava/util/Calendar;

    const/16 v7, 0xb

    const/16 v8, 0x1f

    invoke-virtual {v5, v6, v7, v8}, Ljava/util/Calendar;->set(III)V

    .line 510
    iget-object v5, p0, Landroid/support/v7/widget/SeslDatePicker;->mContext:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 512
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x17

    if-lt v6, v7, :cond_1

    .line 513
    sget v6, Landroid/support/v7/appcompat/R$layout;->sesl_date_picker:I

    invoke-virtual {v5, v6, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_1

    .line 515
    :cond_1
    sget v6, Landroid/support/v7/appcompat/R$layout;->sesl_date_picker_legacy:I

    invoke-virtual {v5, v6, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 518
    :goto_1
    sget v5, Landroid/support/v7/appcompat/R$styleable;->DatePicker_android_firstDayOfWeek:I

    invoke-virtual {v4, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    if-eqz v5, :cond_2

    .line 521
    invoke-virtual {p0, v5}, Landroid/support/v7/widget/SeslDatePicker;->setFirstDayOfWeek(I)V

    .line 523
    :cond_2
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 525
    iget-object v4, p0, Landroid/support/v7/widget/SeslDatePicker;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/support/v7/appcompat/R$styleable;->DatePicker:[I

    invoke-virtual {v4, p2, v5, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 527
    new-instance p3, Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;

    iget-object p4, p0, Landroid/support/v7/widget/SeslDatePicker;->mContext:Landroid/content/Context;

    invoke-direct {p3, p0, p4, p2}, Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;-><init>(Landroid/support/v7/widget/SeslDatePicker;Landroid/content/Context;Landroid/content/res/TypedArray;)V

    iput-object p3, p0, Landroid/support/v7/widget/SeslDatePicker;->mDayOfTheWeekView:Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;

    .line 528
    sget p3, Landroid/support/v7/appcompat/R$styleable;->DatePicker_dayNumberTextColor:I

    sget p4, Landroid/support/v7/appcompat/R$color;->sesl_date_picker_normal_day_number_text_color_light:I

    .line 530
    invoke-virtual {v3, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p4

    .line 528
    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    .line 531
    sget p4, Landroid/support/v7/appcompat/R$styleable;->DatePicker_btnTintColor:I

    sget v4, Landroid/support/v7/appcompat/R$color;->sesl_date_picker_button_tint_color_light:I

    .line 532
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 531
    invoke-virtual {p2, p4, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p4

    .line 533
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 534
    sget p2, Landroid/support/v7/appcompat/R$id;->sesl_date_picker_calendar:I

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/SeslDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/v4/view/ViewPager;

    iput-object p2, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarViewPager:Landroid/support/v4/view/ViewPager;

    .line 535
    new-instance p2, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;

    invoke-direct {p2, p0}, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;-><init>(Landroid/support/v7/widget/SeslDatePicker;)V

    iput-object p2, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarPagerAdapter:Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;

    .line 536
    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v4, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarPagerAdapter:Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;

    invoke-virtual {p2, v4}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 537
    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v4, Landroid/support/v7/widget/SeslDatePicker$CalendarPageChangeListener;

    invoke-direct {v4, p0, v2}, Landroid/support/v7/widget/SeslDatePicker$CalendarPageChangeListener;-><init>(Landroid/support/v7/widget/SeslDatePicker;Landroid/support/v7/widget/SeslDatePicker$1;)V

    invoke-virtual {p2, v4}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 538
    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p2, v1}, Landroid/support/v4/view/ViewPager;->setMouseWheelEventSupport(Z)V

    .line 539
    sget p2, Landroid/support/v7/appcompat/R$dimen;->sesl_date_picker_calendar_view_padding:I

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Landroid/support/v7/widget/SeslDatePicker;->mPadding:I

    .line 540
    sget p2, Landroid/support/v7/appcompat/R$id;->sesl_date_picker_calendar_header:I

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/SeslDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarHeader:Landroid/widget/RelativeLayout;

    .line 541
    sget p2, Landroid/support/v7/appcompat/R$id;->sesl_date_picker_calendar_header_text:I

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/SeslDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    .line 542
    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 543
    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object p3, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-direct {p0, p2, p3}, Landroid/support/v7/widget/SeslDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p2

    iput-object p2, p0, Landroid/support/v7/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    .line 544
    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object p3, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-direct {p0, p2, p3}, Landroid/support/v7/widget/SeslDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p2

    iput-object p2, p0, Landroid/support/v7/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    .line 545
    sget p2, Landroid/support/v7/appcompat/R$id;->sesl_date_picker_view_animator:I

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/SeslDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ViewAnimator;

    iput-object p2, p0, Landroid/support/v7/widget/SeslDatePicker;->mAnimator:Landroid/widget/ViewAnimator;

    .line 546
    sget p2, Landroid/support/v7/appcompat/R$id;->sesl_date_picker_spinner_view:I

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/SeslDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    iput-object p2, p0, Landroid/support/v7/widget/SeslDatePicker;->mSpinnerLayout:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    .line 547
    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePicker;->mSpinnerLayout:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    new-instance p3, Landroid/support/v7/widget/SeslDatePicker$6;

    invoke-direct {p3, p0}, Landroid/support/v7/widget/SeslDatePicker$6;-><init>(Landroid/support/v7/widget/SeslDatePicker;)V

    invoke-virtual {p2, p0, p3}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->setOnSpinnerDateChangedListener(Landroid/support/v7/widget/SeslDatePicker;Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$OnSpinnerDateChangedListener;)V

    .line 620
    iput v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentViewType:I

    .line 621
    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    iget-object p3, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarHeaderClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 622
    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    new-instance p3, Landroid/support/v7/widget/SeslDatePicker$7;

    invoke-direct {p3, p0}, Landroid/support/v7/widget/SeslDatePicker$7;-><init>(Landroid/support/v7/widget/SeslDatePicker;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 630
    sget p2, Landroid/support/v7/appcompat/R$dimen;->sesl_date_picker_calendar_day_height:I

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Landroid/support/v7/widget/SeslDatePicker;->mDayOfTheWeekLayoutHeight:I

    .line 632
    invoke-direct {p0}, Landroid/support/v7/widget/SeslDatePicker;->checkMaxFontSize()V

    .line 634
    sget p2, Landroid/support/v7/appcompat/R$dimen;->sesl_date_picker_calendar_view_width:I

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarViewPagerWidth:I

    .line 636
    sget p2, Landroid/support/v7/appcompat/R$dimen;->sesl_date_picker_calendar_view_margin:I

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarViewMargin:I

    .line 638
    sget p2, Landroid/support/v7/appcompat/R$dimen;->sesl_date_picker_calendar_view_width:I

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Landroid/support/v7/widget/SeslDatePicker;->mDayOfTheWeekLayoutWidth:I

    .line 640
    sget p2, Landroid/support/v7/appcompat/R$id;->sesl_date_picker_day_of_the_week:I

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/SeslDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Landroid/support/v7/widget/SeslDatePicker;->mDayOfTheWeekLayout:Landroid/widget/LinearLayout;

    .line 641
    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePicker;->mDayOfTheWeekLayout:Landroid/widget/LinearLayout;

    iget-object p3, p0, Landroid/support/v7/widget/SeslDatePicker;->mDayOfTheWeekView:Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 643
    sget p2, Landroid/support/v7/appcompat/R$id;->sesl_date_picker_layout:I

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/SeslDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Landroid/support/v7/widget/SeslDatePicker;->mDatePickerLayout:Landroid/widget/LinearLayout;

    .line 644
    sget p2, Landroid/support/v7/appcompat/R$id;->sesl_date_picker_calendar_header_layout:I

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/SeslDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarHeaderLayout:Landroid/widget/RelativeLayout;

    .line 647
    iget-boolean p2, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsRTL:Z

    if-eqz p2, :cond_3

    .line 648
    sget p2, Landroid/support/v7/appcompat/R$id;->sesl_date_picker_calendar_header_next_button:I

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/SeslDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Landroid/support/v7/widget/SeslDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    .line 650
    sget p2, Landroid/support/v7/appcompat/R$id;->sesl_date_picker_calendar_header_prev_button:I

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/SeslDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Landroid/support/v7/widget/SeslDatePicker;->mNextButton:Landroid/widget/ImageButton;

    .line 652
    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    iget-object p3, p0, Landroid/support/v7/widget/SeslDatePicker;->mContext:Landroid/content/Context;

    sget v0, Landroid/support/v7/appcompat/R$string;->sesl_date_picker_increment_month:I

    .line 653
    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 652
    invoke-virtual {p2, p3}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 654
    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePicker;->mNextButton:Landroid/widget/ImageButton;

    iget-object p3, p0, Landroid/support/v7/widget/SeslDatePicker;->mContext:Landroid/content/Context;

    sget v0, Landroid/support/v7/appcompat/R$string;->sesl_date_picker_decrement_month:I

    .line 655
    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 654
    invoke-virtual {p2, p3}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 657
    :cond_3
    sget p2, Landroid/support/v7/appcompat/R$id;->sesl_date_picker_calendar_header_prev_button:I

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/SeslDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Landroid/support/v7/widget/SeslDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    .line 659
    sget p2, Landroid/support/v7/appcompat/R$id;->sesl_date_picker_calendar_header_next_button:I

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/SeslDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Landroid/support/v7/widget/SeslDatePicker;->mNextButton:Landroid/widget/ImageButton;

    .line 663
    :goto_2
    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {p2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 664
    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePicker;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {p2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 665
    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {p2, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 666
    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePicker;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {p2, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 667
    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    iget-object p3, p0, Landroid/support/v7/widget/SeslDatePicker;->mMonthBtnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p2, p3}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 668
    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePicker;->mNextButton:Landroid/widget/ImageButton;

    iget-object p3, p0, Landroid/support/v7/widget/SeslDatePicker;->mMonthBtnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p2, p3}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 669
    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    iget-object p3, p0, Landroid/support/v7/widget/SeslDatePicker;->mMonthBtnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {p2, p3}, Landroid/widget/ImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 670
    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePicker;->mNextButton:Landroid/widget/ImageButton;

    iget-object p3, p0, Landroid/support/v7/widget/SeslDatePicker;->mMonthBtnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {p2, p3}, Landroid/widget/ImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 671
    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    iget-object p3, p0, Landroid/support/v7/widget/SeslDatePicker;->mBtnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {p2, p3}, Landroid/widget/ImageButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 672
    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePicker;->mNextButton:Landroid/widget/ImageButton;

    iget-object p3, p0, Landroid/support/v7/widget/SeslDatePicker;->mBtnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {p2, p3}, Landroid/widget/ImageButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 673
    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {p2, p4}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 674
    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePicker;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {p2, p4}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 675
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 676
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const p3, 0x101045c

    invoke-virtual {p1, p3, p2, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 678
    iget p1, p2, Landroid/util/TypedValue;->resourceId:I

    iput p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mBackgroundBorderlessResId:I

    .line 680
    sget p1, Landroid/support/v7/appcompat/R$dimen;->sesl_date_picker_calendar_header_height:I

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarHeaderLayoutHeight:I

    .line 682
    sget p1, Landroid/support/v7/appcompat/R$dimen;->sesl_date_picker_calendar_view_height:I

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarViewPagerHeight:I

    .line 684
    iget p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarViewPagerWidth:I

    iput p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mOldCalendarViewPagerWidth:I

    .line 686
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 687
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    sget p2, Landroid/support/v7/appcompat/R$id;->sesl_date_picker_calendar_header_text:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setNextFocusRightId(I)V

    .line 688
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mNextButton:Landroid/widget/ImageButton;

    sget p2, Landroid/support/v7/appcompat/R$id;->sesl_date_picker_calendar_header_text:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setNextFocusLeftId(I)V

    .line 689
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    sget p2, Landroid/support/v7/appcompat/R$id;->sesl_date_picker_calendar_header_next_button:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setNextFocusRightId(I)V

    .line 690
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    sget p2, Landroid/support/v7/appcompat/R$id;->sesl_date_picker_calendar_header_prev_button:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setNextFocusLeftId(I)V

    .line 692
    sget p1, Landroid/support/v7/appcompat/R$id;->sesl_date_picker_between_header_and_weekend:I

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SeslDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mFirstBlankSpace:Landroid/view/View;

    .line 693
    sget p1, Landroid/support/v7/appcompat/R$id;->sesl_date_picker_between_weekend_and_calender:I

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SeslDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mSecondBlankSpace:Landroid/view/View;

    .line 694
    sget p1, Landroid/support/v7/appcompat/R$dimen;->sesl_date_picker_gap_between_header_and_weekend:I

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mFirstBlankSpaceHeight:I

    .line 696
    sget p1, Landroid/support/v7/appcompat/R$dimen;->sesl_date_picker_gap_between_weekend_and_calender:I

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mSecondBlankSpaceHeight:I

    .line 699
    iget p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarHeaderLayoutHeight:I

    iget p2, p0, Landroid/support/v7/widget/SeslDatePicker;->mFirstBlankSpaceHeight:I

    add-int/2addr p1, p2

    iget p2, p0, Landroid/support/v7/widget/SeslDatePicker;->mDayOfTheWeekLayoutHeight:I

    add-int/2addr p1, p2

    iget p2, p0, Landroid/support/v7/widget/SeslDatePicker;->mSecondBlankSpaceHeight:I

    add-int/2addr p1, p2

    iget p2, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarViewPagerHeight:I

    add-int/2addr p1, p2

    iput p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mDatePickerHeight:I

    .line 702
    invoke-direct {p0, v1}, Landroid/support/v7/widget/SeslDatePicker;->updateSimpleMonthView(Z)V

    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/widget/SeslDatePicker;)V
    .locals 0

    .line 125
    invoke-direct {p0}, Landroid/support/v7/widget/SeslDatePicker;->removeAllCallbacks()V

    return-void
.end method

.method static synthetic access$100(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;
    .locals 0

    .line 125
    iget-object p0, p0, Landroid/support/v7/widget/SeslDatePicker;->mTempDate:Ljava/util/Calendar;

    return-object p0
.end method

.method static synthetic access$1000(Landroid/support/v7/widget/SeslDatePicker;)I
    .locals 0

    .line 125
    iget p0, p0, Landroid/support/v7/widget/SeslDatePicker;->mBackgroundBorderlessResId:I

    return p0
.end method

.method static synthetic access$1100(Landroid/support/v7/widget/SeslDatePicker;)Z
    .locals 0

    .line 125
    iget-boolean p0, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsRTL:Z

    return p0
.end method

.method static synthetic access$1202(Landroid/support/v7/widget/SeslDatePicker;Z)Z
    .locals 0

    .line 125
    iput-boolean p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsConfigurationChanged:Z

    return p1
.end method

.method static synthetic access$1400(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;
    .locals 0

    .line 125
    iget-object p0, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    return-object p0
.end method

.method static synthetic access$1500(Landroid/support/v7/widget/SeslDatePicker;)Z
    .locals 0

    .line 125
    iget-boolean p0, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsLunar:Z

    return p0
.end method

.method static synthetic access$1600(Landroid/support/v7/widget/SeslDatePicker;)I
    .locals 0

    .line 125
    iget p0, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarCurrentYear:I

    return p0
.end method

.method static synthetic access$1602(Landroid/support/v7/widget/SeslDatePicker;I)I
    .locals 0

    .line 125
    iput p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarCurrentYear:I

    return p1
.end method

.method static synthetic access$1700(Landroid/support/v7/widget/SeslDatePicker;)I
    .locals 0

    .line 125
    iget p0, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarCurrentMonth:I

    return p0
.end method

.method static synthetic access$1702(Landroid/support/v7/widget/SeslDatePicker;I)I
    .locals 0

    .line 125
    iput p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarCurrentMonth:I

    return p1
.end method

.method static synthetic access$1800(Landroid/support/v7/widget/SeslDatePicker;)I
    .locals 0

    .line 125
    iget p0, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarCurrentDay:I

    return p0
.end method

.method static synthetic access$1802(Landroid/support/v7/widget/SeslDatePicker;I)I
    .locals 0

    .line 125
    iput p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarCurrentDay:I

    return p1
.end method

.method static synthetic access$1900(Landroid/support/v7/widget/SeslDatePicker;)I
    .locals 0

    .line 125
    iget p0, p0, Landroid/support/v7/widget/SeslDatePicker;->mMode:I

    return p0
.end method

.method static synthetic access$200(Landroid/support/v7/widget/SeslDatePicker;Ljava/util/Calendar;)Ljava/lang/String;
    .locals 0

    .line 125
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslDatePicker;->getMonthAndYearString(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2000(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;
    .locals 0

    .line 125
    iget-object p0, p0, Landroid/support/v7/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    return-object p0
.end method

.method static synthetic access$2100(Landroid/support/v7/widget/SeslDatePicker;)I
    .locals 0

    .line 125
    iget p0, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarStartYear:I

    return p0
.end method

.method static synthetic access$2102(Landroid/support/v7/widget/SeslDatePicker;I)I
    .locals 0

    .line 125
    iput p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarStartYear:I

    return p1
.end method

.method static synthetic access$2200(Landroid/support/v7/widget/SeslDatePicker;)I
    .locals 0

    .line 125
    iget p0, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarStartMonth:I

    return p0
.end method

.method static synthetic access$2202(Landroid/support/v7/widget/SeslDatePicker;I)I
    .locals 0

    .line 125
    iput p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarStartMonth:I

    return p1
.end method

.method static synthetic access$2300(Landroid/support/v7/widget/SeslDatePicker;)I
    .locals 0

    .line 125
    iget p0, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarStartDay:I

    return p0
.end method

.method static synthetic access$2302(Landroid/support/v7/widget/SeslDatePicker;I)I
    .locals 0

    .line 125
    iput p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarStartDay:I

    return p1
.end method

.method static synthetic access$2400(Landroid/support/v7/widget/SeslDatePicker;)I
    .locals 0

    .line 125
    iget p0, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsLeapStartMonth:I

    return p0
.end method

.method static synthetic access$2402(Landroid/support/v7/widget/SeslDatePicker;I)I
    .locals 0

    .line 125
    iput p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsLeapStartMonth:I

    return p1
.end method

.method static synthetic access$2500(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;
    .locals 0

    .line 125
    iget-object p0, p0, Landroid/support/v7/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    return-object p0
.end method

.method static synthetic access$2600(Landroid/support/v7/widget/SeslDatePicker;)I
    .locals 0

    .line 125
    iget p0, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarEndYear:I

    return p0
.end method

.method static synthetic access$2602(Landroid/support/v7/widget/SeslDatePicker;I)I
    .locals 0

    .line 125
    iput p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarEndYear:I

    return p1
.end method

.method static synthetic access$2700(Landroid/support/v7/widget/SeslDatePicker;)I
    .locals 0

    .line 125
    iget p0, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarEndMonth:I

    return p0
.end method

.method static synthetic access$2702(Landroid/support/v7/widget/SeslDatePicker;I)I
    .locals 0

    .line 125
    iput p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarEndMonth:I

    return p1
.end method

.method static synthetic access$2800(Landroid/support/v7/widget/SeslDatePicker;)I
    .locals 0

    .line 125
    iget p0, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarEndDay:I

    return p0
.end method

.method static synthetic access$2802(Landroid/support/v7/widget/SeslDatePicker;I)I
    .locals 0

    .line 125
    iput p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarEndDay:I

    return p1
.end method

.method static synthetic access$2900(Landroid/support/v7/widget/SeslDatePicker;)I
    .locals 0

    .line 125
    iget p0, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsLeapEndMonth:I

    return p0
.end method

.method static synthetic access$2902(Landroid/support/v7/widget/SeslDatePicker;I)I
    .locals 0

    .line 125
    iput p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsLeapEndMonth:I

    return p1
.end method

.method static synthetic access$300(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/TextView;
    .locals 0

    .line 125
    iget-object p0, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$3002(Landroid/support/v7/widget/SeslDatePicker;Z)Z
    .locals 0

    .line 125
    iput-boolean p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsLeapMonth:Z

    return p1
.end method

.method static synthetic access$3100(Landroid/support/v7/widget/SeslDatePicker;Z)V
    .locals 0

    .line 125
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslDatePicker;->updateSimpleMonthView(Z)V

    return-void
.end method

.method static synthetic access$3200(Landroid/support/v7/widget/SeslDatePicker;)V
    .locals 0

    .line 125
    invoke-direct {p0}, Landroid/support/v7/widget/SeslDatePicker;->onDateChanged()V

    return-void
.end method

.method static synthetic access$3500(Landroid/support/v7/widget/SeslDatePicker;I)I
    .locals 0

    .line 125
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslDatePicker;->getTotalMonthCountWithLeap(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$3600(Landroid/support/v7/widget/SeslDatePicker;Ljava/lang/String;)V
    .locals 0

    .line 125
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslDatePicker;->seslLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3700(Landroid/support/v7/widget/SeslDatePicker;I)Landroid/support/v7/widget/SeslDatePicker$LunarDate;
    .locals 0

    .line 125
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslDatePicker;->getLunarDateByPosition(I)Landroid/support/v7/widget/SeslDatePicker$LunarDate;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3800(Landroid/support/v7/widget/SeslDatePicker;)Z
    .locals 0

    .line 125
    iget-boolean p0, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsLunarSupported:Z

    return p0
.end method

.method static synthetic access$3900(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;
    .locals 0

    .line 125
    iget-object p0, p0, Landroid/support/v7/widget/SeslDatePicker;->mMinDate:Ljava/util/Calendar;

    return-object p0
.end method

.method static synthetic access$400(Landroid/support/v7/widget/SeslDatePicker;)I
    .locals 0

    .line 125
    iget p0, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentViewType:I

    return p0
.end method

.method static synthetic access$4000(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;
    .locals 0

    .line 125
    iget-object p0, p0, Landroid/support/v7/widget/SeslDatePicker;->mMaxDate:Ljava/util/Calendar;

    return-object p0
.end method

.method static synthetic access$4100(Landroid/support/v7/widget/SeslDatePicker;)I
    .locals 0

    .line 125
    iget p0, p0, Landroid/support/v7/widget/SeslDatePicker;->mNumDays:I

    return p0
.end method

.method static synthetic access$4102(Landroid/support/v7/widget/SeslDatePicker;I)I
    .locals 0

    .line 125
    iput p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mNumDays:I

    return p1
.end method

.method static synthetic access$4200(Landroid/support/v7/widget/SeslDatePicker;)I
    .locals 0

    .line 125
    iget p0, p0, Landroid/support/v7/widget/SeslDatePicker;->mWeekStart:I

    return p0
.end method

.method static synthetic access$4202(Landroid/support/v7/widget/SeslDatePicker;I)I
    .locals 0

    .line 125
    iput p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mWeekStart:I

    return p1
.end method

.method static synthetic access$4300(Landroid/support/v7/widget/SeslDatePicker;)Z
    .locals 0

    .line 125
    iget-boolean p0, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsFromSetLunar:Z

    return p0
.end method

.method static synthetic access$4302(Landroid/support/v7/widget/SeslDatePicker;Z)Z
    .locals 0

    .line 125
    iput-boolean p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsFromSetLunar:Z

    return p1
.end method

.method static synthetic access$4400(Landroid/support/v7/widget/SeslDatePicker;)Landroid/os/Handler;
    .locals 0

    .line 125
    iget-object p0, p0, Landroid/support/v7/widget/SeslDatePicker;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$4500(Landroid/support/v7/widget/SeslDatePicker;)Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;
    .locals 0

    .line 125
    iget-object p0, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarPagerAdapter:Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;

    return-object p0
.end method

.method static synthetic access$4600(Landroid/support/v7/widget/SeslDatePicker;)I
    .locals 0

    .line 125
    iget p0, p0, Landroid/support/v7/widget/SeslDatePicker;->mDayOfTheWeekLayoutHeight:I

    return p0
.end method

.method static synthetic access$4700(Landroid/support/v7/widget/SeslDatePicker;)I
    .locals 0

    .line 125
    iget p0, p0, Landroid/support/v7/widget/SeslDatePicker;->mDayOfTheWeekLayoutWidth:I

    return p0
.end method

.method static synthetic access$4800(Landroid/support/v7/widget/SeslDatePicker;)Ljava/text/SimpleDateFormat;
    .locals 0

    .line 125
    iget-object p0, p0, Landroid/support/v7/widget/SeslDatePicker;->mDayFormatter:Ljava/text/SimpleDateFormat;

    return-object p0
.end method

.method static synthetic access$4900(Landroid/support/v7/widget/SeslDatePicker;)I
    .locals 0

    .line 125
    iget p0, p0, Landroid/support/v7/widget/SeslDatePicker;->mPadding:I

    return p0
.end method

.method static synthetic access$500(Landroid/support/v7/widget/SeslDatePicker;)Landroid/content/Context;
    .locals 0

    .line 125
    iget-object p0, p0, Landroid/support/v7/widget/SeslDatePicker;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$5100(Landroid/support/v7/widget/SeslDatePicker;)Landroid/support/v4/view/ViewPager;
    .locals 0

    .line 125
    iget-object p0, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarViewPager:Landroid/support/v4/view/ViewPager;

    return-object p0
.end method

.method static synthetic access$600(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;
    .locals 0

    .line 125
    iget-object p0, p0, Landroid/support/v7/widget/SeslDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic access$700(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;
    .locals 0

    .line 125
    iget-object p0, p0, Landroid/support/v7/widget/SeslDatePicker;->mNextButton:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic access$800(Landroid/support/v7/widget/SeslDatePicker;)I
    .locals 0

    .line 125
    iget p0, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentPosition:I

    return p0
.end method

.method static synthetic access$802(Landroid/support/v7/widget/SeslDatePicker;I)I
    .locals 0

    .line 125
    iput p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentPosition:I

    return p1
.end method

.method static synthetic access$900(Landroid/support/v7/widget/SeslDatePicker;)I
    .locals 0

    .line 125
    iget p0, p0, Landroid/support/v7/widget/SeslDatePicker;->mPositionCount:I

    return p0
.end method

.method static synthetic access$902(Landroid/support/v7/widget/SeslDatePicker;I)I
    .locals 0

    .line 125
    iput p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mPositionCount:I

    return p1
.end method

.method private checkMaxFontSize()V
    .locals 6

    .line 2377
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 2378
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslDatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroid/support/v7/appcompat/R$dimen;->sesl_date_picker_calendar_header_month_text_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    const v2, 0x3f99999a    # 1.2f

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    .line 2382
    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    const/4 v3, 0x0

    int-to-float v1, v1

    div-float/2addr v1, v0

    float-to-double v0, v1

    .line 2383
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    const-wide v4, 0x3ff3333340000000L    # 1.2000000476837158

    mul-double v0, v0, v4

    .line 2382
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {v2, v3, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    return-void
.end method

.method private getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 2

    if-nez p1, :cond_0

    .line 741
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    return-object p1

    .line 743
    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 744
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    .line 745
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    return-object p1
.end method

.method public static getCalendarPackageName()Ljava/lang/String;
    .locals 4

    const-string v0, "com.android.calendar"

    const-string v1, "SEC_FLOATING_FEATURE_CALENDAR_CONFIG_PACKAGE_NAME"

    const-string v2, "com.android.calendar"

    .line 2867
    invoke-static {v1, v2}, Landroid/support/v4/feature/SeslFloatingFeatureReflector;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2870
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2874
    :try_start_0
    sget-object v2, Landroid/support/v7/widget/SeslDatePicker;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    move-object v0, v1

    :catch_0
    return-object v0
.end method

.method private getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 2924
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Picker"

    .line 2926
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " NoSuchMethodException"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private getFormattedCurrentDate()Ljava/lang/String;
    .locals 4

    .line 1186
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const/16 v3, 0x14

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getIndexOfleapMonthOfYear(I)I
    .locals 6

    .line 2779
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mSolarLunarTables:Ljava/lang/Object;

    const/16 v1, 0x7f

    if-nez v0, :cond_0

    return v1

    .line 2782
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mSolarLunarTables:Ljava/lang/Object;

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePicker;->mStartOfLunarYearField:Ljava/lang/reflect/Field;

    invoke-direct {p0, v0, v2}, Landroid/support/v7/widget/SeslDatePicker;->getObject(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    .line 2783
    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePicker;->mSolarLunarTables:Ljava/lang/Object;

    iget-object v3, p0, Landroid/support/v7/widget/SeslDatePicker;->mWidthPerYearField:Ljava/lang/reflect/Field;

    invoke-direct {p0, v2, v3}, Landroid/support/v7/widget/SeslDatePicker;->getObject(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v2

    .line 2784
    iget-object v3, p0, Landroid/support/v7/widget/SeslDatePicker;->mSolarLunarTables:Ljava/lang/Object;

    iget-object v4, p0, Landroid/support/v7/widget/SeslDatePicker;->mIndexOfLeapMonthField:Ljava/lang/reflect/Field;

    invoke-direct {p0, v3, v4}, Landroid/support/v7/widget/SeslDatePicker;->getObject(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v3

    .line 2785
    instance-of v4, v0, Ljava/lang/Integer;

    if-eqz v4, :cond_3

    instance-of v4, v2, Ljava/lang/Integer;

    if-eqz v4, :cond_3

    instance-of v4, v3, Ljava/lang/Integer;

    if-nez v4, :cond_1

    goto :goto_0

    .line 2791
    :cond_1
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr p1, v0

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int p1, p1, v0

    .line 2792
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mSolarLunarTables:Ljava/lang/Object;

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePicker;->mGetLunarMethod:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    check-cast v3, Ljava/lang/Integer;

    .line 2793
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr p1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v5

    .line 2792
    invoke-direct {p0, v0, v2, v4}, Landroid/support/v7/widget/SeslDatePicker;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 2795
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_2

    .line 2796
    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    :cond_2
    return v1

    :cond_3
    :goto_0
    const-string p1, "Picker"

    const-string v0, "getIndexOfleapMonthOfYear, not Integer"

    .line 2787
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private getLunarDateByPosition(I)Landroid/support/v7/widget/SeslDatePicker$LunarDate;
    .locals 8

    .line 2749
    new-instance v0, Landroid/support/v7/widget/SeslDatePicker$LunarDate;

    invoke-direct {v0}, Landroid/support/v7/widget/SeslDatePicker$LunarDate;-><init>()V

    .line 2750
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslDatePicker;->getMinYear()I

    move-result v1

    .line 2755
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslDatePicker;->getMinYear()I

    move-result v2

    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslDatePicker;->getMaxYear()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-gt v2, v3, :cond_5

    .line 2756
    invoke-direct {p0, v2}, Landroid/support/v7/widget/SeslDatePicker;->getTotalMonthCountWithLeap(I)I

    move-result v3

    if-ge p1, v3, :cond_4

    .line 2759
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslDatePicker;->getMinYear()I

    move-result v1

    if-ne v2, v1, :cond_0

    .line 2760
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslDatePicker;->getMinMonth()I

    move-result v1

    neg-int v1, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v2, -0x1

    .line 2762
    invoke-direct {p0, v1}, Landroid/support/v7/widget/SeslDatePicker;->getTotalMonthCountWithLeap(I)I

    move-result v1

    :goto_1
    sub-int/2addr p1, v1

    .line 2765
    invoke-direct {p0, v2}, Landroid/support/v7/widget/SeslDatePicker;->getIndexOfleapMonthOfYear(I)I

    move-result v1

    const/16 v3, 0xd

    const/16 v6, 0xc

    if-le v1, v6, :cond_1

    goto :goto_2

    :cond_1
    const/16 v6, 0xd

    :goto_2
    if-ge p1, v1, :cond_2

    move v7, p1

    goto :goto_3

    :cond_2
    add-int/lit8 v7, p1, -0x1

    :goto_3
    if-ne v6, v3, :cond_3

    if-ne v1, p1, :cond_3

    const/4 v4, 0x1

    :cond_3
    move v1, v2

    move p1, v4

    move v4, v7

    goto :goto_4

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    .line 2774
    :goto_4
    invoke-virtual {v0, v1, v4, v5, p1}, Landroid/support/v7/widget/SeslDatePicker$LunarDate;->set(IIIZ)V

    return-object v0
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

    .line 2891
    :try_start_0
    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p3, "Picker"

    .line 2893
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

.method private getMonthAndYearString(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 10

    .line 2032
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsFarsiLanguage:Z

    if-eqz v0, :cond_0

    .line 2033
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "LLLL y"

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 2035
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 2036
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsTibetanLanguage:Z

    if-eqz v0, :cond_1

    .line 2037
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "y LLLL"

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 2039
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 2041
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2042
    new-instance v3, Ljava/util/Formatter;

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-direct {v3, v0, v1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    const/16 v8, 0x24

    const/4 v1, 0x0

    .line 2046
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2047
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .line 2048
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslDatePicker;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 2049
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v9

    move-wide v4, v6

    .line 2048
    invoke-static/range {v2 .. v9}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object p1

    .line 2049
    invoke-virtual {p1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getObject(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const-string p1, "Picker"

    const-string p2, "field is null"

    .line 2934
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 2939
    :cond_0
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v1, "Picker"

    .line 2943
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " IllegalArgumentException"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p1

    const-string v1, "Picker"

    .line 2941
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " IllegalAccessException"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v0
.end method

.method private getTotalMonthCountWithLeap(I)I
    .locals 2

    .line 2742
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mTotalMonthCountWithLeap:[I

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslDatePicker;->getMinYear()I

    move-result v0

    if-ge p1, v0, :cond_0

    goto :goto_0

    .line 2745
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mTotalMonthCountWithLeap:[I

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslDatePicker;->getMinYear()I

    move-result v1

    sub-int/2addr p1, v1

    aget p1, v0, p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private varargs invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const-string p1, "Picker"

    const-string p2, "method is null"

    .line 2903
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 2908
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

    const-string p3, "Picker"

    .line 2914
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

    const-string p3, "Picker"

    .line 2912
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

    const-string p3, "Picker"

    .line 2910
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

.method private isFarsiLanguage()Z
    .locals 2

    const-string v0, "fa"

    .line 2975
    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isRTL()Z
    .locals 4

    const-string v0, "ur"

    .line 1541
    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1544
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    .line 1545
    invoke-virtual {v0, v2}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1544
    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private isSimplifiedChinese()Z
    .locals 2

    .line 2983
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    .line 2984
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isTibetanLanguage()Z
    .locals 2

    const-string v0, "bo"

    .line 2979
    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private makeMeasureSpec(II)I
    .locals 5

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    return p1

    .line 1997
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_2

    .line 2001
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslDatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v3, 0x258

    if-lt v2, v3, :cond_1

    .line 2003
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslDatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Landroid/support/v7/appcompat/R$dimen;->sesl_date_picker_dialog_min_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    int-to-float v2, v2

    .line 2007
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslDatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 2006
    invoke-static {v3, v2, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    goto :goto_0

    .line 2010
    :cond_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    :goto_0
    const/high16 v3, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_5

    if-eqz v0, :cond_4

    if-ne v0, v3, :cond_3

    .line 2014
    iget p2, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarViewMargin:I

    mul-int/lit8 p2, p2, 0x2

    sub-int p2, v2, p2

    iput p2, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarViewPagerWidth:I

    .line 2015
    iget p2, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarViewMargin:I

    mul-int/lit8 p2, p2, 0x2

    sub-int/2addr v2, p2

    iput v2, p0, Landroid/support/v7/widget/SeslDatePicker;->mDayOfTheWeekLayoutWidth:I

    goto :goto_1

    .line 2026
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown measure mode: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2023
    :cond_4
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_1

    .line 2018
    :cond_5
    iget p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarViewMargin:I

    mul-int/lit8 p1, p1, 0x2

    sub-int p1, v2, p1

    iput p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarViewPagerWidth:I

    .line 2019
    iget p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarViewMargin:I

    mul-int/lit8 p1, p1, 0x2

    sub-int p1, v2, p1

    iput p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mDayOfTheWeekLayoutWidth:I

    .line 2020
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :goto_1
    return p1
.end method

.method private onDateChanged()V
    .locals 4

    .line 957
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mOnDateChangedListener:Landroid/support/v7/widget/SeslDatePicker$OnDateChangedListener;

    if-eqz v0, :cond_1

    .line 958
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 959
    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 960
    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 962
    iget-boolean v3, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsLunar:Z

    if-eqz v3, :cond_0

    .line 963
    iget v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarCurrentYear:I

    .line 964
    iget v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarCurrentMonth:I

    .line 965
    iget v2, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarCurrentDay:I

    .line 968
    :cond_0
    iget-object v3, p0, Landroid/support/v7/widget/SeslDatePicker;->mOnDateChangedListener:Landroid/support/v7/widget/SeslDatePicker$OnDateChangedListener;

    invoke-interface {v3, p0, v0, v1, v2}, Landroid/support/v7/widget/SeslDatePicker$OnDateChangedListener;->onDateChanged(Landroid/support/v7/widget/SeslDatePicker;III)V

    :cond_1
    return-void
.end method

.method private postChangeCurrentByOneFromLongPress(ZJ)V
    .locals 1

    .line 2205
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/support/v7/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;

    if-nez v0, :cond_0

    .line 2206
    new-instance v0, Landroid/support/v7/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;-><init>(Landroid/support/v7/widget/SeslDatePicker;)V

    iput-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/support/v7/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;

    goto :goto_0

    .line 2208
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/support/v7/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslDatePicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2210
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/support/v7/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-static {v0, p1}, Landroid/support/v7/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;->access$5000(Landroid/support/v7/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;Z)V

    .line 2211
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/support/v7/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/SeslDatePicker;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private removeAllCallbacks()V
    .locals 4

    .line 2218
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/support/v7/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_0

    .line 2219
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/support/v7/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslDatePicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2221
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 2222
    new-instance v1, Landroid/support/v7/widget/SeslDatePicker$10;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/SeslDatePicker$10;-><init>(Landroid/support/v7/widget/SeslDatePicker;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private static scanForActivity(Landroid/content/Context;)Landroid/app/Activity;
    .locals 1

    .line 1930
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 1931
    check-cast p0, Landroid/app/Activity;

    return-object p0

    .line 1932
    :cond_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    .line 1933
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v7/widget/SeslDatePicker;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private seslLog(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private setTotalMonthCountWithLeap()V
    .locals 6

    .line 2697
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mSolarLunarTables:Ljava/lang/Object;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v0, 0x0

    .line 2703
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslDatePicker;->getMaxYear()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslDatePicker;->getMinYear()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mTotalMonthCountWithLeap:[I

    .line 2705
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslDatePicker;->getMinYear()I

    move-result v1

    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslDatePicker;->getMaxYear()I

    move-result v2

    if-gt v1, v2, :cond_8

    .line 2706
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslDatePicker;->getMinYear()I

    move-result v2

    const/16 v3, 0xd

    const/16 v4, 0xc

    if-ne v1, v2, :cond_3

    .line 2707
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslDatePicker;->getMinMonth()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 2708
    invoke-direct {p0, v1}, Landroid/support/v7/widget/SeslDatePicker;->getIndexOfleapMonthOfYear(I)I

    move-result v5

    if-gt v5, v4, :cond_2

    if-ge v5, v2, :cond_1

    sub-int/2addr v4, v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    sub-int/2addr v3, v2

    add-int/lit8 v4, v3, 0x1

    goto :goto_2

    :cond_2
    sub-int/2addr v4, v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2718
    :cond_3
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslDatePicker;->getMaxYear()I

    move-result v2

    if-ne v1, v2, :cond_6

    .line 2719
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslDatePicker;->getMaxMonth()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 2720
    invoke-direct {p0, v1}, Landroid/support/v7/widget/SeslDatePicker;->getIndexOfleapMonthOfYear(I)I

    move-result v3

    if-gt v3, v4, :cond_5

    if-ge v2, v3, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    :cond_5
    :goto_1
    move v4, v2

    goto :goto_2

    .line 2731
    :cond_6
    invoke-direct {p0, v1}, Landroid/support/v7/widget/SeslDatePicker;->getIndexOfleapMonthOfYear(I)I

    move-result v2

    if-le v2, v4, :cond_7

    goto :goto_2

    :cond_7
    const/16 v4, 0xd

    :goto_2
    add-int/2addr v0, v4

    .line 2736
    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePicker;->mTotalMonthCountWithLeap:[I

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslDatePicker;->getMinYear()I

    move-result v3

    sub-int v3, v1, v3

    aput v0, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_8
    return-void

    :cond_9
    :goto_3
    return-void
.end method

.method private updateSimpleMonthView(Z)V
    .locals 6

    .line 1642
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 1643
    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 1645
    iget-boolean v4, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsLunar:Z

    if-eqz v4, :cond_0

    .line 1646
    iget v2, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarCurrentYear:I

    .line 1647
    iget v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarCurrentMonth:I

    .line 1652
    :cond_0
    iget-boolean v4, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarChanged:Z

    if-eqz v4, :cond_1

    .line 1653
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 1654
    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 1658
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslDatePicker;->getMinYear()I

    move-result v4

    sub-int v4, v2, v4

    mul-int/lit8 v4, v4, 0xc

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslDatePicker;->getMinMonth()I

    move-result v5

    sub-int v5, v0, v5

    add-int/2addr v4, v5

    .line 1660
    iget-boolean v5, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsLunar:Z

    if-eqz v5, :cond_7

    .line 1661
    invoke-direct {p0, v2}, Landroid/support/v7/widget/SeslDatePicker;->getIndexOfleapMonthOfYear(I)I

    move-result v4

    if-ge v0, v4, :cond_2

    move v4, v0

    goto :goto_0

    :cond_2
    add-int/lit8 v4, v0, 0x1

    .line 1663
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslDatePicker;->getMinYear()I

    move-result v5

    if-ne v2, v5, :cond_3

    .line 1664
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslDatePicker;->getMinMonth()I

    move-result v2

    neg-int v2, v2

    goto :goto_1

    :cond_3
    sub-int/2addr v2, v3

    invoke-direct {p0, v2}, Landroid/support/v7/widget/SeslDatePicker;->getTotalMonthCountWithLeap(I)I

    move-result v2

    :goto_1
    add-int/2addr v4, v2

    .line 1667
    iget v2, p0, Landroid/support/v7/widget/SeslDatePicker;->mMode:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarStartMonth:I

    if-ne v0, v2, :cond_4

    iget v2, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsLeapStartMonth:I

    if-eq v2, v3, :cond_6

    :cond_4
    iget v2, p0, Landroid/support/v7/widget/SeslDatePicker;->mMode:I

    if-ne v2, v1, :cond_5

    iget v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarEndMonth:I

    if-ne v0, v1, :cond_5

    iget v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsLeapEndMonth:I

    if-eq v0, v3, :cond_6

    :cond_5
    iget v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mMode:I

    if-nez v0, :cond_7

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsLeapMonth:Z

    if-eqz v0, :cond_7

    :cond_6
    add-int/lit8 v4, v4, 0x1

    .line 1677
    :cond_7
    iput v4, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentPosition:I

    .line 1678
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v4, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 1680
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    const/16 v0, 0x3e8

    .line 1681
    iput v0, p1, Landroid/os/Message;->what:I

    .line 1682
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1683
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1685
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    const/16 v0, 0x3e9

    .line 1686
    iput v0, p1, Landroid/os/Message;->what:I

    .line 1687
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 1180
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1181
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0}, Landroid/support/v7/widget/SeslDatePicker;->getFormattedCurrentDate()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 1296
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SeslDatePicker;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method public getCurrentViewType()I
    .locals 1

    .line 2491
    iget v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentViewType:I

    return v0
.end method

.method public getDateMode()I
    .locals 1

    .line 2373
    iget v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mMode:I

    return v0
.end method

.method public getDayOfMonth()I
    .locals 2

    .line 1007
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsLunar:Z

    if-eqz v0, :cond_0

    .line 1008
    iget v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarCurrentDay:I

    return v0

    .line 1011
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getEditText(I)Landroid/widget/EditText;
    .locals 1

    .line 2544
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mSpinnerLayout:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->getEditText(I)Landroid/widget/EditText;

    move-result-object p1

    return-object p1
.end method

.method public getEndDate()Ljava/util/Calendar;
    .locals 1

    .line 1439
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    return-object v0
.end method

.method public getFirstDayOfWeek()I
    .locals 1

    .line 1285
    iget v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mFirstDayOfWeek:I

    if-eqz v0, :cond_0

    .line 1286
    iget v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mFirstDayOfWeek:I

    return v0

    .line 1288
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    return v0
.end method

.method public getLunarEndDate()[I
    .locals 3

    const/4 v0, 0x4

    .line 2971
    new-array v0, v0, [I

    iget v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarEndYear:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarEndMonth:I

    const/4 v2, 0x1

    aput v1, v0, v2

    iget v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarEndDay:I

    const/4 v2, 0x2

    aput v1, v0, v2

    iget v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsLeapEndMonth:I

    const/4 v2, 0x3

    aput v1, v0, v2

    return-object v0
.end method

.method public getLunarStartDate()[I
    .locals 3

    const/4 v0, 0x4

    .line 2958
    new-array v0, v0, [I

    iget v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarStartYear:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarStartMonth:I

    const/4 v2, 0x1

    aput v1, v0, v2

    iget v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarStartDay:I

    const/4 v2, 0x2

    aput v1, v0, v2

    iget v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsLeapStartMonth:I

    const/4 v2, 0x3

    aput v1, v0, v2

    return-object v0
.end method

.method public getMaxDate()J
    .locals 2

    .line 1080
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaxDateCalendar()Ljava/util/Calendar;
    .locals 1

    .line 1085
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mMaxDate:Ljava/util/Calendar;

    return-object v0
.end method

.method public getMaxDay()I
    .locals 2

    .line 1152
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mMaxDate:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMaxMonth()I
    .locals 2

    .line 1142
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mMaxDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMaxYear()I
    .locals 2

    .line 1132
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mMaxDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMinDate()J
    .locals 2

    .line 1025
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinDateCalendar()Ljava/util/Calendar;
    .locals 1

    .line 1030
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mMinDate:Ljava/util/Calendar;

    return-object v0
.end method

.method public getMinDay()I
    .locals 2

    .line 1147
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mMinDate:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMinMonth()I
    .locals 2

    .line 1137
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mMinDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMinYear()I
    .locals 2

    .line 1127
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mMinDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMonth()I
    .locals 2

    .line 993
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsLunar:Z

    if-eqz v0, :cond_0

    .line 994
    iget v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarCurrentMonth:I

    return v0

    .line 997
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getNumberPicker(I)Landroid/support/v7/widget/SeslNumberPicker;
    .locals 1

    .line 2555
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mSpinnerLayout:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->getNumberPicker(I)Landroid/support/v7/widget/SeslNumberPicker;

    move-result-object p1

    return-object p1
.end method

.method public getSelectedDay()Ljava/util/Calendar;
    .locals 1

    .line 1421
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    return-object v0
.end method

.method public getStartDate()Ljava/util/Calendar;
    .locals 1

    .line 1430
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    return-object v0
.end method

.method public getYear()I
    .locals 2

    .line 979
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsLunar:Z

    if-eqz v0, :cond_0

    .line 980
    iget v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarCurrentYear:I

    return v0

    .line 983
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public init(IIILandroid/support/v7/widget/SeslDatePicker$OnDateChangedListener;)V
    .locals 6

    .line 762
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 763
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, p2}, Ljava/util/Calendar;->set(II)V

    .line 764
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v3, 0x5

    invoke-virtual {v0, v3, p3}, Ljava/util/Calendar;->set(II)V

    .line 766
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsLunar:Z

    if-eqz v0, :cond_0

    .line 767
    iput p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarCurrentYear:I

    .line 768
    iput p2, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarCurrentMonth:I

    .line 769
    iput p3, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarCurrentDay:I

    .line 773
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v4, p0, Landroid/support/v7/widget/SeslDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 774
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mMinDate:Ljava/util/Calendar;

    iget-object v4, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-direct {p0, v0, v4}, Landroid/support/v7/widget/SeslDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    .line 777
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v4, p0, Landroid/support/v7/widget/SeslDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 778
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mMaxDate:Ljava/util/Calendar;

    iget-object v4, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-direct {p0, v0, v4}, Landroid/support/v7/widget/SeslDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    .line 781
    :cond_2
    iput-object p4, p0, Landroid/support/v7/widget/SeslDatePicker;->mOnDateChangedListener:Landroid/support/v7/widget/SeslDatePicker$OnDateChangedListener;

    .line 783
    invoke-direct {p0, v1}, Landroid/support/v7/widget/SeslDatePicker;->updateSimpleMonthView(Z)V

    .line 785
    invoke-direct {p0}, Landroid/support/v7/widget/SeslDatePicker;->onDateChanged()V

    .line 787
    iget-object p4, p0, Landroid/support/v7/widget/SeslDatePicker;->mSpinnerLayout:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {p4, v4, v5}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->setMinDate(J)V

    .line 788
    iget-object p4, p0, Landroid/support/v7/widget/SeslDatePicker;->mSpinnerLayout:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {p4, v4, v5}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->setMaxDate(J)V

    .line 790
    iget p4, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentViewType:I

    if-nez p4, :cond_3

    .line 791
    iget-object p4, p0, Landroid/support/v7/widget/SeslDatePicker;->mSpinnerLayout:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    const/4 v0, 0x4

    invoke-virtual {p4, v0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->setVisibility(I)V

    .line 792
    iget-object p4, p0, Landroid/support/v7/widget/SeslDatePicker;->mSpinnerLayout:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->setEnabled(Z)V

    .line 795
    :cond_3
    iget-object p4, p0, Landroid/support/v7/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {p4}, Ljava/util/Calendar;->clear()V

    .line 796
    iget-object p4, p0, Landroid/support/v7/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {p4, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 797
    iget-object p4, p0, Landroid/support/v7/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {p4, v2, p2}, Ljava/util/Calendar;->set(II)V

    .line 798
    iget-object p4, p0, Landroid/support/v7/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {p4, v3, p3}, Ljava/util/Calendar;->set(II)V

    .line 799
    iget-object p4, p0, Landroid/support/v7/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {p4}, Ljava/util/Calendar;->clear()V

    .line 800
    iget-object p4, p0, Landroid/support/v7/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {p4, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 801
    iget-object p4, p0, Landroid/support/v7/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {p4, v2, p2}, Ljava/util/Calendar;->set(II)V

    .line 802
    iget-object p4, p0, Landroid/support/v7/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {p4, v3, p3}, Ljava/util/Calendar;->set(II)V

    .line 804
    iget-boolean p4, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsLunar:Z

    if-eqz p4, :cond_4

    .line 805
    iput p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarStartYear:I

    .line 806
    iput p2, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarStartMonth:I

    .line 807
    iput p3, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarStartDay:I

    .line 808
    iput p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarEndYear:I

    .line 809
    iput p2, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarEndMonth:I

    .line 810
    iput p3, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarEndDay:I

    :cond_4
    return-void
.end method

.method public isEditTextMode()Z
    .locals 1

    .line 2512
    iget v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentViewType:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mSpinnerLayout:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->isEditTextMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 1172
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsEnabled:Z

    return v0
.end method

.method public isLeapMonth()Z
    .locals 1

    .line 2693
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsLeapMonth:Z

    return v0
.end method

.method public isLunar()Z
    .locals 1

    .line 2688
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsLunar:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 2144
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 2145
    sget v0, Landroid/support/v7/appcompat/R$id;->sesl_date_picker_calendar_header_prev_button:I

    if-ne p1, v0, :cond_3

    .line 2146
    iget-boolean p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsRTL:Z

    if-eqz p1, :cond_1

    .line 2147
    iget p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentPosition:I

    iget v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mPositionCount:I

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 2150
    :cond_0
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarViewPager:Landroid/support/v4/view/ViewPager;

    iget v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentPosition:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 2153
    :cond_1
    iget p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentPosition:I

    if-nez p1, :cond_2

    return-void

    .line 2156
    :cond_2
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarViewPager:Landroid/support/v4/view/ViewPager;

    iget v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentPosition:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 2159
    :cond_3
    sget v0, Landroid/support/v7/appcompat/R$id;->sesl_date_picker_calendar_header_next_button:I

    if-ne p1, v0, :cond_7

    .line 2160
    iget-boolean p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsRTL:Z

    if-eqz p1, :cond_5

    .line 2161
    iget p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentPosition:I

    if-nez p1, :cond_4

    return-void

    .line 2164
    :cond_4
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarViewPager:Landroid/support/v4/view/ViewPager;

    iget v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentPosition:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 2167
    :cond_5
    iget p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentPosition:I

    iget v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mPositionCount:I

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_6

    return-void

    .line 2170
    :cond_6
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarViewPager:Landroid/support/v4/view/ViewPager;

    iget v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentPosition:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    :cond_7
    :goto_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1202
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1203
    invoke-direct {p0}, Landroid/support/v7/widget/SeslDatePicker;->isRTL()Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsRTL:Z

    .line 1204
    invoke-direct {p0}, Landroid/support/v7/widget/SeslDatePicker;->isFarsiLanguage()Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsFarsiLanguage:Z

    .line 1205
    invoke-direct {p0}, Landroid/support/v7/widget/SeslDatePicker;->isTibetanLanguage()Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsTibetanLanguage:Z

    .line 1208
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 1209
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p1

    goto :goto_0

    .line 1211
    :cond_0
    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1213
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {v0, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1214
    iput-object p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    .line 1215
    invoke-direct {p0}, Landroid/support/v7/widget/SeslDatePicker;->isSimplifiedChinese()Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsSimplifiedChinese:Z

    .line 1216
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsSimplifiedChinese:Z

    if-eqz v0, :cond_1

    .line 1217
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEEEE"

    invoke-direct {v0, v1, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mDayFormatter:Ljava/text/SimpleDateFormat;

    goto :goto_1

    .line 1219
    :cond_1
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE"

    invoke-direct {v0, v1, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mDayFormatter:Ljava/text/SimpleDateFormat;

    .line 1223
    :cond_2
    :goto_1
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 1224
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mDatePickerLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1226
    iput-boolean v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsFirstMeasure:Z

    .line 1228
    sget v0, Landroid/support/v7/appcompat/R$dimen;->sesl_date_picker_calendar_header_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarHeaderLayoutHeight:I

    .line 1230
    sget v0, Landroid/support/v7/appcompat/R$dimen;->sesl_date_picker_calendar_view_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarViewPagerHeight:I

    .line 1232
    sget v0, Landroid/support/v7/appcompat/R$dimen;->sesl_date_picker_calendar_day_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mDayOfTheWeekLayoutHeight:I

    .line 1234
    sget v0, Landroid/support/v7/appcompat/R$dimen;->sesl_date_picker_gap_between_header_and_weekend:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mFirstBlankSpaceHeight:I

    .line 1236
    sget v0, Landroid/support/v7/appcompat/R$dimen;->sesl_date_picker_gap_between_weekend_and_calender:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mSecondBlankSpaceHeight:I

    .line 1239
    iget p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarHeaderLayoutHeight:I

    iget v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mFirstBlankSpaceHeight:I

    add-int/2addr p1, v0

    iget v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mDayOfTheWeekLayoutHeight:I

    add-int/2addr p1, v0

    iget v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mSecondBlankSpaceHeight:I

    add-int/2addr p1, v0

    iget v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarViewPagerHeight:I

    add-int/2addr p1, v0

    iput p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mDatePickerHeight:I

    .line 1242
    iget-boolean p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsRTL:Z

    if-eqz p1, :cond_3

    .line 1243
    iput-boolean v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsConfigurationChanged:Z

    .line 1246
    :cond_3
    invoke-direct {p0}, Landroid/support/v7/widget/SeslDatePicker;->checkMaxFontSize()V

    return-void
.end method

.method public onDayClick(Landroid/support/v7/widget/SeslSimpleMonthView;III)V
    .locals 21

    move-object/from16 v0, p0

    move/from16 v4, p2

    move/from16 v3, p3

    move/from16 v2, p4

    .line 1553
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDayClick day : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/SeslDatePicker;->seslLog(Ljava/lang/String;)V

    .line 1555
    iget-object v1, v0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 1556
    iget-object v6, v0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 1558
    iget-boolean v8, v0, Landroid/support/v7/widget/SeslDatePicker;->mIsLunar:Z

    if-eqz v8, :cond_0

    .line 1559
    iget v1, v0, Landroid/support/v7/widget/SeslDatePicker;->mLunarCurrentYear:I

    .line 1560
    iget v6, v0, Landroid/support/v7/widget/SeslDatePicker;->mLunarCurrentMonth:I

    .line 1564
    :cond_0
    invoke-virtual {v0, v4, v3, v2}, Landroid/support/v7/widget/SeslDatePicker;->onDayOfMonthSelected(III)V

    .line 1567
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/SeslDatePicker;->getMinMonth()I

    move-result v8

    sub-int v8, v3, v8

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/SeslDatePicker;->getMinYear()I

    move-result v9

    sub-int v9, v4, v9

    mul-int/lit8 v9, v9, 0xc

    add-int/2addr v8, v9

    .line 1568
    iget v9, v0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentPosition:I

    if-eq v9, v8, :cond_1

    const/4 v8, 0x1

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    :goto_0
    if-ne v4, v1, :cond_2

    if-ne v3, v6, :cond_2

    .line 1570
    iget v1, v0, Landroid/support/v7/widget/SeslDatePicker;->mOldSelectedDay:I

    if-ne v2, v1, :cond_2

    iget-boolean v1, v0, Landroid/support/v7/widget/SeslDatePicker;->mIsLunar:Z

    if-nez v1, :cond_2

    if-eqz v8, :cond_3

    .line 1572
    :cond_2
    iput v2, v0, Landroid/support/v7/widget/SeslDatePicker;->mOldSelectedDay:I

    .line 1573
    iget-object v1, v0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarPagerAdapter:Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;

    invoke-virtual {v1}, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->notifyDataSetChanged()V

    .line 1577
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/SeslDatePicker;->getMinMonth()I

    move-result v1

    if-ne v1, v3, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/SeslDatePicker;->getMinYear()I

    move-result v1

    if-ne v1, v4, :cond_4

    .line 1578
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/SeslDatePicker;->getMinDay()I

    move-result v1

    move v6, v1

    goto :goto_1

    :cond_4
    const/4 v6, 0x1

    .line 1584
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/SeslDatePicker;->getMaxMonth()I

    move-result v1

    if-ne v1, v3, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/SeslDatePicker;->getMaxYear()I

    move-result v1

    if-ne v1, v4, :cond_5

    .line 1585
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/SeslDatePicker;->getMaxDay()I

    move-result v1

    move v10, v1

    goto :goto_2

    :cond_5
    const/16 v1, 0x1f

    const/16 v10, 0x1f

    .line 1591
    :goto_2
    iget-boolean v1, v0, Landroid/support/v7/widget/SeslDatePicker;->mIsLunarSupported:Z

    if-eqz v1, :cond_6

    .line 1592
    iget-boolean v1, v0, Landroid/support/v7/widget/SeslDatePicker;->mIsLunar:Z

    iget-boolean v8, v0, Landroid/support/v7/widget/SeslDatePicker;->mIsLeapMonth:Z

    iget-object v9, v0, Landroid/support/v7/widget/SeslDatePicker;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    move-object/from16 v15, p1

    invoke-virtual {v15, v1, v8, v9}, Landroid/support/v7/widget/SeslSimpleMonthView;->setLunar(ZZLdalvik/system/PathClassLoader;)V

    goto :goto_3

    :cond_6
    move-object/from16 v15, p1

    .line 1595
    :goto_3
    iget-object v1, v0, Landroid/support/v7/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 1596
    iget-object v8, v0, Landroid/support/v7/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v8, v7}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 1597
    iget-object v9, v0, Landroid/support/v7/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    const/4 v11, 0x5

    invoke-virtual {v9, v11}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 1598
    iget-object v12, v0, Landroid/support/v7/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v12, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 1599
    iget-object v12, v0, Landroid/support/v7/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v12, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 1600
    iget-object v12, v0, Landroid/support/v7/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v12, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 1602
    iget-boolean v12, v0, Landroid/support/v7/widget/SeslDatePicker;->mIsLunar:Z

    if-eqz v12, :cond_7

    .line 1603
    iget v1, v0, Landroid/support/v7/widget/SeslDatePicker;->mLunarStartYear:I

    .line 1604
    iget v5, v0, Landroid/support/v7/widget/SeslDatePicker;->mLunarStartMonth:I

    .line 1605
    iget v7, v0, Landroid/support/v7/widget/SeslDatePicker;->mLunarStartDay:I

    .line 1606
    iget v8, v0, Landroid/support/v7/widget/SeslDatePicker;->mLunarEndYear:I

    .line 1607
    iget v9, v0, Landroid/support/v7/widget/SeslDatePicker;->mLunarEndMonth:I

    .line 1608
    iget v11, v0, Landroid/support/v7/widget/SeslDatePicker;->mLunarEndDay:I

    move v12, v5

    move v14, v7

    move/from16 v16, v8

    move/from16 v19, v9

    goto :goto_4

    :cond_7
    move/from16 v16, v5

    move/from16 v19, v7

    move v12, v8

    move v14, v9

    :goto_4
    move/from16 v20, v11

    move v11, v1

    .line 1611
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/SeslDatePicker;->getFirstDayOfWeek()I

    move-result v5

    iget-object v8, v0, Landroid/support/v7/widget/SeslDatePicker;->mMinDate:Ljava/util/Calendar;

    iget-object v9, v0, Landroid/support/v7/widget/SeslDatePicker;->mMaxDate:Ljava/util/Calendar;

    iget v13, v0, Landroid/support/v7/widget/SeslDatePicker;->mIsLeapStartMonth:I

    iget v1, v0, Landroid/support/v7/widget/SeslDatePicker;->mIsLeapEndMonth:I

    move/from16 v17, v1

    iget v1, v0, Landroid/support/v7/widget/SeslDatePicker;->mMode:I

    move/from16 v18, v1

    move-object/from16 v1, p1

    move/from16 v2, p4

    move/from16 v3, p3

    move/from16 v4, p2

    move v7, v10

    move v10, v11

    move v11, v12

    move v12, v14

    move/from16 v14, v16

    move/from16 v15, v19

    move/from16 v16, v20

    invoke-virtual/range {v1 .. v18}, Landroid/support/v7/widget/SeslSimpleMonthView;->setMonthParams(IIIIIILjava/util/Calendar;Ljava/util/Calendar;IIIIIIIII)V

    .line 1615
    invoke-virtual/range {p1 .. p1}, Landroid/support/v7/widget/SeslSimpleMonthView;->invalidate()V

    return-void
.end method

.method public onDayOfMonthSelected(III)V
    .locals 5

    .line 1347
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 1348
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, p2}, Ljava/util/Calendar;->set(II)V

    .line 1349
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v3, 0x5

    invoke-virtual {v0, v3, p3}, Ljava/util/Calendar;->set(II)V

    .line 1351
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsLunar:Z

    if-eqz v0, :cond_0

    .line 1352
    iput p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarCurrentYear:I

    .line 1353
    iput p2, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarCurrentMonth:I

    .line 1354
    iput p3, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarCurrentDay:I

    .line 1358
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v4, 0x3e8

    .line 1359
    iput v4, v0, Landroid/os/Message;->what:I

    .line 1360
    iget-object v4, p0, Landroid/support/v7/widget/SeslDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1362
    iget v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mMode:I

    packed-switch v0, :pswitch_data_0

    .line 1392
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 1393
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 1394
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 1395
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2, p2}, Ljava/util/Calendar;->set(II)V

    .line 1396
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v0, v3, p3}, Ljava/util/Calendar;->set(II)V

    .line 1397
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 1398
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2, p2}, Ljava/util/Calendar;->set(II)V

    .line 1399
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v0, v3, p3}, Ljava/util/Calendar;->set(II)V

    .line 1401
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsLunar:Z

    if-eqz v0, :cond_1

    .line 1402
    iput p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarStartYear:I

    .line 1403
    iput p2, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarStartMonth:I

    .line 1404
    iput p3, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarStartDay:I

    .line 1405
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsLeapMonth:Z

    goto :goto_0

    .line 1378
    :pswitch_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 1379
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 1380
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2, p2}, Ljava/util/Calendar;->set(II)V

    .line 1381
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v0, v3, p3}, Ljava/util/Calendar;->set(II)V

    .line 1383
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsLunar:Z

    if-eqz v0, :cond_1

    .line 1384
    iput p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarEndYear:I

    .line 1385
    iput p2, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarEndMonth:I

    .line 1386
    iput p3, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarEndDay:I

    .line 1387
    iget-boolean p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsLeapMonth:Z

    iput p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsLeapEndMonth:I

    goto :goto_1

    .line 1364
    :pswitch_1
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 1365
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 1366
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2, p2}, Ljava/util/Calendar;->set(II)V

    .line 1367
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v0, v3, p3}, Ljava/util/Calendar;->set(II)V

    .line 1369
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsLunar:Z

    if-eqz v0, :cond_1

    .line 1370
    iput p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarStartYear:I

    .line 1371
    iput p2, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarStartMonth:I

    .line 1372
    iput p3, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarStartDay:I

    .line 1373
    iget-boolean p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsLeapMonth:Z

    iput p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsLeapStartMonth:I

    goto :goto_1

    .line 1405
    :goto_0
    iput v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsLeapStartMonth:I

    .line 1406
    iput p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarEndYear:I

    .line 1407
    iput p2, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarEndMonth:I

    .line 1408
    iput p3, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarEndDay:I

    .line 1409
    iget-boolean p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsLeapMonth:Z

    iput p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsLeapEndMonth:I

    .line 1413
    :cond_1
    :goto_1
    iget p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mMode:I

    if-eqz p1, :cond_2

    .line 1414
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SeslDatePicker;->onValidationChanged(Z)V

    .line 1416
    :cond_2
    invoke-direct {p0}, Landroid/support/v7/widget/SeslDatePicker;->onDateChanged()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onDeactivatedDayClick(Landroid/support/v7/widget/SeslSimpleMonthView;IIIZZ)V
    .locals 1

    .line 1623
    iget-boolean p5, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsLunar:Z

    const/4 v0, 0x1

    if-eqz p5, :cond_2

    if-eqz p6, :cond_0

    .line 1624
    iget p2, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentPosition:I

    sub-int/2addr p2, v0

    goto :goto_0

    :cond_0
    iget p2, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentPosition:I

    add-int/2addr p2, v0

    :goto_0
    invoke-direct {p0, p2}, Landroid/support/v7/widget/SeslDatePicker;->getLunarDateByPosition(I)Landroid/support/v7/widget/SeslDatePicker$LunarDate;

    move-result-object p2

    .line 1626
    iget p3, p2, Landroid/support/v7/widget/SeslDatePicker$LunarDate;->year:I

    .line 1627
    iget p5, p2, Landroid/support/v7/widget/SeslDatePicker$LunarDate;->month:I

    .line 1629
    iget-boolean p2, p2, Landroid/support/v7/widget/SeslDatePicker$LunarDate;->isLeapMonth:Z

    iput-boolean p2, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsLeapMonth:Z

    if-eqz p6, :cond_1

    .line 1630
    iget p2, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentPosition:I

    sub-int/2addr p2, v0

    goto :goto_1

    :cond_1
    iget p2, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentPosition:I

    add-int/2addr p2, v0

    :goto_1
    iput p2, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentPosition:I

    .line 1631
    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarViewPager:Landroid/support/v4/view/ViewPager;

    iget p6, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentPosition:I

    invoke-virtual {p2, p6}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 1633
    invoke-virtual {p0, p1, p3, p5, p4}, Landroid/support/v7/widget/SeslDatePicker;->onDayClick(Landroid/support/v7/widget/SeslSimpleMonthView;III)V

    goto :goto_2

    .line 1635
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/SeslDatePicker;->onDayClick(Landroid/support/v7/widget/SeslSimpleMonthView;III)V

    .line 1636
    invoke-direct {p0, v0}, Landroid/support/v7/widget/SeslDatePicker;->updateSimpleMonthView(Z)V

    :goto_2
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 2179
    invoke-direct {p0}, Landroid/support/v7/widget/SeslDatePicker;->removeAllCallbacks()V

    .line 2180
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 5

    .line 2186
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 2187
    sget v0, Landroid/support/v7/appcompat/R$id;->sesl_date_picker_calendar_header_prev_button:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentPosition:I

    if-eqz v0, :cond_0

    .line 2190
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-long v2, p1

    .line 2189
    invoke-direct {p0, v1, v2, v3}, Landroid/support/v7/widget/SeslDatePicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto :goto_0

    .line 2191
    :cond_0
    sget v0, Landroid/support/v7/appcompat/R$id;->sesl_date_picker_calendar_header_next_button:I

    if-ne p1, v0, :cond_1

    iget p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentPosition:I

    iget v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mPositionCount:I

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    if-eq p1, v0, :cond_1

    .line 2194
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-long v3, p1

    .line 2193
    invoke-direct {p0, v2, v3, v4}, Landroid/support/v7/widget/SeslDatePicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    :cond_1
    :goto_0
    return v1
.end method

.method protected onMeasure(II)V
    .locals 6

    .line 1941
    iget v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarViewPagerWidth:I

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/SeslDatePicker;->makeMeasureSpec(II)I

    move-result p1

    .line 1943
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x18

    if-lt v0, v3, :cond_1

    .line 1944
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePicker;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1945
    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1946
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1947
    iget v3, p0, Landroid/support/v7/widget/SeslDatePicker;->mDatePickerHeight:I

    if-ge v0, v3, :cond_0

    .line 1948
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/SeslDatePicker;->setCurrentViewType(I)V

    .line 1949
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1950
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    goto :goto_0

    .line 1952
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->hasOnClickListeners()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1953
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarHeaderClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1954
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 1960
    :cond_1
    :goto_0
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsFirstMeasure:Z

    if-nez v0, :cond_2

    iget v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mOldCalendarViewPagerWidth:I

    iget v3, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarViewPagerWidth:I

    if-ne v0, v3, :cond_2

    .line 1961
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void

    .line 1964
    :cond_2
    iput-boolean v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsFirstMeasure:Z

    .line 1965
    iget v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarViewPagerWidth:I

    iput v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mOldCalendarViewPagerWidth:I

    .line 1967
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarHeaderLayout:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarHeaderLayoutHeight:I

    const/4 v4, -0x1

    invoke-direct {v1, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1969
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mDayOfTheWeekLayout:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Landroid/support/v7/widget/SeslDatePicker;->mDayOfTheWeekLayoutWidth:I

    iget v5, p0, Landroid/support/v7/widget/SeslDatePicker;->mDayOfTheWeekLayoutHeight:I

    invoke-direct {v1, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1971
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mDayOfTheWeekView:Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Landroid/support/v7/widget/SeslDatePicker;->mDayOfTheWeekLayoutWidth:I

    iget v5, p0, Landroid/support/v7/widget/SeslDatePicker;->mDayOfTheWeekLayoutHeight:I

    invoke-direct {v1, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SeslDatePicker$DayOfTheWeekView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1973
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarViewPagerWidth:I

    iget v5, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarViewPagerHeight:I

    invoke-direct {v1, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1975
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsRTL:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsConfigurationChanged:Z

    if-eqz v0, :cond_3

    .line 1976
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->seslSetConfigurationChanged(Z)V

    .line 1978
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mFirstBlankSpace:Landroid/view/View;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Landroid/support/v7/widget/SeslDatePicker;->mFirstBlankSpaceHeight:I

    invoke-direct {v1, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1980
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mSecondBlankSpace:Landroid/view/View;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Landroid/support/v7/widget/SeslDatePicker;->mSecondBlankSpaceHeight:I

    invoke-direct {v1, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1983
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4

    .line 1328
    move-object v0, p1

    check-cast v0, Landroid/view/View$BaseSavedState;

    .line 1329
    invoke-virtual {v0}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1331
    check-cast p1, Landroid/support/v7/widget/SeslDatePicker$SavedState;

    .line 1333
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslDatePicker$SavedState;->getSelectedYear()I

    move-result v1

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslDatePicker$SavedState;->getSelectedMonth()I

    move-result v2

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslDatePicker$SavedState;->getSelectedDay()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    .line 1335
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsLunar:Z

    if-eqz v0, :cond_0

    .line 1336
    invoke-virtual {p1}, Landroid/support/v7/widget/SeslDatePicker$SavedState;->getSelectedYear()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarCurrentYear:I

    .line 1337
    invoke-virtual {p1}, Landroid/support/v7/widget/SeslDatePicker$SavedState;->getSelectedMonth()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarCurrentMonth:I

    .line 1338
    invoke-virtual {p1}, Landroid/support/v7/widget/SeslDatePicker$SavedState;->getSelectedDay()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarCurrentDay:I

    .line 1341
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslDatePicker$SavedState;->getMinDate()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1342
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslDatePicker$SavedState;->getMaxDate()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 12

    .line 1304
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1306
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 1307
    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 1308
    iget-object v3, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 1310
    iget-boolean v4, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsLunar:Z

    if-eqz v4, :cond_0

    .line 1311
    iget v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarCurrentYear:I

    .line 1312
    iget v2, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarCurrentMonth:I

    .line 1313
    iget v3, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarCurrentDay:I

    :cond_0
    move v4, v3

    move v3, v2

    move v2, v0

    const/4 v9, -0x1

    .line 1319
    new-instance v11, Landroid/support/v7/widget/SeslDatePicker$SavedState;

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mMaxDate:Ljava/util/Calendar;

    .line 1320
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    const/4 v10, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Landroid/support/v7/widget/SeslDatePicker$SavedState;-><init>(Landroid/os/Parcelable;IIIJJILandroid/support/v7/widget/SeslDatePicker$1;)V

    return-object v11
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 708
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    return-void
.end method

.method protected onValidationChanged(Z)V
    .locals 1

    .line 728
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mValidationCallback:Landroid/support/v7/widget/SeslDatePicker$ValidationCallback;

    if-eqz v0, :cond_0

    .line 729
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mValidationCallback:Landroid/support/v7/widget/SeslDatePicker$ValidationCallback;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/SeslDatePicker$ValidationCallback;->onValidationChanged(Z)V

    :cond_0
    return-void
.end method

.method public setCurrentViewType(I)V
    .locals 6

    const/16 v0, 0x3e8

    packed-switch p1, :pswitch_data_0

    return-void

    .line 2418
    :pswitch_0
    iget v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentViewType:I

    if-eq v1, p1, :cond_1

    .line 2422
    iget v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mMode:I

    const/4 v2, 0x5

    const/4 v3, 0x2

    const/4 v4, 0x1

    packed-switch v1, :pswitch_data_1

    .line 2448
    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 2449
    iget-object v5, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v5, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 2450
    iget-object v5, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v5, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 2452
    iget-boolean v5, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsLunar:Z

    if-eqz v5, :cond_0

    .line 2453
    iget v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarCurrentYear:I

    .line 2454
    iget v3, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarCurrentMonth:I

    .line 2455
    iget v2, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarCurrentDay:I

    goto :goto_0

    .line 2436
    :pswitch_1
    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 2437
    iget-object v5, p0, Landroid/support/v7/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v5, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 2438
    iget-object v5, p0, Landroid/support/v7/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v5, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 2440
    iget-boolean v5, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsLunar:Z

    if-eqz v5, :cond_0

    .line 2441
    iget v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarEndYear:I

    .line 2442
    iget v3, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarEndMonth:I

    .line 2443
    iget v2, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarEndDay:I

    goto :goto_0

    .line 2424
    :pswitch_2
    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 2425
    iget-object v5, p0, Landroid/support/v7/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v5, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 2426
    iget-object v5, p0, Landroid/support/v7/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v5, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 2428
    iget-boolean v5, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsLunar:Z

    if-eqz v5, :cond_0

    .line 2429
    iget v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarStartYear:I

    .line 2430
    iget v3, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarStartMonth:I

    .line 2431
    iget v2, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarStartDay:I

    .line 2460
    :cond_0
    :goto_0
    iget-object v5, p0, Landroid/support/v7/widget/SeslDatePicker;->mSpinnerLayout:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-virtual {v5, v1, v3, v2}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->updateDate(III)V

    .line 2461
    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {v1, v4}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 2462
    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mSpinnerLayout:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-virtual {v1, v4}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->setEnabled(Z)V

    .line 2463
    iput p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentViewType:I

    .line 2466
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    .line 2467
    iput v0, p1, Landroid/os/Message;->what:I

    .line 2468
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 2399
    :pswitch_3
    iget v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentViewType:I

    if-eq v1, p1, :cond_1

    .line 2400
    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarPagerAdapter:Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;

    invoke-virtual {v1}, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->notifyDataSetChanged()V

    .line 2402
    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mSpinnerLayout:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-virtual {v1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->updateInputState()V

    .line 2403
    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mSpinnerLayout:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->setEditTextMode(Z)V

    .line 2405
    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {v1, v2}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 2407
    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mSpinnerLayout:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->setVisibility(I)V

    .line 2408
    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mSpinnerLayout:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->setEnabled(Z)V

    .line 2409
    iput p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentViewType:I

    .line 2412
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    .line 2413
    iput v0, p1, Landroid/os/Message;->what:I

    .line 2414
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2476
    :cond_1
    :goto_1
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    const/16 v0, 0x3e9

    .line 2477
    iput v0, p1, Landroid/os/Message;->what:I

    .line 2478
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setDateMode(I)V
    .locals 25

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 2265
    iput v1, v0, Landroid/support/v7/widget/SeslDatePicker;->mMode:I

    .line 2267
    iget v1, v0, Landroid/support/v7/widget/SeslDatePicker;->mMode:I

    const/4 v2, 0x5

    const/4 v3, 0x2

    const/4 v4, 0x1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 2282
    :pswitch_0
    iget-object v1, v0, Landroid/support/v7/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 2283
    iget-object v5, v0, Landroid/support/v7/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v5, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 2284
    iget-object v6, v0, Landroid/support/v7/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v6, v2}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 2286
    iget-boolean v7, v0, Landroid/support/v7/widget/SeslDatePicker;->mIsLunar:Z

    if-eqz v7, :cond_0

    .line 2287
    iget v1, v0, Landroid/support/v7/widget/SeslDatePicker;->mLunarEndYear:I

    .line 2288
    iget v5, v0, Landroid/support/v7/widget/SeslDatePicker;->mLunarEndMonth:I

    .line 2289
    iget v6, v0, Landroid/support/v7/widget/SeslDatePicker;->mLunarEndDay:I

    .line 2292
    :cond_0
    iget-object v7, v0, Landroid/support/v7/widget/SeslDatePicker;->mSpinnerLayout:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-virtual {v7, v1, v5, v6}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->updateDate(III)V

    goto :goto_0

    .line 2269
    :pswitch_1
    iget-object v1, v0, Landroid/support/v7/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 2270
    iget-object v5, v0, Landroid/support/v7/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v5, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 2271
    iget-object v6, v0, Landroid/support/v7/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v6, v2}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 2273
    iget-boolean v7, v0, Landroid/support/v7/widget/SeslDatePicker;->mIsLunar:Z

    if-eqz v7, :cond_1

    .line 2274
    iget v1, v0, Landroid/support/v7/widget/SeslDatePicker;->mLunarStartYear:I

    .line 2275
    iget v5, v0, Landroid/support/v7/widget/SeslDatePicker;->mLunarStartMonth:I

    .line 2276
    iget v6, v0, Landroid/support/v7/widget/SeslDatePicker;->mLunarStartDay:I

    .line 2279
    :cond_1
    iget-object v7, v0, Landroid/support/v7/widget/SeslDatePicker;->mSpinnerLayout:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-virtual {v7, v1, v5, v6}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->updateDate(III)V

    .line 2296
    :goto_0
    iget v1, v0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentViewType:I

    const/4 v5, 0x0

    if-ne v1, v4, :cond_2

    .line 2297
    iget-object v1, v0, Landroid/support/v7/widget/SeslDatePicker;->mSpinnerLayout:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-virtual {v1, v5}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->setVisibility(I)V

    .line 2298
    iget-object v1, v0, Landroid/support/v7/widget/SeslDatePicker;->mSpinnerLayout:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-virtual {v1, v4}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->setEnabled(Z)V

    .line 2301
    :cond_2
    iget-object v1, v0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarPagerAdapter:Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;

    iget-object v1, v1, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->views:Landroid/util/SparseArray;

    .line 2302
    iget v6, v0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentPosition:I

    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/SeslSimpleMonthView;

    if-eqz v1, :cond_7

    .line 2304
    iget-object v6, v0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v6, v4}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 2305
    iget-object v7, v0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v7, v3}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 2306
    iget-object v8, v0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v8, v2}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 2308
    iget-boolean v9, v0, Landroid/support/v7/widget/SeslDatePicker;->mIsLunar:Z

    if-eqz v9, :cond_3

    .line 2309
    iget v6, v0, Landroid/support/v7/widget/SeslDatePicker;->mLunarCurrentYear:I

    .line 2310
    iget v7, v0, Landroid/support/v7/widget/SeslDatePicker;->mLunarCurrentMonth:I

    .line 2311
    iget v8, v0, Landroid/support/v7/widget/SeslDatePicker;->mLunarCurrentDay:I

    :cond_3
    move v9, v6

    move/from16 v24, v8

    move v8, v7

    move/from16 v7, v24

    .line 2316
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/SeslDatePicker;->getMinMonth()I

    move-result v6

    if-ne v6, v8, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/SeslDatePicker;->getMinYear()I

    move-result v6

    if-ne v6, v9, :cond_4

    .line 2317
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/SeslDatePicker;->getMinDay()I

    move-result v6

    move v11, v6

    goto :goto_1

    :cond_4
    const/4 v11, 0x1

    .line 2323
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/SeslDatePicker;->getMaxMonth()I

    move-result v6

    if-ne v6, v8, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/SeslDatePicker;->getMaxYear()I

    move-result v6

    if-ne v6, v9, :cond_5

    .line 2324
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/SeslDatePicker;->getMaxDay()I

    move-result v6

    move v12, v6

    goto :goto_2

    :cond_5
    const/16 v6, 0x1f

    const/16 v12, 0x1f

    .line 2329
    :goto_2
    iget-object v6, v0, Landroid/support/v7/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v6, v4}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 2330
    iget-object v10, v0, Landroid/support/v7/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v10, v3}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 2331
    iget-object v13, v0, Landroid/support/v7/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v13, v2}, Ljava/util/Calendar;->get(I)I

    move-result v13

    .line 2332
    iget-object v14, v0, Landroid/support/v7/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v14, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 2333
    iget-object v14, v0, Landroid/support/v7/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v14, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 2334
    iget-object v14, v0, Landroid/support/v7/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v14, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 2336
    iget-boolean v14, v0, Landroid/support/v7/widget/SeslDatePicker;->mIsLunar:Z

    if-eqz v14, :cond_6

    .line 2337
    iget v2, v0, Landroid/support/v7/widget/SeslDatePicker;->mLunarStartYear:I

    .line 2338
    iget v3, v0, Landroid/support/v7/widget/SeslDatePicker;->mLunarStartMonth:I

    .line 2339
    iget v4, v0, Landroid/support/v7/widget/SeslDatePicker;->mLunarStartDay:I

    .line 2340
    iget v6, v0, Landroid/support/v7/widget/SeslDatePicker;->mLunarEndYear:I

    .line 2341
    iget v10, v0, Landroid/support/v7/widget/SeslDatePicker;->mLunarEndMonth:I

    .line 2342
    iget v13, v0, Landroid/support/v7/widget/SeslDatePicker;->mLunarEndDay:I

    move v15, v2

    move/from16 v16, v3

    move/from16 v17, v4

    move/from16 v19, v6

    move/from16 v20, v10

    move/from16 v21, v13

    goto :goto_3

    :cond_6
    move/from16 v21, v2

    move/from16 v20, v3

    move/from16 v19, v4

    move v15, v6

    move/from16 v16, v10

    move/from16 v17, v13

    .line 2345
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/SeslDatePicker;->getFirstDayOfWeek()I

    move-result v10

    iget-object v13, v0, Landroid/support/v7/widget/SeslDatePicker;->mMinDate:Ljava/util/Calendar;

    iget-object v14, v0, Landroid/support/v7/widget/SeslDatePicker;->mMaxDate:Ljava/util/Calendar;

    iget v2, v0, Landroid/support/v7/widget/SeslDatePicker;->mIsLeapStartMonth:I

    move/from16 v18, v2

    iget v2, v0, Landroid/support/v7/widget/SeslDatePicker;->mIsLeapEndMonth:I

    move/from16 v22, v2

    iget v2, v0, Landroid/support/v7/widget/SeslDatePicker;->mMode:I

    move/from16 v23, v2

    move-object v6, v1

    invoke-virtual/range {v6 .. v23}, Landroid/support/v7/widget/SeslSimpleMonthView;->setMonthParams(IIIIIILjava/util/Calendar;Ljava/util/Calendar;IIIIIIIII)V

    .line 2349
    invoke-virtual {v1}, Landroid/support/v7/widget/SeslSimpleMonthView;->invalidate()V

    .line 2353
    :cond_7
    iget-boolean v1, v0, Landroid/support/v7/widget/SeslDatePicker;->mIsLunar:Z

    if-eqz v1, :cond_8

    .line 2354
    invoke-direct {v0, v5}, Landroid/support/v7/widget/SeslDatePicker;->updateSimpleMonthView(Z)V

    .line 2359
    :cond_8
    iget-object v1, v0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarPagerAdapter:Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;

    invoke-virtual {v1}, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->notifyDataSetChanged()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setEditTextMode(Z)V
    .locals 1

    .line 2500
    iget v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentViewType:I

    if-nez v0, :cond_0

    return-void

    .line 2503
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mSpinnerLayout:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->setEditTextMode(Z)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 1160
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslDatePicker;->isEnabled()Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 1163
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 1164
    iput-boolean p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsEnabled:Z

    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x7

    if-gt p1, v0, :cond_0

    .line 1267
    iput p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mFirstDayOfWeek:I

    return-void

    .line 1265
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "firstDayOfWeek must be between 1 and 7"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setLunar(ZZ)V
    .locals 2

    .line 2664
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsLunarSupported:Z

    if-eqz v0, :cond_1

    .line 2665
    iput-boolean p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsLunar:Z

    .line 2666
    iput-boolean p2, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsLeapMonth:Z

    .line 2668
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mSpinnerLayout:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->setLunar(ZZLdalvik/system/PathClassLoader;)V

    if-eqz p1, :cond_0

    .line 2671
    invoke-direct {p0}, Landroid/support/v7/widget/SeslDatePicker;->setTotalMonthCountWithLeap()V

    .line 2672
    iget p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mMode:I

    if-nez p1, :cond_0

    .line 2673
    iput p2, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsLeapStartMonth:I

    .line 2674
    iput p2, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsLeapEndMonth:I

    :cond_0
    const/4 p1, 0x1

    .line 2678
    iput-boolean p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsFromSetLunar:Z

    .line 2679
    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarPagerAdapter:Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;

    invoke-virtual {p2}, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->notifyDataSetChanged()V

    .line 2680
    iput-boolean p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarChanged:Z

    .line 2681
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslDatePicker;->updateSimpleMonthView(Z)V

    const/4 p1, 0x0

    .line 2682
    iput-boolean p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarChanged:Z

    :cond_1
    return-void
.end method

.method public setLunarEndDate(IIIZ)V
    .locals 0

    .line 2963
    iput p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarEndYear:I

    .line 2964
    iput p2, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarEndMonth:I

    .line 2965
    iput p3, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarEndDay:I

    .line 2966
    iput p4, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsLeapEndMonth:I

    return-void
.end method

.method public setLunarStartDate(IIIZ)V
    .locals 0

    .line 2950
    iput p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarStartYear:I

    .line 2951
    iput p2, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarStartMonth:I

    .line 2952
    iput p3, p0, Landroid/support/v7/widget/SeslDatePicker;->mLunarStartDay:I

    .line 2953
    iput p4, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsLeapStartMonth:I

    return-void
.end method

.method public setLunarSupported(ZLandroid/view/View;)V
    .locals 4

    .line 2562
    iput-boolean p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsLunarSupported:Z

    .line 2564
    iget-boolean p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsLunarSupported:Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 2565
    iput-boolean v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsLunar:Z

    .line 2566
    iput-boolean v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsLeapMonth:Z

    .line 2567
    iput-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mCustomButtonView:Landroid/view/View;

    goto/16 :goto_2

    .line 2569
    :cond_0
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mCustomButtonView:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 2570
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarHeaderLayout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePicker;->mCustomButtonView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 2572
    :cond_1
    iput-object p2, p0, Landroid/support/v7/widget/SeslDatePicker;->mCustomButtonView:Landroid/view/View;

    .line 2573
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mCustomButtonView:Landroid/view/View;

    if-eqz p1, :cond_6

    .line 2574
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mCustomButtonView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 2575
    instance-of p2, p1, Landroid/view/ViewGroup;

    if-eqz p2, :cond_2

    .line 2576
    check-cast p1, Landroid/view/ViewGroup;

    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePicker;->mCustomButtonView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2578
    :cond_2
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mCustomButtonView:Landroid/view/View;

    const p2, 0x102002b

    invoke-virtual {p1, p2}, Landroid/view/View;->setId(I)V

    .line 2580
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarHeader:Landroid/widget/RelativeLayout;

    .line 2581
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 p2, 0xd

    .line 2582
    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 p2, 0x10

    .line 2583
    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePicker;->mCustomButtonView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {p1, p2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2584
    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    .line 2585
    invoke-virtual {p2}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2586
    iput v1, p2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 2587
    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, p2}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2588
    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePicker;->mNextButton:Landroid/widget/ImageButton;

    .line 2589
    invoke-virtual {p2}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2590
    iput v1, p2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 2591
    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePicker;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, p2}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2593
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslDatePicker;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v2, Landroid/support/v7/appcompat/R$dimen;->sesl_date_picker_lunar_calendar_header_margin:I

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 2596
    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarHeader:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, p1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2598
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mCustomButtonView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 2600
    instance-of p2, p1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz p2, :cond_3

    .line 2601
    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    goto :goto_1

    .line 2602
    :cond_3
    instance-of p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p2, :cond_4

    .line 2603
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p2, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    :goto_0
    move-object p1, p2

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_5

    .line 2606
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p2, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 2608
    :cond_5
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 p2, -0x2

    invoke-direct {p1, p2, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    :goto_1
    const/16 p2, 0xf

    .line 2611
    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 p2, 0x15

    .line 2612
    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2613
    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePicker;->mCustomButtonView:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2614
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarHeaderLayout:Landroid/widget/RelativeLayout;

    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePicker;->mCustomButtonView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 2618
    :cond_6
    :goto_2
    iget-boolean p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsLunarSupported:Z

    if-eqz p1, :cond_a

    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    if-nez p1, :cond_a

    .line 2619
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    sput-object p1, Landroid/support/v7/widget/SeslDatePicker;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 2620
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslDatePicker;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker$LunarUtils;->getPathClassLoader(Landroid/content/Context;)Ldalvik/system/PathClassLoader;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    .line 2621
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    if-nez p1, :cond_7

    return-void

    :cond_7
    :try_start_0
    const-string p1, "com.android.calendar.Feature"

    .line 2628
    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePicker;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    const/4 v2, 0x1

    invoke-static {p1, v2, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p1, :cond_8

    const-string p1, "Picker"

    const-string p2, "setLunarSupported, Calendar Feature class is null"

    .line 2634
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_8
    const-string p2, "getSolarLunarTables"

    .line 2638
    new-array v3, v1, [Ljava/lang/Class;

    invoke-direct {p0, p1, p2, v3}, Landroid/support/v7/widget/SeslDatePicker;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 2639
    new-array p2, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, p1, p2}, Landroid/support/v7/widget/SeslDatePicker;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mSolarLunarTables:Ljava/lang/Object;

    :try_start_1
    const-string p1, "com.samsung.android.calendar.secfeature.lunarcalendar.SolarLunarTables"

    .line 2645
    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePicker;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    invoke-static {p1, v2, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    if-nez p1, :cond_9

    const-string p1, "Picker"

    const-string p2, "setLunarSupported, Calendar Tables class is null"

    .line 2651
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_9
    const-string p2, "getLunar"

    .line 2655
    new-array v0, v2, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/SeslDatePicker;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    iput-object p2, p0, Landroid/support/v7/widget/SeslDatePicker;->mGetLunarMethod:Ljava/lang/reflect/Method;

    const-string p2, "START_OF_LUNAR_YEAR"

    .line 2656
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/SeslDatePicker;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    iput-object p2, p0, Landroid/support/v7/widget/SeslDatePicker;->mStartOfLunarYearField:Ljava/lang/reflect/Field;

    const-string p2, "WIDTH_PER_YEAR"

    .line 2657
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/SeslDatePicker;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    iput-object p2, p0, Landroid/support/v7/widget/SeslDatePicker;->mWidthPerYearField:Ljava/lang/reflect/Field;

    const-string p2, "INDEX_OF_LEAP_MONTH"

    .line 2658
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/SeslDatePicker;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mIndexOfLeapMonthField:Ljava/lang/reflect/Field;

    goto :goto_3

    :catch_0
    const-string p1, "Picker"

    const-string p2, "setLunarSupported, Calendar Tables class not found"

    .line 2647
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_1
    const-string p1, "Picker"

    const-string p2, "setLunarSupported, Calendar Feature class not found"

    .line 2630
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a
    :goto_3
    return-void
.end method

.method public setMaxDate(J)V
    .locals 3

    .line 1096
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mTempMinMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1097
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mTempMinMaxDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mTempMinMaxDate:Ljava/util/Calendar;

    const/4 v1, 0x6

    .line 1098
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 1102
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsLunar:Z

    if-eqz v0, :cond_1

    .line 1103
    invoke-direct {p0}, Landroid/support/v7/widget/SeslDatePicker;->setTotalMonthCountWithLeap()V

    .line 1107
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mTempMinMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1108
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1109
    invoke-direct {p0}, Landroid/support/v7/widget/SeslDatePicker;->onDateChanged()V

    .line 1111
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1113
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mSpinnerLayout:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->setMaxDate(J)V

    .line 1115
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarPagerAdapter:Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->notifyDataSetChanged()V

    .line 1116
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mHandler:Landroid/os/Handler;

    new-instance p2, Landroid/support/v7/widget/SeslDatePicker$9;

    invoke-direct {p2, p0}, Landroid/support/v7/widget/SeslDatePicker$9;-><init>(Landroid/support/v7/widget/SeslDatePicker;)V

    const-wide/16 v0, 0xa

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setMinDate(J)V
    .locals 3

    .line 1041
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mTempMinMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1042
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mTempMinMaxDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mTempMinMaxDate:Ljava/util/Calendar;

    const/4 v1, 0x6

    .line 1043
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 1047
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mIsLunar:Z

    if-eqz v0, :cond_1

    .line 1048
    invoke-direct {p0}, Landroid/support/v7/widget/SeslDatePicker;->setTotalMonthCountWithLeap()V

    .line 1052
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker;->mTempMinMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1053
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1054
    invoke-direct {p0}, Landroid/support/v7/widget/SeslDatePicker;->onDateChanged()V

    .line 1056
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1058
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mSpinnerLayout:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->setMinDate(J)V

    .line 1060
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarPagerAdapter:Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->notifyDataSetChanged()V

    .line 1061
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mHandler:Landroid/os/Handler;

    new-instance p2, Landroid/support/v7/widget/SeslDatePicker$8;

    invoke-direct {p2, p0}, Landroid/support/v7/widget/SeslDatePicker$8;-><init>(Landroid/support/v7/widget/SeslDatePicker;)V

    const-wide/16 v0, 0xa

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setOnEditTextModeChangedListener(Landroid/support/v7/widget/SeslDatePicker$OnEditTextModeChangedListener;)V
    .locals 1

    .line 2533
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker;->mSpinnerLayout:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-virtual {v0, p0, p1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->setOnEditTextModeChangedListener(Landroid/support/v7/widget/SeslDatePicker;Landroid/support/v7/widget/SeslDatePicker$OnEditTextModeChangedListener;)V

    return-void
.end method

.method public setValidationCallback(Landroid/support/v7/widget/SeslDatePicker$ValidationCallback;)V
    .locals 0
    .param p1    # Landroid/support/v7/widget/SeslDatePicker$ValidationCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 718
    iput-object p1, p0, Landroid/support/v7/widget/SeslDatePicker;->mValidationCallback:Landroid/support/v7/widget/SeslDatePicker$ValidationCallback;

    return-void
.end method

.method public updateDate(III)V
    .locals 27

    move-object/from16 v0, p0

    move/from16 v15, p1

    move/from16 v14, p2

    move/from16 v12, p3

    .line 823
    iget-object v1, v0, Landroid/support/v7/widget/SeslDatePicker;->mTempDate:Ljava/util/Calendar;

    const/4 v11, 0x1

    invoke-virtual {v1, v11, v15}, Ljava/util/Calendar;->set(II)V

    .line 824
    iget-object v1, v0, Landroid/support/v7/widget/SeslDatePicker;->mTempDate:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v14}, Ljava/util/Calendar;->set(II)V

    .line 825
    iget-object v1, v0, Landroid/support/v7/widget/SeslDatePicker;->mTempDate:Ljava/util/Calendar;

    const/4 v3, 0x5

    invoke-virtual {v1, v3, v12}, Ljava/util/Calendar;->set(II)V

    .line 827
    iget-object v1, v0, Landroid/support/v7/widget/SeslDatePicker;->mTempDate:Ljava/util/Calendar;

    iget-object v4, v0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-direct {v0, v1, v4}, Landroid/support/v7/widget/SeslDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    .line 829
    iget-boolean v1, v0, Landroid/support/v7/widget/SeslDatePicker;->mIsLunar:Z

    if-eqz v1, :cond_0

    .line 830
    iput v15, v0, Landroid/support/v7/widget/SeslDatePicker;->mLunarCurrentYear:I

    .line 831
    iput v14, v0, Landroid/support/v7/widget/SeslDatePicker;->mLunarCurrentMonth:I

    .line 832
    iput v12, v0, Landroid/support/v7/widget/SeslDatePicker;->mLunarCurrentDay:I

    .line 836
    :cond_0
    iget v1, v0, Landroid/support/v7/widget/SeslDatePicker;->mMode:I

    packed-switch v1, :pswitch_data_0

    .line 864
    iget-object v1, v0, Landroid/support/v7/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    .line 865
    iget-object v1, v0, Landroid/support/v7/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v1, v11, v15}, Ljava/util/Calendar;->set(II)V

    .line 866
    iget-object v1, v0, Landroid/support/v7/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2, v14}, Ljava/util/Calendar;->set(II)V

    .line 867
    iget-object v1, v0, Landroid/support/v7/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v1, v3, v12}, Ljava/util/Calendar;->set(II)V

    .line 868
    iget-object v1, v0, Landroid/support/v7/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    .line 869
    iget-object v1, v0, Landroid/support/v7/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v1, v11, v15}, Ljava/util/Calendar;->set(II)V

    .line 870
    iget-object v1, v0, Landroid/support/v7/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2, v14}, Ljava/util/Calendar;->set(II)V

    .line 871
    iget-object v1, v0, Landroid/support/v7/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v1, v3, v12}, Ljava/util/Calendar;->set(II)V

    .line 873
    iget-boolean v1, v0, Landroid/support/v7/widget/SeslDatePicker;->mIsLunar:Z

    if-eqz v1, :cond_1

    .line 874
    iput v15, v0, Landroid/support/v7/widget/SeslDatePicker;->mLunarStartYear:I

    .line 875
    iput v14, v0, Landroid/support/v7/widget/SeslDatePicker;->mLunarStartMonth:I

    .line 876
    iput v12, v0, Landroid/support/v7/widget/SeslDatePicker;->mLunarStartDay:I

    .line 877
    iput v15, v0, Landroid/support/v7/widget/SeslDatePicker;->mLunarEndYear:I

    .line 878
    iput v14, v0, Landroid/support/v7/widget/SeslDatePicker;->mLunarEndMonth:I

    .line 879
    iput v12, v0, Landroid/support/v7/widget/SeslDatePicker;->mLunarEndDay:I

    goto :goto_0

    .line 851
    :pswitch_0
    iget-object v1, v0, Landroid/support/v7/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    .line 852
    iget-object v1, v0, Landroid/support/v7/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v1, v11, v15}, Ljava/util/Calendar;->set(II)V

    .line 853
    iget-object v1, v0, Landroid/support/v7/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2, v14}, Ljava/util/Calendar;->set(II)V

    .line 854
    iget-object v1, v0, Landroid/support/v7/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v1, v3, v12}, Ljava/util/Calendar;->set(II)V

    .line 856
    iget-boolean v1, v0, Landroid/support/v7/widget/SeslDatePicker;->mIsLunar:Z

    if-eqz v1, :cond_1

    .line 857
    iput v15, v0, Landroid/support/v7/widget/SeslDatePicker;->mLunarEndYear:I

    .line 858
    iput v14, v0, Landroid/support/v7/widget/SeslDatePicker;->mLunarEndMonth:I

    .line 859
    iput v12, v0, Landroid/support/v7/widget/SeslDatePicker;->mLunarEndDay:I

    goto :goto_0

    .line 838
    :pswitch_1
    iget-object v1, v0, Landroid/support/v7/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    .line 839
    iget-object v1, v0, Landroid/support/v7/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v1, v11, v15}, Ljava/util/Calendar;->set(II)V

    .line 840
    iget-object v1, v0, Landroid/support/v7/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2, v14}, Ljava/util/Calendar;->set(II)V

    .line 841
    iget-object v1, v0, Landroid/support/v7/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v1, v3, v12}, Ljava/util/Calendar;->set(II)V

    .line 843
    iget-boolean v1, v0, Landroid/support/v7/widget/SeslDatePicker;->mIsLunar:Z

    if-eqz v1, :cond_1

    .line 844
    iput v15, v0, Landroid/support/v7/widget/SeslDatePicker;->mLunarStartYear:I

    .line 845
    iput v14, v0, Landroid/support/v7/widget/SeslDatePicker;->mLunarStartMonth:I

    .line 846
    iput v12, v0, Landroid/support/v7/widget/SeslDatePicker;->mLunarStartDay:I

    .line 884
    :cond_1
    :goto_0
    invoke-direct {v0, v11}, Landroid/support/v7/widget/SeslDatePicker;->updateSimpleMonthView(Z)V

    .line 886
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/SeslDatePicker;->onDateChanged()V

    .line 888
    iget-object v1, v0, Landroid/support/v7/widget/SeslDatePicker;->mCalendarPagerAdapter:Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;

    iget-object v10, v1, Landroid/support/v7/widget/SeslDatePicker$CalendarPagerAdapter;->views:Landroid/util/SparseArray;

    .line 889
    iget v1, v0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentPosition:I

    invoke-virtual {v10, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/support/v7/widget/SeslSimpleMonthView;

    if-eqz v7, :cond_8

    .line 892
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/SeslDatePicker;->getMinMonth()I

    move-result v1

    if-ne v1, v14, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/SeslDatePicker;->getMinYear()I

    move-result v1

    if-ne v1, v15, :cond_2

    .line 893
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/SeslDatePicker;->getMinDay()I

    move-result v1

    move v6, v1

    goto :goto_1

    :cond_2
    const/4 v6, 0x1

    .line 899
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/SeslDatePicker;->getMaxMonth()I

    move-result v1

    if-ne v1, v14, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/SeslDatePicker;->getMaxYear()I

    move-result v1

    if-ne v1, v15, :cond_3

    .line 900
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/SeslDatePicker;->getMaxDay()I

    move-result v1

    move/from16 v16, v1

    goto :goto_2

    :cond_3
    const/16 v1, 0x1f

    const/16 v16, 0x1f

    .line 906
    :goto_2
    iget-boolean v1, v0, Landroid/support/v7/widget/SeslDatePicker;->mIsLunarSupported:Z

    if-eqz v1, :cond_4

    .line 907
    iget-boolean v1, v0, Landroid/support/v7/widget/SeslDatePicker;->mIsLunar:Z

    iget-boolean v4, v0, Landroid/support/v7/widget/SeslDatePicker;->mIsLeapMonth:Z

    iget-object v5, v0, Landroid/support/v7/widget/SeslDatePicker;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    invoke-virtual {v7, v1, v4, v5}, Landroid/support/v7/widget/SeslSimpleMonthView;->setLunar(ZZLdalvik/system/PathClassLoader;)V

    .line 910
    :cond_4
    iget-object v1, v0, Landroid/support/v7/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v1, v11}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 911
    iget-object v4, v0, Landroid/support/v7/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v4, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 912
    iget-object v5, v0, Landroid/support/v7/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v5, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 913
    iget-object v8, v0, Landroid/support/v7/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v8, v11}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 914
    iget-object v9, v0, Landroid/support/v7/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v9, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 915
    iget-object v9, v0, Landroid/support/v7/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v9, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 917
    iget-boolean v9, v0, Landroid/support/v7/widget/SeslDatePicker;->mIsLunar:Z

    if-eqz v9, :cond_5

    .line 918
    iget v1, v0, Landroid/support/v7/widget/SeslDatePicker;->mLunarStartYear:I

    .line 919
    iget v2, v0, Landroid/support/v7/widget/SeslDatePicker;->mLunarStartMonth:I

    .line 920
    iget v3, v0, Landroid/support/v7/widget/SeslDatePicker;->mLunarStartDay:I

    .line 921
    iget v4, v0, Landroid/support/v7/widget/SeslDatePicker;->mLunarEndYear:I

    .line 922
    iget v5, v0, Landroid/support/v7/widget/SeslDatePicker;->mLunarEndMonth:I

    .line 923
    iget v8, v0, Landroid/support/v7/widget/SeslDatePicker;->mLunarEndDay:I

    move/from16 v19, v1

    move/from16 v20, v2

    move/from16 v21, v3

    move/from16 v22, v4

    move/from16 v23, v5

    move/from16 v24, v8

    goto :goto_3

    :cond_5
    move/from16 v19, v1

    move/from16 v23, v2

    move/from16 v24, v3

    move/from16 v20, v4

    move/from16 v21, v5

    move/from16 v22, v8

    .line 926
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/SeslDatePicker;->getFirstDayOfWeek()I

    move-result v5

    iget-object v8, v0, Landroid/support/v7/widget/SeslDatePicker;->mMinDate:Ljava/util/Calendar;

    iget-object v9, v0, Landroid/support/v7/widget/SeslDatePicker;->mMaxDate:Ljava/util/Calendar;

    iget v13, v0, Landroid/support/v7/widget/SeslDatePicker;->mIsLeapStartMonth:I

    iget v1, v0, Landroid/support/v7/widget/SeslDatePicker;->mIsLeapEndMonth:I

    move/from16 v17, v1

    iget v1, v0, Landroid/support/v7/widget/SeslDatePicker;->mMode:I

    move/from16 v18, v1

    move-object v1, v7

    move/from16 v2, p3

    move/from16 v3, p2

    move/from16 v4, p1

    move-object/from16 v25, v7

    move/from16 v7, v16

    move-object/from16 v26, v10

    move/from16 v10, v19

    const/16 v19, 0x1

    move/from16 v11, v20

    move/from16 v12, v21

    move/from16 v14, v22

    move/from16 v15, v23

    move/from16 v16, v24

    invoke-virtual/range {v1 .. v18}, Landroid/support/v7/widget/SeslSimpleMonthView;->setMonthParams(IIIIIILjava/util/Calendar;Ljava/util/Calendar;IIIIIIIII)V

    .line 930
    invoke-virtual/range {v25 .. v25}, Landroid/support/v7/widget/SeslSimpleMonthView;->invalidate()V

    .line 932
    iget-boolean v1, v0, Landroid/support/v7/widget/SeslDatePicker;->mIsLunar:Z

    if-nez v1, :cond_8

    .line 933
    iget v1, v0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentPosition:I

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_6

    move-object/from16 v2, v26

    .line 935
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/SeslSimpleMonthView;

    if-eqz v1, :cond_7

    .line 937
    iget-object v3, v0, Landroid/support/v7/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    iget v4, v0, Landroid/support/v7/widget/SeslDatePicker;->mIsLeapStartMonth:I

    invoke-virtual {v1, v3, v4}, Landroid/support/v7/widget/SeslSimpleMonthView;->setStartDate(Ljava/util/Calendar;I)V

    .line 938
    iget-object v3, v0, Landroid/support/v7/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    iget v4, v0, Landroid/support/v7/widget/SeslDatePicker;->mIsLeapEndMonth:I

    invoke-virtual {v1, v3, v4}, Landroid/support/v7/widget/SeslSimpleMonthView;->setEndDate(Ljava/util/Calendar;I)V

    goto :goto_4

    :cond_6
    move-object/from16 v2, v26

    .line 941
    :cond_7
    :goto_4
    iget v1, v0, Landroid/support/v7/widget/SeslDatePicker;->mCurrentPosition:I

    add-int/lit8 v1, v1, 0x1

    .line 942
    iget v3, v0, Landroid/support/v7/widget/SeslDatePicker;->mPositionCount:I

    if-ge v1, v3, :cond_8

    .line 943
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/SeslSimpleMonthView;

    if-eqz v1, :cond_8

    .line 945
    iget-object v2, v0, Landroid/support/v7/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    iget v3, v0, Landroid/support/v7/widget/SeslDatePicker;->mIsLeapStartMonth:I

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/widget/SeslSimpleMonthView;->setStartDate(Ljava/util/Calendar;I)V

    .line 946
    iget-object v2, v0, Landroid/support/v7/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    iget v3, v0, Landroid/support/v7/widget/SeslDatePicker;->mIsLeapEndMonth:I

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/widget/SeslSimpleMonthView;->setEndDate(Ljava/util/Calendar;I)V

    .line 951
    :cond_8
    iget-object v1, v0, Landroid/support/v7/widget/SeslDatePicker;->mSpinnerLayout:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    if-eqz v1, :cond_9

    .line 952
    iget-object v1, v0, Landroid/support/v7/widget/SeslDatePicker;->mSpinnerLayout:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-virtual {v1, v2, v3, v4}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->updateDate(III)V

    :cond_9
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
