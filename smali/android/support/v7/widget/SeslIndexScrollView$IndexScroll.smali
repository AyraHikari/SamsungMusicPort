.class Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/SeslIndexScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IndexScroll"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;
    }
.end annotation


# static fields
.field public static final FIRST_LETTER_NOT_RELEVANT_NOT_MULTI_LANGUAGE:I = -0x1

.field public static final GRAVITY_INDEX_BAR_LEFT:I = 0x0

.field public static final GRAVITY_INDEX_BAR_RIGHT:I = 0x1

.field public static final LAST_LETTER_NOT_RELEVANT_NOT_MULTI_LANGUAGE:I = -0x1

.field public static final NO_SELECTED_INDEX:I = -0x1


# instance fields
.field private mAdditionalSpace:I

.field private mAlphabetArray:[Ljava/lang/String;

.field private mAlphabetArrayFirstLetterIndex:I

.field private mAlphabetArrayLastLetterIndex:I

.field private mAlphabetArrayToDraw:[Ljava/lang/String;

.field private mAlphabetSize:I

.field private mAlphabetToDrawSize:I

.field private mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

.field private mBgRect:Landroid/graphics/Rect;

.field private mBgRectParamsSet:Z

.field private mBgRectWidth:I

.field private mBgTintColor:I

.field private mBigText:Ljava/lang/String;

.field private mContentMinHeight:F

.field private mContentPadding:I

.field private mContext:Landroid/content/Context;

.field private mDotHeight:I

.field mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

.field private mHeight:I

.field private mIndexScrollPreviewRadius:F

.field private mIsAlphabetInit:Z

.field private mItemHeight:F

.field private mItemWidth:I

.field private mItemWidthGap:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPosition:I

.field private mPreviewLimitY:F

.field private mScreenHeight:I

.field private mScrollBottom:I

.field private mScrollBottomMargin:I

.field private mScrollThumbAdditionalHeight:I

.field private mScrollThumbBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mScrollThumbBgRect:Landroid/graphics/Rect;

.field private mScrollThumbBgRectHeight:I

.field private mScrollThumbBgRectPadding:I

.field private mScrollTop:I

.field private mScrollTopMargin:I

.field mSecondLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

.field private mSelectedIndex:I

.field private mSeparatorHeight:F

.field private mSmallText:Ljava/lang/String;

.field private mTextBounds:Landroid/graphics/Rect;

.field private mTextColorDimmed:I

.field private mTextSize:I

.field private mThumbColor:I

.field private mWidth:I

.field private mWidthShift:I

.field final synthetic this$0:Landroid/support/v7/widget/SeslIndexScrollView;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/SeslIndexScrollView;Landroid/content/Context;II)V
    .locals 1

    .line 846
    iput-object p1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->this$0:Landroid/support/v7/widget/SeslIndexScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 732
    iput-object p1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    const/4 v0, -0x1

    .line 739
    iput v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    .line 747
    iput v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    .line 784
    iput v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSelectedIndex:I

    const/4 v0, 0x0

    .line 792
    iput v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mPosition:I

    .line 795
    iput-object p1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 802
    iput-object p1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollThumbBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 817
    iput v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mThumbColor:I

    .line 824
    iput-boolean v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mIsAlphabetInit:Z

    .line 847
    iput p3, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mHeight:I

    .line 848
    iput p4, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mWidth:I

    .line 849
    iput v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mWidthShift:I

    .line 850
    iput v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollTop:I

    .line 851
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mTextBounds:Landroid/graphics/Rect;

    .line 852
    iput-boolean v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mBgRectParamsSet:Z

    .line 853
    iput-object p2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mContext:Landroid/content/Context;

    .line 854
    invoke-direct {p0}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/SeslIndexScrollView;Landroid/content/Context;III)V
    .locals 1

    .line 864
    iput-object p1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->this$0:Landroid/support/v7/widget/SeslIndexScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 732
    iput-object p1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    const/4 v0, -0x1

    .line 739
    iput v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    .line 747
    iput v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    .line 784
    iput v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSelectedIndex:I

    const/4 v0, 0x0

    .line 792
    iput v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mPosition:I

    .line 795
    iput-object p1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 802
    iput-object p1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollThumbBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 817
    iput v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mThumbColor:I

    .line 824
    iput-boolean v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mIsAlphabetInit:Z

    .line 865
    iput p3, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mHeight:I

    .line 866
    iput p4, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mWidth:I

    .line 867
    iput p5, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mPosition:I

    .line 868
    iput v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mWidthShift:I

    .line 869
    iput v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollTop:I

    .line 870
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mTextBounds:Landroid/graphics/Rect;

    .line 871
    iput-boolean v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mBgRectParamsSet:Z

    .line 872
    iput-object p2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mContext:Landroid/content/Context;

    .line 873
    invoke-direct {p0}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->init()V

    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 710
    iget-object p0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollThumbBgDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$100(Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;)I
    .locals 0

    .line 710
    iget p0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mThumbColor:I

    return p0
.end method

.method static synthetic access$102(Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;I)I
    .locals 0

    .line 710
    iput p1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mThumbColor:I

    return p1
.end method

