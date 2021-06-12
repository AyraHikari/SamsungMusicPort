.class Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;,
        Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslKeyListener;,
        Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$OnSpinnerDateChangedListener;
    }
.end annotation


# static fields
.field private static final HUNGARIAN_MONTH_TEXT_SIZE_DIFF:I = 0x4

.field private static final SESL_DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SeslDatePickerSpinnerLayout"


# instance fields
.field private final FORMAT_DDMMYYYY:I

.field private final FORMAT_MMDDYYYY:I

.field private final FORMAT_YYYYDDMM:I

.field private final FORMAT_YYYYMMDD:I

.field private final PICKER_DAY:I

.field private final PICKER_MONTH:I

.field private final PICKER_YEAR:I

.field private mContext:Landroid/content/Context;

.field private mCurrentDate:Ljava/util/Calendar;

.field private mCurrentLocale:Ljava/util/Locale;

.field private mDatePicker:Landroid/support/v7/widget/SeslDatePicker;

.field private final mDaySpinner:Landroid/support/v7/widget/SeslNumberPicker;

.field private final mDaySpinnerInput:Landroid/widget/EditText;

.field private mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field private mGetDayLengthOfMethod:Ljava/lang/reflect/Method;

.field private mIsEditTextMode:Z

.field private mIsLeapMonth:Z

.field private mIsLeapMonthMethod:Ljava/lang/reflect/Method;

.field private mIsLunar:Z

.field private mLunarCurrentDay:I

.field private mLunarCurrentMonth:I

.field private mLunarCurrentYear:I

.field private mLunarTempDay:I

.field private mLunarTempMonth:I

.field private mLunarTempYear:I

.field private mMaxDate:Ljava/util/Calendar;

.field private mMinDate:Ljava/util/Calendar;

.field private mModeChangeListener:Landroid/support/v7/widget/SeslNumberPicker$OnEditTextModeChangedListener;

.field private final mMonthSpinner:Landroid/support/v7/widget/SeslNumberPicker;

.field private final mMonthSpinnerInput:Landroid/widget/EditText;

.field private mNumberOfMonths:I

.field private mNumberTextSize:I

.field private mOnEditTextModeChangedListener:Landroid/support/v7/widget/SeslDatePicker$OnEditTextModeChangedListener;

.field private mOnSpinnerDateChangedListener:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$OnSpinnerDateChangedListener;

.field mPathClassLoader:Ldalvik/system/PathClassLoader;