.method static synthetic access$200(Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 710
    iget-object p0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$202(Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 710
    iput-object p1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$302(Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;I)I
    .locals 0

    .line 710
    iput p1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mTextColorDimmed:I

    return p1
.end method

.method static synthetic access$400(Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;IF)I
    .locals 0

    .line 710
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->getColorWithAlpha(IF)I

    move-result p0

    return p0
.end method

.method private adjustSeparatorHeight()V
    .locals 9

    .line 1078
    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->this$0:Landroid/support/v7/widget/SeslIndexScrollView;

    invoke-static {v0}, Landroid/support/v7/widget/SeslIndexScrollView;->access$700(Landroid/support/v7/widget/SeslIndexScrollView;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1079
    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mHeight:I

    iget v2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mDotHeight:I

    iget-object v3, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, v3, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    mul-int v2, v2, v3

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v2, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    .line 1080
    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v1, v1

    iput v1, v0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    goto/16 :goto_1

    .line 1085
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v0, v0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    iget v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v1, v1

    const v2, 0x3f19999a    # 0.6f

    mul-float v1, v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 1086
    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mHeight:I

    int-to-double v3, v1

    const-wide v5, 0x3fe3333333333333L    # 0.6

    mul-double v3, v3, v5

    iget v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mDotHeight:I

    iget-object v5, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v5, v5, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    mul-int v1, v1, v5

    int-to-double v5, v1

    sub-double/2addr v3, v5

    double-to-float v1, v3

    iget-object v3, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, v3, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    iput v1, v0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    .line 1087
    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mHeight:I

    int-to-double v3, v1

    const-wide v5, 0x3fd999999999999aL    # 0.4

    mul-double v3, v3, v5

    iget v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mDotHeight:I

    iget-object v5, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v5, v5, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    mul-int v1, v1, v5

    int-to-double v5, v1

    sub-double/2addr v3, v5

    double-to-float v1, v3

    iget-object v3, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, v3, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    iput v1, v0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    .line 1088
    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v1, v1

    mul-float v1, v1, v2

    iput v1, v0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    .line 1089
    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v1, v1

    const v2, 0x3ecccccd    # 0.4f

    mul-float v1, v1, v2

    iput v1, v0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    goto/16 :goto_0

    .line 1090
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v0, v0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    iget v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v1, v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2

    .line 1091
    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mHeight:I

    int-to-double v3, v1

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    mul-double v3, v3, v5

    iget v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mDotHeight:I

    iget-object v7, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v7, v7, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    mul-int v1, v1, v7

    int-to-double v7, v1

    sub-double/2addr v3, v7

    double-to-float v1, v3

    iget-object v3, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, v3, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    iput v1, v0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    .line 1092
    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mHeight:I

    int-to-double v3, v1

    mul-double v3, v3, v5

    iget v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mDotHeight:I

    iget-object v5, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v5, v5, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    mul-int v1, v1, v5

    int-to-double v5, v1

    sub-double/2addr v3, v5

    double-to-float v1, v3

    iget-object v3, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, v3, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    iput v1, v0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    .line 1093
    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget-object v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v3, v3

    mul-float v3, v3, v2

    iput v3, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    iput v3, v0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    goto :goto_0

    .line 1095
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget-object v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    iget v2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mDotHeight:I

    iget-object v3, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, v3, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    mul-int v2, v2, v3

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v2, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    .line 1096
    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget-object v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    iget v2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mDotHeight:I

    iget-object v3, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, v3, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    mul-int v2, v2, v3

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v2, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    .line 1100
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v0, v0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 1101
    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mHeight:I

    iget v3, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mDotHeight:I

    iget-object v4, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v4, v4, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    mul-int v3, v3, v4

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, v3, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, v0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    .line 1102
    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v2, v2

    iput v2, v0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    .line 1103
    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iput v1, v0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    .line 1104
    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iput v1, v0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    goto :goto_1

    .line 1105
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v0, v0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    if-nez v0, :cond_4

    .line 1106
    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mHeight:I

    iget v3, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mDotHeight:I

    iget-object v4, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v4, v4, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    mul-int v3, v3, v4

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, v3, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, v0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    .line 1107
    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v2, v2

    iput v2, v0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    .line 1108
    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iput v1, v0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    .line 1109
    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iput v1, v0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    :cond_4
    :goto_1
    return-void
.end method

.method private allocateBgRectangle()V
    .locals 7

    .line 1608
    iget v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mPosition:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1609
    iget v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mWidth:I

    iget v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mWidthShift:I

    sub-int/2addr v0, v1

    .line 1610
    iget v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mBgRectWidth:I

    sub-int v1, v0, v1

    goto :goto_0

    .line 1612
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mWidthShift:I

    iget v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mBgRectWidth:I

    add-int/2addr v0, v1

    .line 1613
    iget v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mWidthShift:I

    .line 1616
    :goto_0
    iget-object v2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    if-nez v2, :cond_1

    .line 1617
    new-instance v2, Landroid/graphics/Rect;

    iget v3, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollTop:I

    iget v4, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollTopMargin:I

    add-int/2addr v3, v4

    iget v4, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mContentPadding:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mHeight:I

    iget v5, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollTop:I

    add-int/2addr v4, v5

    iget v5, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollTopMargin:I

    add-int/2addr v4, v5

    iget v5, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mContentPadding:I

    add-int/2addr v4, v5

    invoke-direct {v2, v1, v3, v0, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    goto :goto_1

    .line 1619
    :cond_1
    iget-object v2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v3, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollTop:I

    iget v4, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollTopMargin:I

    add-int/2addr v3, v4

    iget v4, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mContentPadding:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mHeight:I

    iget v5, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollTop:I

    add-int/2addr v4, v5

    iget v5, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollTopMargin:I

    add-int/2addr v4, v5

    iget v5, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mContentPadding:I

    add-int/2addr v4, v5

    invoke-virtual {v2, v1, v3, v0, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1622
    :goto_1
    iget v2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mContentMinHeight:F

    const/high16 v3, 0x40400000    # 3.0f

    mul-float v2, v2, v3

    float-to-int v2, v2

    iget v3, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollThumbAdditionalHeight:I

    add-int/2addr v2, v3

    iput v2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollThumbBgRectHeight:I

    .line 1623
    iget v2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    add-int/2addr v1, v2

    .line 1624
    iget v2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    sub-int/2addr v0, v2

    .line 1625
    iget-object v2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->this$0:Landroid/support/v7/widget/SeslIndexScrollView;

    invoke-static {v2}, Landroid/support/v7/widget/SeslIndexScrollView;->access$1000(Landroid/support/v7/widget/SeslIndexScrollView;)F

    move-result v2

    iget v3, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollThumbBgRectHeight:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    .line 1626
    iget-object v3, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->this$0:Landroid/support/v7/widget/SeslIndexScrollView;

    invoke-static {v3}, Landroid/support/v7/widget/SeslIndexScrollView;->access$1000(Landroid/support/v7/widget/SeslIndexScrollView;)F

    move-result v3

    iget v4, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollThumbBgRectHeight:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    .line 1628
    iget-object v4, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    add-int/2addr v4, v5

    if-ge v2, v4, :cond_2

    iget-object v4, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    sub-int/2addr v4, v5

    if-gt v3, v4, :cond_3

    :cond_2
    iget v4, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollThumbBgRectHeight:I

    iget-object v5, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    if-lt v4, v5, :cond_4

    .line 1630
    :cond_3
    iget-object v2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v3, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    add-int/2addr v2, v3

    .line 1631
    iget-object v3, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    sub-int/2addr v3, v4

    goto :goto_2

    .line 1632
    :cond_4
    iget-object v4, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    add-int/2addr v4, v5

    if-ge v2, v4, :cond_5

    .line 1633
    iget-object v2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v3, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    add-int/2addr v2, v3

    .line 1634
    iget v3, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollThumbBgRectHeight:I

    add-int/2addr v3, v2

    goto :goto_2

    .line 1635
    :cond_5
    iget-object v4, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    sub-int/2addr v4, v5

    if-le v3, v4, :cond_6

    .line 1636
    iget-object v2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    sub-int v3, v2, v3

    .line 1637
    iget v2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollThumbBgRectHeight:I

    sub-int v2, v3, v2

    .line 1640
    :cond_6
    :goto_2
    iget-object v4, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollThumbBgRect:Landroid/graphics/Rect;

    if-nez v4, :cond_7

    .line 1641
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v1, v2, v0, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollThumbBgRect:Landroid/graphics/Rect;

    goto :goto_3

    .line 1643
    :cond_7
    iget-object v4, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollThumbBgRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v1, v2, v0, v3}, Landroid/graphics/Rect;->set(IIII)V

    :goto_3
    return-void
.end method

.method private calcDotPosition(Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;III)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1179
    iget v2, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    sub-int v2, v2, p2

    .line 1181
    iget v4, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    add-int v4, v4, p3

    move/from16 v5, p3

    :goto_0
    if-ge v5, v4, :cond_0

    .line 1186
    iget-object v6, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->alphabetArray:[Ljava/lang/String;

    sub-int v7, v5, p3

    iget-object v8, v0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    aget-object v8, v8, v5

    aput-object v8, v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    move/from16 v7, p2

    move/from16 v3, p4

    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 1193
    :goto_1
    iget v9, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    iget v10, v0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mContentMinHeight:F

    cmpg-float v9, v9, v10

    if-gez v9, :cond_19

    iget-object v9, v0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    array-length v9, v9

    if-lez v9, :cond_19

    sub-int v9, v2, v3

    .line 1195
    div-int/lit8 v10, v9, 0x2

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    .line 1198
    iget v12, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    if-ge v12, v10, :cond_a

    if-nez v6, :cond_a

    .line 1199
    iget v12, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    new-array v12, v12, [Ljava/lang/String;

    .line 1201
    iget v13, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    add-int/2addr v13, v11

    iput v13, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    .line 1202
    iget v13, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    sub-int/2addr v13, v11

    iput v13, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    add-int/lit8 v8, v8, 0x1

    .line 1205
    iget v13, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    add-int/2addr v13, v11

    div-int v13, v9, v13

    add-int/2addr v13, v11

    .line 1208
    iget v14, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    if-ne v14, v10, :cond_1

    const/4 v13, 0x2

    .line 1211
    :cond_1
    iget v10, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    const/4 v14, 0x0

    :goto_2
    if-eqz v10, :cond_9

    .line 1216
    iget v5, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    if-eq v10, v5, :cond_2

    .line 1217
    iget v10, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    :cond_2
    move/from16 v5, p3

    :goto_3
    if-ge v5, v4, :cond_3

    sub-int v15, v5, p3

    .line 1221
    iget-object v11, v0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    aget-object v11, v11, v5

    aput-object v11, v12, v15

    add-int/lit8 v5, v5, 0x1

    const/4 v11, 0x1

    goto :goto_3

    :cond_3
    const/4 v5, 0x1

    .line 1224
    :goto_4
    iget v11, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move/from16 v16, v2

    const/4 v2, 0x1

    add-int/2addr v11, v2

    if-ge v5, v11, :cond_8

    mul-int v11, v13, v5

    mul-int v15, v14, v5

    sub-int/2addr v11, v15

    if-le v7, v2, :cond_4

    add-int/lit8 v2, v7, -0x1

    add-int/2addr v11, v2

    :cond_4
    if-lez v11, :cond_5

    if-ge v11, v9, :cond_5

    const-string v2, "."

    .line 1232
    aput-object v2, v12, v11

    add-int/lit8 v10, v10, -0x1

    goto :goto_5

    :cond_5
    if-lt v11, v9, :cond_7

    if-lez v10, :cond_7

    .line 1235
    div-int/lit8 v2, v13, 0x2

    sub-int/2addr v11, v2

    if-ge v11, v9, :cond_6

    const-string v2, "."

    .line 1236
    aput-object v2, v12, v11

    add-int/lit8 v10, v10, -0x1

    goto :goto_5

    :cond_6
    const/4 v14, 0x1

    :cond_7
    :goto_5
    add-int/lit8 v5, v5, 0x1

    move/from16 v2, v16

    goto :goto_4

    :cond_8
    move/from16 v2, v16

    const/4 v11, 0x1

    goto :goto_2

    :cond_9
    move/from16 v16, v2

    .line 1244
    iput-object v12, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->alphabetArray:[Ljava/lang/String;

    goto/16 :goto_f

    :cond_a
    move/from16 v16, v2

    .line 1253
    iget v2, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    sub-int/2addr v2, v7

    sub-int/2addr v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1293
    iget v2, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    iget v5, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    sub-int/2addr v2, v5

    sub-int/2addr v2, v7

    sub-int/2addr v2, v3

    const/4 v5, 0x1

    if-ne v2, v5, :cond_f

    .line 1294
    iget v2, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    sub-int/2addr v2, v5

    iput v2, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    .line 1295
    iget v2, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    sub-int/2addr v2, v5

    iput v2, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    goto :goto_8

    .line 1255
    :pswitch_0
    iget v2, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    const/4 v5, 0x1

    sub-int/2addr v2, v5

    iput v2, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    .line 1256
    iget v2, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    sub-int/2addr v2, v5

    iput v2, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :pswitch_1
    const/4 v5, 0x1

    .line 1260
    iget v2, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    sub-int/2addr v2, v5

    iput v2, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    .line 1261
    iget v2, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    sub-int/2addr v2, v5

    iput v2, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    goto :goto_8

    :pswitch_2
    const/4 v5, 0x1

    if-eqz v7, :cond_b

    .line 1265
    iget v2, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    if-nez v2, :cond_b

    .line 1266
    iget v2, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    sub-int/2addr v2, v5

    iput v2, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    .line 1267
    iget v2, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    add-int/2addr v2, v5

    iput v2, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    goto :goto_7

    :cond_b
    if-eqz v7, :cond_c

    .line 1271
    iget v2, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    if-ne v2, v5, :cond_c

    .line 1272
    iget v2, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    sub-int/2addr v2, v5

    iput v2, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    .line 1273
    iget v2, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    sub-int/2addr v2, v5

    iput v2, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    goto :goto_6

    .line 1277
    :cond_c
    iget v2, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    sub-int/2addr v2, v5

    iput v2, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    .line 1278
    iget v2, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    sub-int/2addr v2, v5

    iput v2, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    :goto_6
    const/4 v5, 0x0

    :goto_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    :pswitch_3
    if-lez v3, :cond_d

    add-int/lit8 v3, v3, -0x1

    goto :goto_8

    :cond_d
    if-lez v7, :cond_e

    add-int/lit8 v7, v7, -0x1

    goto :goto_8

    :cond_e
    const/4 v5, 0x1

    :goto_8
    const/4 v5, 0x0

    goto :goto_9

    .line 1297
    :cond_f
    iget v2, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    sub-int/2addr v2, v5

    iput v2, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    .line 1298
    iget v2, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    sub-int/2addr v2, v5

    iput v2, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    .line 1304
    :goto_9
    iget v2, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    if-lez v2, :cond_18

    iget v2, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    if-ltz v2, :cond_18

    iget v2, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    if-gez v2, :cond_10

    goto/16 :goto_10

    .line 1309
    :cond_10
    iget v2, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    new-array v2, v2, [Ljava/lang/String;

    .line 1315
    iget v6, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    if-lez v6, :cond_11

    .line 1316
    iget v6, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    div-int v6, v8, v6

    .line 1317
    iget v9, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    rem-int v9, v8, v9

    goto :goto_a

    :cond_11
    const/4 v6, 0x0

    const/4 v9, 0x0

    :goto_a
    const/4 v10, 0x0

    :goto_b
    if-ge v10, v7, :cond_12

    .line 1321
    iget-object v11, v0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    aget-object v11, v11, v10

    aput-object v11, v2, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_b

    .line 1326
    :cond_12
    iget v10, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    sub-int/2addr v10, v3

    move v11, v5

    move v5, v7

    move v13, v9

    const/4 v12, 0x0

    move v9, v5

    :goto_c
    if-ge v5, v10, :cond_16

    .line 1329
    iget-object v14, v0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    array-length v14, v14

    sub-int/2addr v14, v3

    if-ge v9, v14, :cond_15

    if-nez v11, :cond_13

    .line 1331
    iget-object v14, v0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    add-int v15, v9, p3

    aget-object v14, v14, v15

    aput-object v14, v2, v5

    add-int/lit8 v9, v9, 0x1

    .line 1334
    iget v14, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    if-ge v12, v14, :cond_15

    const/4 v11, 0x1

    goto :goto_d

    :cond_13
    const-string v11, "."

    .line 1338
    aput-object v11, v2, v5

    add-int/lit8 v12, v12, 0x1

    add-int/2addr v9, v6

    if-lez v13, :cond_14

    add-int/lit8 v13, v13, -0x1

    add-int/lit8 v9, v9, 0x1

    :cond_14
    const/4 v11, 0x0

    :cond_15
    :goto_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    :cond_16
    if-lez v3, :cond_17

    .line 1353
    iget-object v5, v0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    iget-object v6, v0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    array-length v6, v6

    const/4 v9, 0x1

    sub-int/2addr v6, v9

    aget-object v5, v5, v6

    aput-object v5, v2, v10

    goto :goto_e

    :cond_17
    const/4 v9, 0x1

    .line 1356
    :goto_e
    iput-object v2, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->alphabetArray:[Ljava/lang/String;

    const/4 v6, 0x1

    .line 1358
    :goto_f
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->adjustSeparatorHeight()V

    move/from16 v2, v16

    goto/16 :goto_1

    .line 1305
    :cond_18
    :goto_10
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->adjustSeparatorHeight()V

    return-void

    :cond_19
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

.method private drawAlphabetCharacters(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1677
    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mTextColorDimmed:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1678
    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1679
    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v0, v0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    if-eqz v0, :cond_2

    .line 1680
    iget v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollTop:I

    iget v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollTopMargin:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    .line 1681
    iget-object v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    iget-object v2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v2, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    add-int/2addr v1, v2

    const/4 v2, 0x0

    move v3, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    .line 1686
    iget-object v4, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v4, v4, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    if-ge v0, v4, :cond_0

    .line 1687
    iget-object v4, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget-object v4, v4, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->alphabetArray:[Ljava/lang/String;

    aget-object v4, v4, v0

    .line 1688
    iget-object v5, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v5, v5, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    goto :goto_1

    .line 1690
    :cond_0
    iget-object v4, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget-object v4, v4, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->alphabetArray:[Ljava/lang/String;

    iget-object v5, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v5, v5, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    sub-int v5, v0, v5

    aget-object v4, v4, v5

    .line 1691
    iget-object v5, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v5, v5, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    .line 1693
    :goto_1
    iget-object v6, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    iget-object v8, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v6, v4, v2, v7, v8}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 1694
    iget-object v6, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    .line 1695
    iget-object v7, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float v6, v6, v8

    sub-float/2addr v7, v6

    const-string v6, "."

    .line 1698
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1699
    iget v5, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mDotHeight:I

    int-to-float v5, v5

    mul-float v5, v5, v8

    iget-object v6, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mTextBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    mul-float v6, v6, v8

    sub-float/2addr v5, v6

    add-float/2addr v5, v3

    .line 1700
    iget v6, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mDotHeight:I

    int-to-float v6, v6

    add-float/2addr v3, v6

    goto :goto_2

    :cond_1
    mul-float v6, v5, v8

    .line 1702
    iget-object v9, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mTextBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    mul-float v9, v9, v8

    sub-float/2addr v6, v9

    add-float/2addr v6, v3

    add-float/2addr v3, v5

    move v5, v6

    .line 1705
    :goto_2
    iget-object v6, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v7, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private drawBgRectangle(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1652
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mBgRectParamsSet:Z

    if-nez v0, :cond_0

    .line 1653
    invoke-direct {p0}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->setBgRectParams()V

    const/4 v0, 0x1

    .line 1654
    iput-boolean v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mBgRectParamsSet:Z

    .line 1656
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1657
    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->this$0:Landroid/support/v7/widget/SeslIndexScrollView;

    invoke-static {v0}, Landroid/support/v7/widget/SeslIndexScrollView;->access$1000(Landroid/support/v7/widget/SeslIndexScrollView;)F

    move-result v0

    const v1, -0x39e3c400    # -9999.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 1658
    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollThumbBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method private getColorWithAlpha(IF)I
    .locals 2

    .line 1040
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 1041
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    .line 1042
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 1043
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    .line 1045
    invoke-static {p2, v0, v1, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    return p1
.end method

.method private getIndex(I)I
    .locals 4

    .line 1436
    iget v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetSize:I

    iget v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    int-to-float v1, p1

    .line 1439
    iget v2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollTop:I

    iget v3, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollTopMargin:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, v3, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    add-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 1440
    iget-object v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    div-float/2addr v1, v0

    .line 1441
    iget v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollTop:I

    sub-int/2addr p1, v0

    iget v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollTopMargin:I

    sub-int/2addr p1, v0

    int-to-float p1, p1

    div-float/2addr p1, v1

    float-to-int p1, p1

    goto :goto_0

    .line 1443
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    iget v2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 1444
    iget v2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollTop:I

    sub-int/2addr p1, v2

    iget v2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollTopMargin:I

    sub-int/2addr p1, v2

    int-to-float p1, p1

    iget-object v2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v2, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    sub-float/2addr p1, v2

    div-float/2addr p1, v1

    float-to-int p1, p1

    int-to-float p1, p1

    add-float/2addr p1, v0

    float-to-int p1, p1

    :goto_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    .line 1450
    :cond_1
    iget v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    if-lt p1, v0, :cond_2

    .line 1451
    iget p1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    add-int/lit8 p1, p1, -0x1

    :cond_2
    :goto_1
    return p1
.end method

.method private getIndexByY(I)Ljava/lang/String;
    .locals 2

    .line 1467
    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAdditionalSpace:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_8

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAdditionalSpace:I

    add-int/2addr v0, v1

    if-lt p1, v0, :cond_0

    goto :goto_2

    .line 1469
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-ge p1, v0, :cond_1

    const/4 p1, 0x0

    .line 1470
    iput p1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSelectedIndex:I

    goto :goto_0

    .line 1471
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-le p1, v0, :cond_2

    .line 1472
    iget p1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSelectedIndex:I

    goto :goto_0

    .line 1474
    :cond_2
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->getIndex(I)I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSelectedIndex:I

    .line 1476
    iget p1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    if-ne p1, v0, :cond_3

    .line 1477
    iget p1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSelectedIndex:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSelectedIndex:I

    .line 1482
    :cond_3
    :goto_0
    iget p1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    if-eq p1, v0, :cond_4

    iget p1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    add-int/lit8 v0, v0, 0x1

    if-ne p1, v0, :cond_5

    .line 1483
    :cond_4
    iget p1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSelectedIndex:I

    .line 1486
    :cond_5
    iget-object p1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    if-eqz p1, :cond_7

    iget p1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSelectedIndex:I

    const/4 v0, -0x1

    if-le p1, v0, :cond_7

    iget p1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    if-le p1, v0, :cond_6

    goto :goto_1

    .line 1489
    :cond_6
    iget-object p1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    iget v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSelectedIndex:I

    aget-object p1, p1, v0

    return-object p1

    :cond_7
    :goto_1
    const-string p1, ""

    return-object p1

    :cond_8
    :goto_2
    const-string p1, ""

    return-object p1
.end method

.method private init()V
    .locals 13

    .line 976
    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 977
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    .line 978
    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 980
    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->this$0:Landroid/support/v7/widget/SeslIndexScrollView;

    invoke-static {v0}, Landroid/support/v7/widget/SeslIndexScrollView;->access$500(Landroid/support/v7/widget/SeslIndexScrollView;)Landroid/graphics/Typeface;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 981
    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->this$0:Landroid/support/v7/widget/SeslIndexScrollView;

    const-string v2, "sec-roboto-light"

    invoke-static {v2, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/support/v7/widget/SeslIndexScrollView;->access$502(Landroid/support/v7/widget/SeslIndexScrollView;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 984
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->this$0:Landroid/support/v7/widget/SeslIndexScrollView;

    invoke-static {v2}, Landroid/support/v7/widget/SeslIndexScrollView;->access$500(Landroid/support/v7/widget/SeslIndexScrollView;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 987
    iput v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollTopMargin:I

    .line 988
    iput v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollBottomMargin:I

    .line 990
    iput v8, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mItemWidth:I

    .line 991
    iput v8, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mItemWidthGap:I

    .line 993
    sget v0, Landroid/support/v7/appcompat/R$dimen;->sesl_indexbar_width:I

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mBgRectWidth:I

    .line 994
    sget v0, Landroid/support/v7/appcompat/R$dimen;->sesl_indexbar_text_size:I

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mTextSize:I

    .line 995
    sget v0, Landroid/support/v7/appcompat/R$dimen;->sesl_indexbar_margin_top:I

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollTop:I

    .line 996
    sget v0, Landroid/support/v7/appcompat/R$dimen;->sesl_indexbar_margin_bottom:I

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollBottom:I

    .line 997
    sget v0, Landroid/support/v7/appcompat/R$dimen;->sesl_indexbar_margin_horizontal:I

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mWidthShift:I

    .line 998
    sget v0, Landroid/support/v7/appcompat/R$dimen;->sesl_indexbar_content_padding:I

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mContentPadding:I

    .line 999
    sget v0, Landroid/support/v7/appcompat/R$dimen;->sesl_indexbar_content_min_height:I

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mContentMinHeight:F

    .line 1000
    sget v0, Landroid/support/v7/appcompat/R$dimen;->sesl_indexbar_additional_touch_boundary:I

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAdditionalSpace:I

    .line 1001
    sget v0, Landroid/support/v7/appcompat/R$dimen;->sesl_index_scroll_preview_radius:I

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mIndexScrollPreviewRadius:F

    .line 1002
    sget v0, Landroid/support/v7/appcompat/R$dimen;->sesl_index_scroll_preview_ypos_limit:I

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mPreviewLimitY:F

    .line 1004
    new-instance v9, Landroid/util/TypedValue;

    invoke-direct {v9}, Landroid/util/TypedValue;-><init>()V

    .line 1005
    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v10

    .line 1006
    sget v0, Landroid/support/v7/appcompat/R$attr;->colorPrimary:I

    invoke-virtual {v10, v0, v9, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1007
    iget v0, v9, Landroid/util/TypedValue;->resourceId:I

    const/4 v1, 0x0

    invoke-static {v7, v0, v1}, Landroid/support/v4/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v11

    .line 1009
    new-instance v12, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v12

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;-><init>(Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;IIIFF)V

    iput-object v12, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    .line 1010
    new-instance v12, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    move-object v0, v12

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;-><init>(Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;IIIFF)V

    iput-object v12, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    .line 1011
    sget v0, Landroid/support/v7/appcompat/R$dimen;->sesl_indexbar_thumb_padding:I

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    .line 1012
    sget v0, Landroid/support/v7/appcompat/R$dimen;->sesl_indexbar_thumb_additional_height:I

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollThumbAdditionalHeight:I

    .line 1013
    sget v0, Landroid/support/v7/appcompat/R$dimen;->sesl_indexbar_dot_separator_height:I

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mDotHeight:I

    .line 1014
    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->this$0:Landroid/support/v7/widget/SeslIndexScrollView;

    invoke-static {v0}, Landroid/support/v7/widget/SeslIndexScrollView;->access$600(Landroid/support/v7/widget/SeslIndexScrollView;)Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;

    move-result-object v0

    const v1, 0x3f4ccccd    # 0.8f

    invoke-direct {p0, v11, v1}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->getColorWithAlpha(IF)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->setBackgroundColor(I)V

    .line 1016
    sget v0, Landroid/support/v7/appcompat/R$drawable;->sesl_index_bar_thumb_shape:I

    iget-object v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->this$0:Landroid/support/v7/widget/SeslIndexScrollView;

    invoke-virtual {v1}, Landroid/support/v7/widget/SeslIndexScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollThumbBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 1017
    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollThumbBgDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v11, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1018
    iput v11, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mThumbColor:I

    .line 1020
    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v1, Landroid/support/v7/appcompat/R$attr;->isLightTheme:I

    invoke-virtual {v0, v1, v9, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1021
    iget v0, v9, Landroid/util/TypedValue;->data:I

    if-eqz v0, :cond_1

    .line 1022
    sget v0, Landroid/support/v7/appcompat/R$color;->sesl_index_bar_text_color:I

    invoke-static {v7, v0, v10}, Landroid/support/v4/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mTextColorDimmed:I

    .line 1023
    sget v0, Landroid/support/v7/appcompat/R$color;->sesl_index_bar_background_tint_color:I

    invoke-static {v7, v0, v10}, Landroid/support/v4/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mBgTintColor:I

    goto :goto_0

    .line 1025
    :cond_1
    sget v0, Landroid/support/v7/appcompat/R$color;->sesl_index_bar_text_color_dark:I

    invoke-static {v7, v0, v10}, Landroid/support/v4/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mTextColorDimmed:I

    .line 1026
    sget v0, Landroid/support/v7/appcompat/R$color;->sesl_index_bar_background_tint_color_dark:I

    invoke-static {v7, v0, v10}, Landroid/support/v4/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mBgTintColor:I

    .line 1028
    :goto_0
    sget v0, Landroid/support/v7/appcompat/R$drawable;->sesl_index_bar_bg:I

    invoke-virtual {v7, v0, v10}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 1029
    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mBgTintColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1031
    invoke-direct {p0}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->setBgRectParams()V

    return-void
.end method

.method private isInSelectedIndexRect(I)Z
    .locals 5

    .line 1500
    iget v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSelectedIndex:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    iget v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget v2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    if-lt v0, v2, :cond_0

    goto :goto_0

    .line 1503
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollTop:I

    iget v2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollTopMargin:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSeparatorHeight:F

    iget v3, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSelectedIndex:I

    int-to-float v3, v3

    mul-float v2, v2, v3

    add-float/2addr v0, v2

    float-to-int v0, v0

    const/4 v2, 0x1

    if-lt p1, v0, :cond_1

    iget v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollTop:I

    iget v3, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollTopMargin:I

    add-int/2addr v0, v3

    int-to-float v0, v0

    iget v3, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSeparatorHeight:F

    iget v4, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSelectedIndex:I

    add-int/2addr v4, v2

    int-to-float v4, v4

    mul-float v3, v3, v4

    add-float/2addr v0, v3

    float-to-int v0, v0

    if-gt p1, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    :goto_0
    return v1
.end method

.method private manageIndexScrollHeight()V
    .locals 5

    .line 1119
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mIsAlphabetInit:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->this$0:Landroid/support/v7/widget/SeslIndexScrollView;

    invoke-static {v0}, Landroid/support/v7/widget/SeslIndexScrollView;->access$700(Landroid/support/v7/widget/SeslIndexScrollView;)I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    goto/16 :goto_2

    .line 1124
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 1125
    iput v2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    .line 1128
    :cond_1
    iget v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    if-ne v0, v1, :cond_2

    .line 1129
    iput v2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    .line 1133
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetSize:I

    iget v3, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    .line 1134
    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget-object v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    iput v1, v0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    .line 1135
    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget-object v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, v0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->alphabetArray:[Ljava/lang/String;

    .line 1136
    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iput v2, v0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    .line 1137
    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetSize:I

    iget-object v3, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, v3, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    .line 1138
    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget-object v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    iput v1, v0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    .line 1139
    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget-object v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, v0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->alphabetArray:[Ljava/lang/String;

    .line 1140
    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iput v2, v0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    .line 1142
    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget-object v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    int-to-float v1, v1

    iget v3, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mContentMinHeight:F

    mul-float v1, v1, v3

    iput v1, v0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    .line 1143
    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v1, v1

    iget-object v3, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, v3, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    sub-float/2addr v1, v3

    iput v1, v0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    .line 1145
    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    iput-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    .line 1146
    iget v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetSize:I

    iput v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    .line 1148
    invoke-direct {p0}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->adjustSeparatorHeight()V

    .line 1153
    iget v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    const/4 v1, 0x1

    if-lez v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->this$0:Landroid/support/v7/widget/SeslIndexScrollView;

    invoke-static {v0}, Landroid/support/v7/widget/SeslIndexScrollView;->access$800(Landroid/support/v7/widget/SeslIndexScrollView;)Landroid/support/v7/widget/SeslAbsIndexer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslAbsIndexer;->isUseDigitIndex()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 1159
    :goto_0
    iget-object v3, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->this$0:Landroid/support/v7/widget/SeslIndexScrollView;

    invoke-static {v3}, Landroid/support/v7/widget/SeslIndexScrollView;->access$700(Landroid/support/v7/widget/SeslIndexScrollView;)I

    move-result v3

    if-ne v3, v1, :cond_4

    .line 1160
    iget-object v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    invoke-direct {p0, v1, v3, v2, v0}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->calcDotPosition(Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;III)V

    goto :goto_1

    .line 1162
    :cond_4
    iget-object v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    invoke-direct {p0, v1, v3, v2, v2}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->calcDotPosition(Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;III)V

    .line 1163
    iget-object v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetSize:I

    iget v4, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    sub-int/2addr v3, v4

    invoke-direct {p0, v1, v2, v3, v0}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->calcDotPosition(Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;III)V

    :goto_1
    return-void

    :cond_5
    :goto_2
    return-void
.end method

.method private setBgRectParams()V
    .locals 2

    .line 1667
    invoke-direct {p0}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->allocateBgRectangle()V

    .line 1668
    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1669
    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollThumbBgDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollThumbBgRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1521
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mIsAlphabetInit:Z

    if-nez v0, :cond_0

    return-void

    .line 1524
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->drawScroll(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public drawEffect(F)V
    .locals 5

    .line 1557
    iget v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSelectedIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    .line 1558
    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    iget v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSelectedIndex:I

    aget-object v0, v0, v1

    iput-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSmallText:Ljava/lang/String;

    .line 1559
    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSmallText:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSmallText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 1567
    iget v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScreenHeight:I

    int-to-float v0, v0

    iget v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mIndexScrollPreviewRadius:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v1, v1, v2

    iget v2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mPreviewLimitY:F

    add-float/2addr v1, v2

    iget v2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollTopMargin:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollBottomMargin:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 1568
    iget v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollTop:I

    iget v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollTopMargin:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    .line 1569
    iget v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollTop:I

    iget v3, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollTopMargin:I

    add-int/2addr v1, v3

    iget v3, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollBottomMargin:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iget-object v3, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, v3, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    add-float/2addr v1, v3

    iget-object v3, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, v3, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    add-float/2addr v1, v3

    iget-object v3, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, v3, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    mul-float v3, v3, v2

    sub-float/2addr v1, v3

    goto :goto_0

    .line 1571
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollTopMargin:I

    int-to-float v0, v0

    iget v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mPreviewLimitY:F

    add-float/2addr v0, v1

    iget v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mIndexScrollPreviewRadius:F

    add-float/2addr v0, v1

    .line 1572
    iget v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScreenHeight:I

    iget v2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollBottomMargin:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mPreviewLimitY:F

    sub-float/2addr v1, v2

    iget v2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mIndexScrollPreviewRadius:F

    sub-float/2addr v1, v2

    :goto_0
    const v2, -0x39e3c400    # -9999.0f

    cmpl-float v3, p1, v0

    if-lez v3, :cond_1

    cmpg-float v3, p1, v1

    if-gez v3, :cond_1

    goto :goto_1

    :cond_1
    cmpg-float v3, p1, v0

    if-gtz v3, :cond_2

    move p1, v0

    goto :goto_1

    :cond_2
    cmpl-float p1, p1, v1

    if-ltz p1, :cond_3

    move p1, v1

    goto :goto_1

    :cond_3
    const p1, -0x39e3c400    # -9999.0f

    :goto_1
    cmpl-float v0, p1, v2

    if-eqz v0, :cond_4

    .line 1589
    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->this$0:Landroid/support/v7/widget/SeslIndexScrollView;

    invoke-static {v0}, Landroid/support/v7/widget/SeslIndexScrollView;->access$600(Landroid/support/v7/widget/SeslIndexScrollView;)Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mBigText:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->open(FLjava/lang/String;)V

    .line 1591
    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->this$0:Landroid/support/v7/widget/SeslIndexScrollView;

    invoke-static {v0}, Landroid/support/v7/widget/SeslIndexScrollView;->access$900(Landroid/support/v7/widget/SeslIndexScrollView;)Landroid/support/v7/widget/SeslIndexScrollView$OnIndexBarEventListener;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1592
    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->this$0:Landroid/support/v7/widget/SeslIndexScrollView;

    invoke-static {v0}, Landroid/support/v7/widget/SeslIndexScrollView;->access$900(Landroid/support/v7/widget/SeslIndexScrollView;)Landroid/support/v7/widget/SeslIndexScrollView$OnIndexBarEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/v7/widget/SeslIndexScrollView$OnIndexBarEventListener;->onPressed(F)V

    :cond_4
    return-void
.end method

.method public drawScroll(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1533
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->drawBgRectangle(Landroid/graphics/Canvas;)V

    .line 1534
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->drawAlphabetCharacters(Landroid/graphics/Canvas;)V

    .line 1535
    iget p1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSelectedIndex:I

    if-ltz p1, :cond_0

    iget p1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetSize:I

    if-lt p1, v0, :cond_1

    .line 1536
    :cond_0
    iget-object p1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->this$0:Landroid/support/v7/widget/SeslIndexScrollView;

    invoke-static {p1}, Landroid/support/v7/widget/SeslIndexScrollView;->access$600(Landroid/support/v7/widget/SeslIndexScrollView;)Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1537
    iget-object p1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->this$0:Landroid/support/v7/widget/SeslIndexScrollView;

    invoke-static {p1}, Landroid/support/v7/widget/SeslIndexScrollView;->access$600(Landroid/support/v7/widget/SeslIndexScrollView;)Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->close()V

    :cond_1
    return-void
.end method

.method public getHeight()I
    .locals 1

    .line 911
    iget v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mHeight:I

    return v0
.end method

.method public getIndexByPosition(II)Ljava/lang/String;
    .locals 3

    .line 1389
    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 1393
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mIsAlphabetInit:Z

    if-nez v0, :cond_1

    const-string p1, ""

    return-object p1

    .line 1396
    :cond_1
    iget v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mPosition:I

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAdditionalSpace:I

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_3

    :cond_2
    iget v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mPosition:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAdditionalSpace:I

    add-int/2addr v0, v2

    if-le p1, v0, :cond_4

    :cond_3
    const-string p1, ""

    return-object p1

    .line 1399
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAdditionalSpace:I

    sub-int/2addr v0, v2

    if-lt p1, v0, :cond_8

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAdditionalSpace:I

    add-int/2addr v0, v2

    if-gt p1, v0, :cond_8

    .line 1401
    invoke-direct {p0, p2}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->isInSelectedIndexRect(I)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1403
    iget-object p1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    if-eqz p1, :cond_6

    iget p1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSelectedIndex:I

    if-ltz p1, :cond_6

    iget p1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_5

    goto :goto_0

    .line 1406
    :cond_5
    invoke-direct {p0, p2}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->getIndexByY(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_6
    :goto_0
    const-string p1, ""

    return-object p1

    .line 1408
    :cond_7
    invoke-direct {p0, p2}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->getIndexByY(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1411
    :cond_8
    iget v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mPosition:I

    if-nez v0, :cond_9

    iget v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mWidthShift:I

    iget v2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mItemWidth:I

    add-int/2addr v0, v2

    iget v2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mItemWidthGap:I

    add-int/2addr v0, v2

    if-ge p1, v0, :cond_a

    :cond_9
    iget v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mPosition:I

    if-ne v0, v1, :cond_b

    iget v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mWidth:I

    iget v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mWidthShift:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mItemWidth:I

    iget v2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mItemWidthGap:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_b

    :cond_a
    const/4 p1, 0x0

    return-object p1

    .line 1415
    :cond_b
    invoke-direct {p0, p2}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->isInSelectedIndexRect(I)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 1417
    iget-object p1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    if-eqz p1, :cond_d

    iget p1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSelectedIndex:I

    if-ltz p1, :cond_d

    iget p1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget-object p2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    array-length p2, p2

    if-lt p1, p2, :cond_c

    goto :goto_1

    .line 1420
    :cond_c
    iget-object p1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    iget p2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSelectedIndex:I

    aget-object p1, p1, p2

    return-object p1

    :cond_d
    :goto_1
    const-string p1, ""

    return-object p1

    .line 1422
    :cond_e
    invoke-direct {p0, p2}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->getIndexByY(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPosition()I
    .locals 1

    .line 889
    iget v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mPosition:I

    return v0
.end method

.method public getSelectedIndex()I
    .locals 1

    .line 903
    iget v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSelectedIndex:I

    return v0
.end method

.method public isAlphabetInit()Z
    .locals 1

    .line 881
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mIsAlphabetInit:Z

    return v0
.end method

.method public resetSelectedIndex()V
    .locals 1

    const/4 v0, -0x1

    .line 1512
    iput v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSelectedIndex:I

    return-void
.end method

.method public setAlphabetArray([Ljava/lang/String;II)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 1059
    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    .line 1060
    iget-object p1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    array-length p1, p1

    iput p1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetSize:I

    .line 1061
    iput p2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    .line 1062
    iput p3, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    .line 1066
    iget p1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mHeight:I

    int-to-float p1, p1

    iget p2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetSize:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    iput p1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mItemHeight:F

    .line 1067
    iget p1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mItemHeight:F

    iget p2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mContentMinHeight:F

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSeparatorHeight:F

    const/4 p1, 0x1

    .line 1069
    iput-boolean p1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mIsAlphabetInit:Z

    return-void
.end method

.method public setDimensions(II)V
    .locals 1

    .line 954
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mIsAlphabetInit:Z

    if-nez v0, :cond_0

    return-void

    .line 958
    :cond_0
    iput p1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mWidth:I

    .line 959
    iget p1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollTop:I

    iget v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollBottom:I

    add-int/2addr p1, v0

    iget v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollTopMargin:I

    add-int/2addr p1, v0

    iget v0, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollBottomMargin:I

    add-int/2addr p1, v0

    sub-int p1, p2, p1

    iput p1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mHeight:I

    .line 961
    iput p2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScreenHeight:I

    .line 962
    iget p1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mHeight:I

    int-to-float p1, p1

    iget p2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mAlphabetSize:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    iput p1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mItemHeight:F

    .line 963
    iget p1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mItemHeight:F

    iget p2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mContentMinHeight:F

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSeparatorHeight:F

    .line 964
    invoke-direct {p0}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->setBgRectParams()V

    .line 965
    iget-object p1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    if-eqz p1, :cond_1

    .line 966
    iget-object p1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mFirstLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget p2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mContentMinHeight:F

    iput p2, p1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    .line 967
    iget-object p1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mSecondLang:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;

    iget p2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mContentMinHeight:F

    iput p2, p1, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    .line 968
    invoke-direct {p0}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->manageIndexScrollHeight()V

    :cond_1
    return-void
.end method

.method public setEffectText(Ljava/lang/String;)V
    .locals 0

    .line 1549
    iput-object p1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mBigText:Ljava/lang/String;

    return-void
.end method

.method public setIndexScrollBgMargin(II)V
    .locals 0

    .line 935
    iput p1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollTopMargin:I

    .line 936
    iput p2, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mScrollBottomMargin:I

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    .line 944
    iput p1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mPosition:I

    .line 945
    invoke-direct {p0}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->setBgRectParams()V

    return-void
.end method

.method public setSimpleIndexScrollWidth(I)V
    .locals 0

    if-gtz p1, :cond_0

    return-void

    .line 924
    :cond_0
    iput p1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mItemWidth:I

    .line 925
    iput p1, p0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->mBgRectWidth:I

    .line 926
    invoke-direct {p0}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->allocateBgRectangle()V

    return-void
.end method