.field private mPickerTexts:[Landroid/widget/EditText;

.field private final mPrimaryEmptyView:Landroid/view/View;

.field private final mSecondaryEmptyView:Landroid/view/View;

.field private mShortMonths:[Ljava/lang/String;

.field private mSolarLunarTables:Ljava/lang/Object;

.field private final mSpinners:Landroid/widget/LinearLayout;

.field private mTempDate:Ljava/util/Calendar;

.field private mToast:Landroid/widget/Toast;

.field private mToastText:Ljava/lang/String;

.field private final mYearSpinner:Landroid/support/v7/widget/SeslNumberPicker;

.field private final mYearSpinnerInput:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 151
    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101035c

    .line 156
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 162
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    .line 168
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x0

    .line 104
    iput-boolean p2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mIsLunar:Z

    .line 105
    iput-boolean p2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mIsLeapMonth:Z

    const/4 p3, 0x0

    .line 115
    iput-object p3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    .line 121
    new-instance p4, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$1;

    invoke-direct {p4, p0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$1;-><init>(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)V

    iput-object p4, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mModeChangeListener:Landroid/support/v7/widget/SeslNumberPicker$OnEditTextModeChangedListener;

    const/4 p4, 0x3

    .line 853
    new-array v0, p4, [Landroid/widget/EditText;

    iput-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    .line 855
    iput p2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->PICKER_DAY:I

    const/4 v0, 0x1

    .line 856
    iput v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->PICKER_MONTH:I

    const/4 v1, 0x2

    .line 857
    iput v1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->PICKER_YEAR:I

    .line 859
    iput p2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->FORMAT_MMDDYYYY:I

    .line 860
    iput v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->FORMAT_DDMMYYYY:I

    .line 861
    iput v1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->FORMAT_YYYYMMDD:I

    .line 862
    iput p4, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->FORMAT_YYYYDDMM:I

    .line 866
    new-instance p4, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$3;

    invoke-direct {p4, p0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$3;-><init>(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)V

    iput-object p4, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 169
    iput-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mContext:Landroid/content/Context;

    .line 171
    iget-object p4, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mContext:Landroid/content/Context;

    invoke-static {p4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p4

    .line 172
    sget v2, Landroid/support/v7/appcompat/R$layout;->sesl_date_picker_spinner:I

    invoke-virtual {p4, v2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 174
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p4

    iput-object p4, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mCurrentLocale:Ljava/util/Locale;

    .line 175
    iget-object p4, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p0, p4}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->setCurrentLocale(Ljava/util/Locale;)V

    .line 177
    new-instance p4, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;

    invoke-direct {p4, p0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$2;-><init>(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)V

    .line 285
    sget v2, Landroid/support/v7/appcompat/R$id;->sesl_date_picker_pickers:I

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mSpinners:Landroid/widget/LinearLayout;

    .line 287
    sget v2, Landroid/support/v7/appcompat/R$id;->sesl_date_picker_primary_empty:I

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mPrimaryEmptyView:Landroid/view/View;

    .line 288
    sget v2, Landroid/support/v7/appcompat/R$id;->sesl_date_picker_secondary_empty:I

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mSecondaryEmptyView:Landroid/view/View;

    .line 291
    sget v2, Landroid/support/v7/appcompat/R$id;->sesl_date_picker_spinner_day:I

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/SeslNumberPicker;

    iput-object v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Landroid/support/v7/widget/SeslNumberPicker;

    .line 292
    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Landroid/support/v7/widget/SeslNumberPicker;

    sget v3, Landroid/support/v7/appcompat/R$id;->numberpicker_input:I

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/SeslNumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mDaySpinnerInput:Landroid/widget/EditText;

    .line 293
    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-static {}, Landroid/support/v7/widget/SeslNumberPicker;->getTwoDigitFormatter()Landroid/support/v7/widget/SeslNumberPicker$Formatter;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/SeslNumberPicker;->setFormatter(Landroid/support/v7/widget/SeslNumberPicker$Formatter;)V

    .line 294
    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v2, p4}, Landroid/support/v7/widget/SeslNumberPicker;->setOnValueChangedListener(Landroid/support/v7/widget/SeslNumberPicker$OnValueChangeListener;)V

    .line 295
    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Landroid/support/v7/widget/SeslNumberPicker;

    iget-object v3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mModeChangeListener:Landroid/support/v7/widget/SeslNumberPicker$OnEditTextModeChangedListener;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/SeslNumberPicker;->setOnEditTextModeChangedListener(Landroid/support/v7/widget/SeslNumberPicker$OnEditTextModeChangedListener;)V

    .line 296
    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/SeslNumberPicker;->setMaxInputLength(I)V

    .line 297
    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v2}, Landroid/support/v7/widget/SeslNumberPicker;->setYearDateTimeInputMode()V

    .line 300
    sget v2, Landroid/support/v7/appcompat/R$id;->sesl_date_picker_spinner_month:I

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/SeslNumberPicker;

    iput-object v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    .line 301
    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    sget v3, Landroid/support/v7/appcompat/R$id;->numberpicker_input:I

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/SeslNumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMonthSpinnerInput:Landroid/widget/EditText;

    .line 302
    invoke-direct {p0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 303
    iget-object p3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p3, v0}, Landroid/support/v7/widget/SeslNumberPicker;->setMinValue(I)V

    .line 304
    iget-object p3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    const/16 v2, 0xc

    invoke-virtual {p3, v2}, Landroid/support/v7/widget/SeslNumberPicker;->setMaxValue(I)V

    .line 305
    iget-object p3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p3}, Landroid/support/v7/widget/SeslNumberPicker;->setYearDateTimeInputMode()V

    .line 306
    iget-object p3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p3, v1}, Landroid/support/v7/widget/SeslNumberPicker;->setMaxInputLength(I)V

    goto :goto_0

    .line 308
    :cond_0
    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v2, p2}, Landroid/support/v7/widget/SeslNumberPicker;->setMinValue(I)V

    .line 309
    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    iget v3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mNumberOfMonths:I

    sub-int/2addr v3, v0

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/SeslNumberPicker;->setMaxValue(I)V

    .line 310
    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v2, p3}, Landroid/support/v7/widget/SeslNumberPicker;->setFormatter(Landroid/support/v7/widget/SeslNumberPicker$Formatter;)V

    .line 311
    iget-object p3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mShortMonths:[Ljava/lang/String;

    invoke-virtual {p3, v2}, Landroid/support/v7/widget/SeslNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 312
    iget-object p3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {p3, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 313
    iget-object p3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p3}, Landroid/support/v7/widget/SeslNumberPicker;->setMonthInputMode()V

    .line 315
    :goto_0
    iget-object p3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p3, p4}, Landroid/support/v7/widget/SeslNumberPicker;->setOnValueChangedListener(Landroid/support/v7/widget/SeslNumberPicker$OnValueChangeListener;)V

    .line 316
    iget-object p3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mModeChangeListener:Landroid/support/v7/widget/SeslNumberPicker$OnEditTextModeChangedListener;

    invoke-virtual {p3, v2}, Landroid/support/v7/widget/SeslNumberPicker;->setOnEditTextModeChangedListener(Landroid/support/v7/widget/SeslNumberPicker$OnEditTextModeChangedListener;)V

    .line 319
    sget p3, Landroid/support/v7/appcompat/R$id;->sesl_date_picker_spinner_year:I

    invoke-virtual {p0, p3}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/support/v7/widget/SeslNumberPicker;

    iput-object p3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mYearSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    .line 320
    iget-object p3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mYearSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    sget v2, Landroid/support/v7/appcompat/R$id;->numberpicker_input:I

    invoke-virtual {p3, v2}, Landroid/support/v7/widget/SeslNumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/EditText;

    iput-object p3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mYearSpinnerInput:Landroid/widget/EditText;

    .line 321
    iget-object p3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mYearSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p3, p4}, Landroid/support/v7/widget/SeslNumberPicker;->setOnValueChangedListener(Landroid/support/v7/widget/SeslNumberPicker$OnValueChangeListener;)V

    .line 322
    iget-object p3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mYearSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    iget-object p4, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mModeChangeListener:Landroid/support/v7/widget/SeslNumberPicker$OnEditTextModeChangedListener;

    invoke-virtual {p3, p4}, Landroid/support/v7/widget/SeslNumberPicker;->setOnEditTextModeChangedListener(Landroid/support/v7/widget/SeslNumberPicker$OnEditTextModeChangedListener;)V

    .line 324
    iget-object p3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mYearSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    const/4 p4, 0x4

    invoke-virtual {p3, p4}, Landroid/support/v7/widget/SeslNumberPicker;->setMaxInputLength(I)V

    .line 325
    iget-object p3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mYearSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p3}, Landroid/support/v7/widget/SeslNumberPicker;->setYearDateTimeInputMode()V

    const-string p3, "sec-roboto-light"

    .line 327
    invoke-static {p3, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p2

    .line 328
    iget-object p3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p3, p2}, Landroid/support/v7/widget/SeslNumberPicker;->setTextTypeface(Landroid/graphics/Typeface;)V

    .line 329
    iget-object p3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p3, p2}, Landroid/support/v7/widget/SeslNumberPicker;->setTextTypeface(Landroid/graphics/Typeface;)V

    .line 330
    iget-object p3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mYearSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p3, p2}, Landroid/support/v7/widget/SeslNumberPicker;->setTextTypeface(Landroid/graphics/Typeface;)V

    .line 332
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 333
    sget p3, Landroid/support/v7/appcompat/R$integer;->sesl_date_picker_spinner_number_text_size:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    iput p3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mNumberTextSize:I

    .line 334
    sget p3, Landroid/support/v7/appcompat/R$integer;->sesl_date_picker_spinner_number_text_size_small:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    .line 335
    sget p4, Landroid/support/v7/appcompat/R$string;->sesl_number_picker_invalid_value_entered:I

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mToastText:Ljava/lang/String;

    .line 337
    iget-object p4, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Landroid/support/v7/widget/SeslNumberPicker;

    iget v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mNumberTextSize:I

    int-to-float v2, v2

    invoke-virtual {p4, v2}, Landroid/support/v7/widget/SeslNumberPicker;->setTextSize(F)V

    .line 338
    iget-object p4, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mYearSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    int-to-float v2, p3

    invoke-virtual {p4, v2}, Landroid/support/v7/widget/SeslNumberPicker;->setTextSize(F)V

    .line 339
    iget-object p4, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p4

    const-string v2, "my"

    .line 340
    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "ml"

    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "bn"

    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "ar"

    .line 341
    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "fa"

    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const-string v2, "ga"

    .line 343
    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 344
    sget p3, Landroid/support/v7/appcompat/R$integer;->sesl_date_picker_spinner_long_month_text_size:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    add-int/lit8 p3, p2, -0x1

    goto :goto_2

    :cond_2
    const-string p2, "hu"

    .line 345
    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    add-int/lit8 p3, p3, -0x4

    goto :goto_2

    .line 342
    :cond_3
    :goto_1
    sget p3, Landroid/support/v7/appcompat/R$integer;->sesl_date_picker_spinner_long_month_text_size:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    .line 349
    :cond_4
    :goto_2
    invoke-direct {p0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 350
    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    iget p3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mNumberTextSize:I

    int-to-float p3, p3

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/SeslNumberPicker;->setTextSize(F)V

    goto :goto_3

    .line 352
    :cond_5
    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    int-to-float p3, p3

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/SeslNumberPicker;->setTextSize(F)V

    .line 355
    :goto_3
    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Landroid/support/v7/widget/SeslNumberPicker;

    .line 356
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Landroid/support/v7/appcompat/R$string;->sesl_date_picker_day:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 355
    invoke-virtual {p2, p3}, Landroid/support/v7/widget/SeslNumberPicker;->setPickerContentDescription(Ljava/lang/String;)V

    .line 357
    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    .line 358
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Landroid/support/v7/appcompat/R$string;->sesl_date_picker_month:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 357
    invoke-virtual {p2, p3}, Landroid/support/v7/widget/SeslNumberPicker;->setPickerContentDescription(Ljava/lang/String;)V

    .line 359
    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mYearSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    .line 360
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Landroid/support/v7/appcompat/R$string;->sesl_date_picker_year:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 359
    invoke-virtual {p2, p1}, Landroid/support/v7/widget/SeslNumberPicker;->setPickerContentDescription(Ljava/lang/String;)V

    .line 363
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 364
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result p2

    iget-object p3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 p4, 0x5

    .line 365
    invoke-virtual {p3, p4}, Ljava/util/Calendar;->get(I)I

    move-result p3

    .line 364
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->init(III)V

    .line 368
    invoke-direct {p0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->reorderSpinners()V

    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;Z)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->updateModeState(Z)V

    return-void
.end method

.method static synthetic access$100(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Calendar;
    .locals 0

    .line 63
    iget-object p0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    return-object p0
.end method

.method static synthetic access$1000(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Landroid/support/v7/widget/SeslNumberPicker;
    .locals 0

    .line 63
    iget-object p0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Landroid/support/v7/widget/SeslNumberPicker;

    return-object p0
.end method

.method static synthetic access$1100(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Z
    .locals 0

    .line 63
    iget-boolean p0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mIsLeapMonth:Z

    return p0
.end method

.method static synthetic access$1102(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;Z)Z
    .locals 0

    .line 63
    iput-boolean p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mIsLeapMonth:Z

    return p1
.end method

.method static synthetic access$1200(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;IIZ)I
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->getLunarMaxDayOfMonth(IIZ)I

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Landroid/support/v7/widget/SeslNumberPicker;
    .locals 0

    .line 63
    iget-object p0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    return-object p0
.end method

.method static synthetic access$1400(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Landroid/support/v7/widget/SeslNumberPicker;
    .locals 0

    .line 63
    iget-object p0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mYearSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    return-object p0
.end method

.method static synthetic access$1500(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Ljava/lang/Object;
    .locals 0

    .line 63
    iget-object p0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mSolarLunarTables:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1600(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Ljava/lang/reflect/Method;
    .locals 0

    .line 63
    iget-object p0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mIsLeapMonthMethod:Ljava/lang/reflect/Method;

    return-object p0
.end method

.method static synthetic access$1700(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1800(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;III)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->setDate(III)V

    return-void
.end method

.method static synthetic access$1900(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;ZZZZ)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->updateSpinners(ZZZZ)V

    return-void
.end method

.method static synthetic access$200(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Calendar;
    .locals 0

    .line 63
    iget-object p0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mTempDate:Ljava/util/Calendar;

    return-object p0
.end method

.method static synthetic access$2000(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->notifyDateChanged()V

    return-void
.end method

.method static synthetic access$2100(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;Ljava/lang/String;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->seslLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Landroid/support/v7/widget/SeslDatePicker;
    .locals 0

    .line 63
    iget-object p0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mDatePicker:Landroid/support/v7/widget/SeslDatePicker;

    return-object p0
.end method

.method static synthetic access$2300(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)[Landroid/widget/EditText;
    .locals 0

    .line 63
    iget-object p0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$2400(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Z
    .locals 0

    .line 63
    invoke-direct {p0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2500(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Calendar;
    .locals 0

    .line 63
    iget-object p0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    return-object p0
.end method

.method static synthetic access$2600(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Calendar;
    .locals 0

    .line 63
    iget-object p0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    return-object p0
.end method

.method static synthetic access$2700()Ljava/lang/String;
    .locals 1

    .line 63
    sget-object v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2800(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Landroid/widget/Toast;
    .locals 0

    .line 63
    iget-object p0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mToast:Landroid/widget/Toast;

    return-object p0
.end method

.method static synthetic access$2802(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    .line 63
    iput-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$2900(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Landroid/content/Context;
    .locals 0

    .line 63
    iget-object p0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Z
    .locals 0

    .line 63
    iget-boolean p0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mIsLunar:Z

    return p0
.end method

.method static synthetic access$3000(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Ljava/lang/String;
    .locals 0

    .line 63
    iget-object p0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mToastText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3100(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Locale;
    .locals 0

    .line 63
    iget-object p0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mCurrentLocale:Ljava/util/Locale;

    return-object p0
.end method

.method static synthetic access$3200(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)I
    .locals 0

    .line 63
    iget p0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mNumberOfMonths:I

    return p0
.end method

.method static synthetic access$3300(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)[Ljava/lang/String;
    .locals 0

    .line 63
    iget-object p0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mShortMonths:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)I
    .locals 0

    .line 63
    iget p0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mLunarTempYear:I

    return p0
.end method

.method static synthetic access$402(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;I)I
    .locals 0

    .line 63
    iput p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mLunarTempYear:I

    return p1
.end method

.method static synthetic access$500(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)I
    .locals 0

    .line 63
    iget p0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mLunarCurrentYear:I

    return p0
.end method

.method static synthetic access$600(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)I
    .locals 0

    .line 63
    iget p0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mLunarTempMonth:I

    return p0
.end method

.method static synthetic access$602(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;I)I
    .locals 0

    .line 63
    iput p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mLunarTempMonth:I

    return p1
.end method

.method static synthetic access$700(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)I
    .locals 0

    .line 63
    iget p0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mLunarCurrentMonth:I

    return p0
.end method

.method static synthetic access$800(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)I
    .locals 0

    .line 63
    iget p0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mLunarTempDay:I

    return p0
.end method

.method static synthetic access$802(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;I)I
    .locals 0

    .line 63
    iput p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mLunarTempDay:I

    return p1
.end method

.method static synthetic access$900(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)I
    .locals 0

    .line 63
    iget p0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mLunarCurrentDay:I

    return p0
.end method

.method private getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 2

    if-nez p1, :cond_0

    .line 547
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    return-object p1

    .line 549
    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 550
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    .line 551
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    return-object p1
.end method

.method private getLunarMaxDayOfMonth(IIZ)I
    .locals 4

    .line 1370
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mSolarLunarTables:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1374
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mSolarLunarTables:Ljava/lang/Object;

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mGetDayLengthOfMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, p1

    const/4 p1, 0x2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v3, p1

    invoke-direct {p0, v0, v2, v3}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 1376
    instance-of p2, p1, Ljava/lang/Integer;

    if-eqz p2, :cond_1

    .line 1377
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_1
    return v1
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

    .line 1388
    :try_start_0
    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1390
    sget-object p3, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->TAG:Ljava/lang/String;

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

.method private varargs invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 1400
    sget-object p1, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->TAG:Ljava/lang/String;

    const-string p2, "method is null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 1405
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

    .line 1411
    sget-object p3, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->TAG:Ljava/lang/String;

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

    .line 1409
    sget-object p3, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->TAG:Ljava/lang/String;

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

    .line 1407
    sget-object p3, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->TAG:Ljava/lang/String;

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

.method private isNewDate(III)Z
    .locals 2

    .line 618
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v0, p1, :cond_1

    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v0, 0x2

    .line 619
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 p2, 0x5

    .line 620
    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-eq p1, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private notifyDateChanged()V
    .locals 4

    const/4 v0, 0x4

    .line 800
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->sendAccessibilityEvent(I)V

    .line 802
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mOnSpinnerDateChangedListener:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$OnSpinnerDateChangedListener;

    if-eqz v0, :cond_0

    .line 803
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mOnSpinnerDateChangedListener:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$OnSpinnerDateChangedListener;

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->getYear()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->getMonth()I

    move-result v2

    .line 804
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->getDayOfMonth()I

    move-result v3

    .line 803
    invoke-interface {v0, p0, v1, v2, v3}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$OnSpinnerDateChangedListener;->onDateChanged(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;III)V

    :cond_0
    return-void
.end method

.method private reorderSpinners()V
    .locals 8

    .line 562
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mSpinners:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 565
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v0

    .line 567
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x79

    const/16 v5, 0x4d

    const/16 v6, 0x64

    if-ge v3, v1, :cond_3

    .line 569
    aget-char v7, v0, v3

    if-eq v7, v5, :cond_2

    if-eq v7, v6, :cond_1

    if-ne v7, v4, :cond_0

    .line 579
    iget-object v4, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v5, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mYearSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 580
    iget-object v4, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mYearSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-direct {p0, v4, v1, v3}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->setImeOptions(Landroid/support/v7/widget/SeslNumberPicker;II)V

    goto :goto_1

    .line 583
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 571
    :cond_1
    iget-object v4, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v5, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 572
    iget-object v4, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-direct {p0, v4, v1, v3}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->setImeOptions(Landroid/support/v7/widget/SeslNumberPicker;II)V

    goto :goto_1

    .line 575
    :cond_2
    iget-object v4, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v5, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 576
    iget-object v4, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-direct {p0, v4, v1, v3}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->setImeOptions(Landroid/support/v7/widget/SeslNumberPicker;II)V

    :goto_1
    packed-switch v3, :pswitch_data_0

    goto :goto_2

    .line 591
    :pswitch_0
    iget-object v4, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v5, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mSecondaryEmptyView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 588
    :pswitch_1
    iget-object v4, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v5, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mPrimaryEmptyView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 598
    :cond_3
    aget-char v1, v0, v2

    const/4 v3, 0x1

    .line 599
    aget-char v0, v0, v3

    if-eq v1, v5, :cond_7

    if-eq v1, v6, :cond_6

    if-eq v1, v4, :cond_4

    goto :goto_3

    :cond_4
    if-ne v0, v6, :cond_5

    const/4 v0, 0x3

    .line 609
    invoke-direct {p0, v0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->setTextWatcher(I)V

    goto :goto_3

    :cond_5
    const/4 v0, 0x2

    .line 611
    invoke-direct {p0, v0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->setTextWatcher(I)V

    goto :goto_3

    .line 605
    :cond_6
    invoke-direct {p0, v3}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->setTextWatcher(I)V

    goto :goto_3

    .line 602
    :cond_7
    invoke-direct {p0, v2}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->setTextWatcher(I)V

    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private seslLog(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private setDate(III)V
    .locals 1

    .line 624
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/Calendar;->set(III)V

    .line 626
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mIsLunar:Z

    if-eqz v0, :cond_0

    .line 627
    iput p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mLunarCurrentYear:I

    .line 628
    iput p2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mLunarCurrentMonth:I

    .line 629
    iput p3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mLunarCurrentDay:I

    .line 632
    :cond_0
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 633
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0

    .line 634
    :cond_1
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 635
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :cond_2
    :goto_0
    return-void
.end method

.method private setImeOptions(Landroid/support/v7/widget/SeslNumberPicker;II)V
    .locals 0

    add-int/lit8 p2, p2, -0x1

    if-ge p3, p2, :cond_0

    const p2, 0x2000005

    goto :goto_0

    :cond_0
    const p2, 0x2000006

    .line 822
    :goto_0
    sget p3, Landroid/support/v7/appcompat/R$id;->numberpicker_input:I

    invoke-virtual {p1, p3}, Landroid/support/v7/widget/SeslNumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 823
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setImeOptions(I)V

    return-void
.end method

.method private setTextWatcher(I)V
    .locals 9

    .line 878
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTextWatcher() usingNumericMonths  : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "format  : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->seslLog(Ljava/lang/String;)V

    const/4 v0, -0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_0

    const/4 v4, -0x1

    const/4 v5, -0x1

    goto :goto_1

    :pswitch_0
    const/4 v0, 0x0

    const/4 v4, 0x2

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    goto :goto_1

    :pswitch_2
    const/4 v0, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    goto :goto_1

    :pswitch_3
    const/4 v0, 0x2

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    .line 906
    :goto_1
    iget-object v6, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v7, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mYearSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v7}, Landroid/support/v7/widget/SeslNumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object v7

    aput-object v7, v6, v0

    .line 907
    iget-object v6, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v7, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v7}, Landroid/support/v7/widget/SeslNumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object v7

    aput-object v7, v6, v4

    .line 908
    iget-object v6, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v7, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v7}, Landroid/support/v7/widget/SeslNumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object v7

    aput-object v7, v6, v5

    .line 910
    iget-object v6, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v6, v6, v0

    new-instance v7, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;

    const/4 v8, 0x4

    invoke-direct {v7, p0, v8, v0, v2}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;-><init>(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;IIZ)V

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 911
    invoke-direct {p0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result v6

    const/4 v7, 0x3

    if-eqz v6, :cond_0

    .line 912
    iget-object v6, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v6, v6, v4

    new-instance v8, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;

    invoke-direct {v8, p0, v1, v4, v3}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;-><init>(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;IIZ)V

    invoke-virtual {v6, v8}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_2

    .line 914
    :cond_0
    iget-object v6, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v6, v6, v4

    new-instance v8, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;

    invoke-direct {v8, p0, v7, v4, v3}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;-><init>(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;IIZ)V

    invoke-virtual {v6, v8}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 916
    :goto_2
    iget-object v6, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v6, v6, v5

    new-instance v8, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;

    invoke-direct {v8, p0, v1, v5, v2}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;-><init>(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;IIZ)V

    invoke-virtual {v6, v8}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    if-ne p1, v7, :cond_1

    .line 918
    invoke-direct {p0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 919
    :cond_1
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    array-length v1, v1

    sub-int/2addr v1, v3

    aget-object p1, p1, v1

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 922
    :cond_2
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object p1, p1, v0

    new-instance v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslKeyListener;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslKeyListener;-><init>(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 923
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object p1, p1, v4

    new-instance v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslKeyListener;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslKeyListener;-><init>(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 924
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object p1, p1, v5

    new-instance v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslKeyListener;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslKeyListener;-><init>(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateModeState(Z)V
    .locals 1

    .line 1227
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mIsEditTextMode:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_3

    .line 1231
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslNumberPicker;->isEditTextMode()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1232
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/SeslNumberPicker;->setEditTextMode(Z)V

    .line 1234
    :cond_1
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslNumberPicker;->isEditTextMode()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1235
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/SeslNumberPicker;->setEditTextMode(Z)V

    .line 1237
    :cond_2
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mYearSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslNumberPicker;->isEditTextMode()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1238
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mYearSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/SeslNumberPicker;->setEditTextMode(Z)V

    :cond_3
    return-void
.end method

.method private updateSpinners(ZZZZ)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    .line 652
    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mYearSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/support/v7/widget/SeslNumberPicker;->setMinValue(I)V

    .line 653
    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mYearSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/support/v7/widget/SeslNumberPicker;->setMaxValue(I)V

    .line 654
    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mYearSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/SeslNumberPicker;->setWrapSelectorWheel(Z)V

    :cond_0
    const/4 p2, 0x2

    if-eqz p3, :cond_6

    .line 658
    iget-object p3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p3, v1}, Ljava/util/Calendar;->get(I)I

    move-result p3

    .line 659
    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    sub-int/2addr v2, p3

    const/16 p3, 0xb

    if-nez v2, :cond_1

    .line 663
    iget-object p3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p3, p2}, Ljava/util/Calendar;->get(I)I

    move-result p3

    .line 664
    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, p2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    goto :goto_1

    .line 666
    :cond_1
    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 668
    iget-boolean v3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mIsLunar:Z

    if-eqz v3, :cond_2

    .line 669
    iget v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mLunarCurrentYear:I

    .line 672
    :cond_2
    iget-object v3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v3, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 673
    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, p2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    move p3, v2

    :goto_0
    const/16 v2, 0xb

    goto :goto_1

    .line 675
    :cond_3
    iget-object v3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v3, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_4

    .line 677
    iget-object p3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {p3, p2}, Ljava/util/Calendar;->get(I)I

    move-result p3

    move v2, p3

    const/4 p3, 0x0

    goto :goto_1

    :cond_4
    const/4 p3, 0x0

    goto :goto_0

    .line 684
    :goto_1
    invoke-direct {p0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result v3

    if-eqz v3, :cond_5

    add-int/lit8 p3, p3, 0x1

    add-int/lit8 v2, v2, 0x1

    .line 689
    :cond_5
    iget-object v3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/SeslNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 690
    iget-object v3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v3, p3}, Landroid/support/v7/widget/SeslNumberPicker;->setMinValue(I)V

    .line 691
    iget-object p3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p3, v2}, Landroid/support/v7/widget/SeslNumberPicker;->setMaxValue(I)V

    .line 693
    invoke-direct {p0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result p3

    if-nez p3, :cond_6

    .line 694
    iget-object p3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mShortMonths:[Ljava/lang/String;

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    .line 695
    invoke-virtual {v2}, Landroid/support/v7/widget/SeslNumberPicker;->getMinValue()I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v3}, Landroid/support/v7/widget/SeslNumberPicker;->getMaxValue()I

    move-result v3

    add-int/2addr v3, v1

    .line 694
    invoke-static {p3, v2, v3}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/lang/String;

    .line 696
    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v2, p3}, Landroid/support/v7/widget/SeslNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    :cond_6
    const/4 p3, 0x5

    if-eqz p4, :cond_d

    .line 701
    iget-object p4, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p4, v1}, Ljava/util/Calendar;->get(I)I

    move-result p4

    .line 702
    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    sub-int/2addr v2, p4

    .line 704
    iget-object p4, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p4, p2}, Ljava/util/Calendar;->get(I)I

    move-result p4

    .line 705
    iget-object v3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v3, p2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    sub-int/2addr v3, p4

    if-nez v2, :cond_7

    if-nez v3, :cond_7

    .line 709
    iget-object p4, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p4, p3}, Ljava/util/Calendar;->get(I)I

    move-result p4

    .line 710
    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, p3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    move v3, p4

    goto/16 :goto_3

    .line 712
    :cond_7
    iget-object p4, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {p4, v1}, Ljava/util/Calendar;->get(I)I

    move-result p4

    .line 713
    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, p2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 715
    iget-boolean v3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mIsLunar:Z

    if-eqz v3, :cond_8

    .line 716
    iget p4, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mLunarCurrentYear:I

    .line 717
    iget v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mLunarCurrentMonth:I

    .line 721
    :cond_8
    iget-object v3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v3, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne p4, v3, :cond_a

    iget-object v3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    .line 722
    invoke-virtual {v3, p2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_a

    .line 723
    iget-object v3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v3, p3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 724
    iget-object v4, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v4, p3}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v4

    .line 726
    iget-boolean v5, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mIsLunar:Z

    if-eqz v5, :cond_9

    .line 727
    iget-boolean v4, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mIsLeapMonth:Z

    invoke-direct {p0, p4, v2, v4}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->getLunarMaxDayOfMonth(IIZ)I

    move-result v2

    goto :goto_3

    :cond_9
    move v2, v4

    goto :goto_3

    .line 730
    :cond_a
    iget-object v3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v3, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne p4, v3, :cond_b

    iget-object v3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    .line 731
    invoke-virtual {v3, p2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_b

    .line 733
    iget-object v3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v3, p3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 735
    iget-boolean v4, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mIsLunar:Z

    if-eqz v4, :cond_c

    .line 736
    iget-boolean v4, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mIsLeapMonth:Z

    invoke-direct {p0, p4, v2, v4}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->getLunarMaxDayOfMonth(IIZ)I

    move-result p4

    invoke-static {v3, p4}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_2

    .line 741
    :cond_b
    iget-object v3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v3, p3}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v3

    .line 743
    iget-boolean v4, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mIsLunar:Z

    if-eqz v4, :cond_c

    .line 744
    iget-boolean v3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mIsLeapMonth:Z

    invoke-direct {p0, p4, v2, v3}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->getLunarMaxDayOfMonth(IIZ)I

    move-result v2

    goto :goto_2

    :cond_c
    move v2, v3

    :goto_2
    const/4 v3, 0x1

    .line 750
    :goto_3
    iget-object p4, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p4, v3}, Landroid/support/v7/widget/SeslNumberPicker;->setMinValue(I)V

    .line 751
    iget-object p4, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p4, v2}, Landroid/support/v7/widget/SeslNumberPicker;->setMaxValue(I)V

    :cond_d
    if-nez p1, :cond_e

    return-void

    .line 759
    :cond_e
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mYearSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    iget-object p4, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {p4, v1}, Ljava/util/Calendar;->get(I)I

    move-result p4

    invoke-virtual {p1, p4}, Landroid/support/v7/widget/SeslNumberPicker;->setValue(I)V

    .line 761
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    .line 763
    iget-boolean p4, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mIsLunar:Z

    if-eqz p4, :cond_f

    .line 764
    iget p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mLunarCurrentMonth:I

    .line 767
    :cond_f
    invoke-direct {p0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result p4

    if-eqz p4, :cond_10

    .line 768
    iget-object p4, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    add-int/2addr p1, v1

    invoke-virtual {p4, p1}, Landroid/support/v7/widget/SeslNumberPicker;->setValue(I)V

    goto :goto_4

    .line 770
    :cond_10
    iget-object p4, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p4, p1}, Landroid/support/v7/widget/SeslNumberPicker;->setValue(I)V

    .line 773
    :goto_4
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {p1, p3}, Ljava/util/Calendar;->get(I)I

    move-result p1

    .line 775
    iget-boolean p3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mIsLunar:Z

    if-eqz p3, :cond_11

    .line 776
    iget p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mLunarCurrentDay:I

    .line 779
    :cond_11
    iget-object p3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p3, p1}, Landroid/support/v7/widget/SeslNumberPicker;->setValue(I)V

    .line 781
    invoke-direct {p0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 782
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 785
    :cond_12
    iget-boolean p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mIsEditTextMode:Z

    if-eqz p1, :cond_14

    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    if-eqz p1, :cond_14

    .line 786
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    array-length p2, p1

    const/4 p3, 0x0

    :goto_5
    if-ge p3, p2, :cond_14

    aget-object p4, p1, p3

    .line 787
    invoke-virtual {p4}, Landroid/widget/EditText;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 788
    invoke-virtual {p4, v0, v0}, Landroid/widget/EditText;->setSelection(II)V

    .line 789
    invoke-virtual {p4}, Landroid/widget/EditText;->selectAll()V

    goto :goto_6

    :cond_13
    add-int/lit8 p3, p3, 0x1

    goto :goto_5

    :cond_14
    :goto_6
    return-void
.end method

.method private usingNumericMonths()Z
    .locals 2

    .line 535
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mShortMonths:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    .line 488
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/4 p1, 0x1

    return p1
.end method

.method public getDayOfMonth()I
    .locals 2

    .line 409
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mIsLunar:Z

    if-eqz v0, :cond_0

    .line 410
    iget v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mLunarCurrentDay:I

    return v0

    .line 413
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getEditText(I)Landroid/widget/EditText;
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 1302
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslNumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    return-object p1

    .line 1300
    :pswitch_0
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mYearSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslNumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    return-object p1

    .line 1298
    :pswitch_1
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslNumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    return-object p1

    .line 1296
    :pswitch_2
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslNumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getMaxDate()Ljava/util/Calendar;
    .locals 1

    .line 441
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    return-object v0
.end method

.method public getMinDate()Ljava/util/Calendar;
    .locals 1

    .line 427
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    return-object v0
.end method

.method public getMonth()I
    .locals 2

    .line 399
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mIsLunar:Z

    if-eqz v0, :cond_0

    .line 400
    iget v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mLunarCurrentMonth:I

    return v0

    .line 403
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getNumberPicker(I)Landroid/support/v7/widget/SeslNumberPicker;
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 1315
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Landroid/support/v7/widget/SeslNumberPicker;

    return-object p1

    .line 1313
    :pswitch_0
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mYearSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    return-object p1

    .line 1311
    :pswitch_1
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    return-object p1

    .line 1309
    :pswitch_2
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Landroid/support/v7/widget/SeslNumberPicker;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getYear()I
    .locals 2

    .line 389
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mIsLunar:Z

    if-eqz v0, :cond_0

    .line 390
    iget v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mLunarCurrentYear:I

    return v0

    .line 393
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public init(III)V
    .locals 0

    .line 373
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->setDate(III)V

    const/4 p1, 0x1

    .line 374
    invoke-direct {p0, p1, p1, p1, p1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->updateSpinners(ZZZZ)V

    return-void
.end method

.method public isEditTextMode()Z
    .locals 1

    .line 1275
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mIsEditTextMode:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .line 456
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 457
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->setCurrentLocale(Ljava/util/Locale;)V

    .line 459
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 460
    sget v1, Landroid/support/v7/appcompat/R$integer;->sesl_date_picker_spinner_number_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 461
    iget v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mNumberTextSize:I

    if-ne v2, v1, :cond_0

    return-void

    .line 465
    :cond_0
    sget v2, Landroid/support/v7/appcompat/R$integer;->sesl_date_picker_spinner_number_text_size_small:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 466
    iput v1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mNumberTextSize:I

    .line 467
    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Landroid/support/v7/widget/SeslNumberPicker;

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/SeslNumberPicker;->setTextSize(F)V

    .line 468
    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mYearSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/SeslNumberPicker;->setTextSize(F)V

    .line 470
    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    const-string v2, "my"

    .line 471
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "ml"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "bn"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "ar"

    .line 472
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "fa"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "ga"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const-string v2, "hu"

    .line 474
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    add-int/lit8 v0, v0, -0x4

    .line 478
    :cond_2
    invoke-direct {p0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 479
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/SeslNumberPicker;->setTextSize(F)V

    goto :goto_0

    .line 481
    :cond_3
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/SeslNumberPicker;->setTextSize(F)V

    :goto_0
    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4

    .line 496
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    .line 497
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const/16 v3, 0x14

    .line 496
    invoke-static {v0, v1, v2, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .line 498
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected setCurrentLocale(Ljava/util/Locale;)V
    .locals 7

    .line 508
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mTempDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mTempDate:Ljava/util/Calendar;

    .line 509
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    .line 510
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    .line 511
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    .line 513
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mTempDate:Ljava/util/Calendar;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result p1

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mNumberOfMonths:I

    .line 514
    new-instance p1, Ljava/text/DateFormatSymbols;

    invoke-direct {p1}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {p1}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mShortMonths:[Ljava/lang/String;

    const/4 p1, 0x0

    const/4 v1, 0x0

    .line 516
    :goto_0
    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mShortMonths:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 517
    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mShortMonths:[Ljava/lang/String;

    iget-object v3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mShortMonths:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 520
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 523
    iget v1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mNumberOfMonths:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mShortMonths:[Ljava/lang/String;

    const/4 v1, 0x0

    .line 524
    :goto_1
    iget v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mNumberOfMonths:I

    if-ge v1, v2, :cond_1

    .line 525
    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mShortMonths:[Ljava/lang/String;

    const-string v3, "%d"

    new-array v4, v0, [Ljava/lang/Object;

    add-int/lit8 v5, v1, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, p1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    move v1, v5

    goto :goto_1

    :cond_1
    return-void
.end method

.method public setEditTextMode(Z)V
    .locals 3

    .line 1250
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mIsEditTextMode:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 1254
    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mIsEditTextMode:Z

    .line 1255
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1258
    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/SeslNumberPicker;->setEditTextMode(Z)V

    .line 1259
    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/SeslNumberPicker;->setEditTextMode(Z)V

    .line 1260
    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mYearSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/SeslNumberPicker;->setEditTextMode(Z)V

    if-eqz v0, :cond_2

    .line 1262
    iget-boolean v1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mIsEditTextMode:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 1263
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 1265
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1268
    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mOnEditTextModeChangedListener:Landroid/support/v7/widget/SeslDatePicker$OnEditTextModeChangedListener;

    if-eqz v0, :cond_3

    .line 1269
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mOnEditTextModeChangedListener:Landroid/support/v7/widget/SeslDatePicker$OnEditTextModeChangedListener;

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mDatePicker:Landroid/support/v7/widget/SeslDatePicker;

    invoke-interface {v0, v1, p1}, Landroid/support/v7/widget/SeslDatePicker$OnEditTextModeChangedListener;->onEditTextModeChanged(Landroid/support/v7/widget/SeslDatePicker;Z)V

    :cond_3
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 447
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SeslNumberPicker;->setEnabled(Z)V

    .line 448
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SeslNumberPicker;->setEnabled(Z)V

    .line 449
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mYearSpinner:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SeslNumberPicker;->setEnabled(Z)V

    return-void
.end method

.method public setIsLeapMonth(Z)V
    .locals 0

    .line 1366
    iput-boolean p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mIsLeapMonth:Z

    return-void
.end method

.method public setLunar(ZZLdalvik/system/PathClassLoader;)V
    .locals 4

    .line 1320
    iput-boolean p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mIsLunar:Z

    .line 1321
    iput-boolean p2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mIsLeapMonth:Z

    .line 1323
    iget-boolean p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mIsLunar:Z

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    if-nez p1, :cond_2

    .line 1324
    iput-object p3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    :try_start_0
    const-string p1, "com.android.calendar.Feature"

    .line 1329
    iget-object p3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    invoke-static {p1, v0, p3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p1, :cond_0

    .line 1335
    sget-object p1, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->TAG:Ljava/lang/String;

    const-string p2, "setLunar, Calendar Feature class is null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string p3, "getSolarLunarTables"

    .line 1339
    new-array v1, p2, [Ljava/lang/Class;

    invoke-direct {p0, p1, p3, v1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    const/4 p3, 0x0

    .line 1340
    new-array v1, p2, [Ljava/lang/Object;

    invoke-direct {p0, p3, p1, v1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mSolarLunarTables:Ljava/lang/Object;

    :try_start_1
    const-string p1, "com.samsung.android.calendar.secfeature.lunarcalendar.SolarLunarTables"

    .line 1346
    iget-object p3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    invoke-static {p1, v0, p3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    if-nez p1, :cond_1

    .line 1352
    sget-object p1, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->TAG:Ljava/lang/String;

    const-string p2, "setLunar, Calendar Tables class is null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string p3, "isLeapMonth"

    const/4 v1, 0x2

    .line 1356
    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, p2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v0

    invoke-direct {p0, p1, p3, v2}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p3

    iput-object p3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mIsLeapMonthMethod:Ljava/lang/reflect/Method;

    const-string p3, "getDayLengthOf"

    const/4 v2, 0x3

    .line 1358
    new-array v2, v2, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, p2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v0

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v1

    invoke-direct {p0, p1, p3, v2}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mGetDayLengthOfMethod:Ljava/lang/reflect/Method;

    goto :goto_0

    .line 1348
    :catch_0
    sget-object p1, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->TAG:Ljava/lang/String;

    const-string p2, "setLunar, Calendar Tables class not found"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1331
    :catch_1
    sget-object p1, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->TAG:Ljava/lang/String;

    const-string p2, "setLunar, Calendar Feature class not found"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1362
    :cond_2
    :goto_0
    invoke-direct {p0, p2, v0, v0, v0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->updateSpinners(ZZZZ)V

    return-void
.end method

.method public setMaxDate(J)V
    .locals 2

    .line 432
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 433
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 434
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :cond_0
    const/4 p1, 0x1

    .line 436
    invoke-direct {p0, p1, p1, p1, p1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->updateSpinners(ZZZZ)V

    return-void
.end method

.method public setMinDate(J)V
    .locals 2

    .line 418
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 419
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 420
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :cond_0
    const/4 p1, 0x1

    .line 422
    invoke-direct {p0, p1, p1, p1, p1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->updateSpinners(ZZZZ)V

    return-void
.end method

.method public setOnEditTextModeChangedListener(Landroid/support/v7/widget/SeslDatePicker;Landroid/support/v7/widget/SeslDatePicker$OnEditTextModeChangedListener;)V
    .locals 1

    .line 1286
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mDatePicker:Landroid/support/v7/widget/SeslDatePicker;

    if-nez v0, :cond_0

    .line 1287
    iput-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mDatePicker:Landroid/support/v7/widget/SeslDatePicker;

    .line 1289
    :cond_0
    iput-object p2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mOnEditTextModeChangedListener:Landroid/support/v7/widget/SeslDatePicker$OnEditTextModeChangedListener;

    return-void
.end method

.method public setOnSpinnerDateChangedListener(Landroid/support/v7/widget/SeslDatePicker;Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$OnSpinnerDateChangedListener;)V
    .locals 1

    .line 1220
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mDatePicker:Landroid/support/v7/widget/SeslDatePicker;

    if-nez v0, :cond_0

    .line 1221
    iput-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mDatePicker:Landroid/support/v7/widget/SeslDatePicker;

    .line 1223
    :cond_0
    iput-object p2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mOnSpinnerDateChangedListener:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$OnSpinnerDateChangedListener;

    return-void
.end method

.method public updateDate(III)V
    .locals 1

    .line 379
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->isNewDate(III)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 382
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->setDate(III)V

    const/4 p1, 0x1

    .line 383
    invoke-direct {p0, p1, p1, p1, p1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->updateSpinners(ZZZZ)V

    return-void
.end method

.method public updateInputState()V
    .locals 3

    .line 833
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_2

    .line 836
    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mYearSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 837
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 838
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mYearSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    goto :goto_0

    .line 839
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 840
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 841
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    goto :goto_0

    .line 842
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mDaySpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 843
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 844
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->mDaySpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    :cond_2
    :goto_0
    return-void
.end method
