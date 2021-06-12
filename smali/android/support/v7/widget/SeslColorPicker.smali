.class public Landroid/support/v7/widget/SeslColorPicker;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/SeslColorPicker$PickedColor;,
        Landroid/support/v7/widget/SeslColorPicker$OnColorChangedListener;
    }
.end annotation


# static fields
.field private static final OPACITY_BAR_ENABLED_MARGIN_TOP:I = 0x6

.field static final RECENT_COLOR_SLOT_COUNT:I = 0x6

.field private static final RIPPLE_EFFECT_OPACITY:I = 0x3d

.field private static final TAG:Ljava/lang/String; = "SeslColorPicker"

.field static sIsLightTheme:Z


# instance fields
.field private mColorDescription:[Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mCurrentColorView:Landroid/widget/ImageView;

.field private mGradientColorSeekBar:Landroid/support/v7/widget/SeslGradientColorSeekBar;

.field private mGradientColorWheel:Landroid/support/v7/widget/SeslGradientColorWheel;

.field private final mImageButtonClickListener:Landroid/view/View$OnClickListener;

.field private mIsInputFromUser:Z

.field private mIsOpacityBarEnabled:Z

.field private mOnColorChangedListener:Landroid/support/v7/widget/SeslColorPicker$OnColorChangedListener;

.field private mOpacitySeekBar:Landroid/support/v7/widget/SeslOpacitySeekBar;

.field private mOpacitySeekBarContainer:Landroid/widget/FrameLayout;

.field private mPickedColor:Landroid/support/v7/widget/SeslColorPicker$PickedColor;

.field private mPickedColorView:Landroid/widget/ImageView;

.field private final mRecentColorInfo:Landroid/support/v7/widget/SeslRecentColorInfo;

.field private mRecentColorListLayout:Landroid/widget/LinearLayout;

.field private final mRecentColorValues:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mResources:Landroid/content/res/Resources;

.field private mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 95
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 44
    iput-boolean p2, p0, Landroid/support/v7/widget/SeslColorPicker;->mIsInputFromUser:Z

    .line 45
    iput-boolean p2, p0, Landroid/support/v7/widget/SeslColorPicker;->mIsOpacityBarEnabled:Z

    const/4 v0, 0x0

    .line 90
    iput-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->mColorDescription:[Ljava/lang/String;

    .line 400
    new-instance v0, Landroid/support/v7/widget/SeslColorPicker$6;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/SeslColorPicker$6;-><init>(Landroid/support/v7/widget/SeslColorPicker;)V

    iput-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->mImageButtonClickListener:Landroid/view/View$OnClickListener;

    .line 97
    iput-object p1, p0, Landroid/support/v7/widget/SeslColorPicker;->mContext:Landroid/content/Context;

    .line 98
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslColorPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    .line 100
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Landroid/support/v7/appcompat/R$attr;->isLightTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 102
    iget v0, v0, Landroid/util/TypedValue;->data:I

    if-eqz v0, :cond_0

    const/4 p2, 0x1

    :cond_0
    sput-boolean p2, Landroid/support/v7/widget/SeslColorPicker;->sIsLightTheme:Z

    .line 104
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Landroid/support/v7/appcompat/R$layout;->sesl_color_picker_layout:I

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 105
    new-instance p1, Landroid/support/v7/widget/SeslRecentColorInfo;

    invoke-direct {p1}, Landroid/support/v7/widget/SeslRecentColorInfo;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/SeslColorPicker;->mRecentColorInfo:Landroid/support/v7/widget/SeslRecentColorInfo;

    .line 107
    iget-object p1, p0, Landroid/support/v7/widget/SeslColorPicker;->mRecentColorInfo:Landroid/support/v7/widget/SeslRecentColorInfo;

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslRecentColorInfo;->getRecentColorInfo()Ljava/util/LinkedList;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/SeslColorPicker;->mRecentColorValues:Ljava/util/LinkedList;

    .line 109
    invoke-direct {p0}, Landroid/support/v7/widget/SeslColorPicker;->init()V

    return-void
.end method

.method static synthetic access$002(Landroid/support/v7/widget/SeslColorPicker;Z)Z
    .locals 0

    .line 33
    iput-boolean p1, p0, Landroid/support/v7/widget/SeslColorPicker;->mIsInputFromUser:Z

    return p1
.end method

.method static synthetic access$100(Landroid/support/v7/widget/SeslColorPicker;)Landroid/support/v7/widget/SeslColorPicker$PickedColor;
    .locals 0

    .line 33
    iget-object p0, p0, Landroid/support/v7/widget/SeslColorPicker;->mPickedColor:Landroid/support/v7/widget/SeslColorPicker$PickedColor;

    return-object p0
.end method

.method static synthetic access$200(Landroid/support/v7/widget/SeslColorPicker;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroid/support/v7/widget/SeslColorPicker;->updateCurrentColor()V

    return-void
.end method

.method static synthetic access$300(Landroid/support/v7/widget/SeslColorPicker;)Landroid/graphics/drawable/GradientDrawable;
    .locals 0

    .line 33
    iget-object p0, p0, Landroid/support/v7/widget/SeslColorPicker;->mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;

    return-object p0
.end method

.method static synthetic access$400(Landroid/support/v7/widget/SeslColorPicker;)Landroid/support/v7/widget/SeslOpacitySeekBar;
    .locals 0

    .line 33
    iget-object p0, p0, Landroid/support/v7/widget/SeslColorPicker;->mOpacitySeekBar:Landroid/support/v7/widget/SeslOpacitySeekBar;

    return-object p0
.end method

.method static synthetic access$500(Landroid/support/v7/widget/SeslColorPicker;)Landroid/support/v7/widget/SeslColorPicker$OnColorChangedListener;
    .locals 0

    .line 33
    iget-object p0, p0, Landroid/support/v7/widget/SeslColorPicker;->mOnColorChangedListener:Landroid/support/v7/widget/SeslColorPicker$OnColorChangedListener;

    return-object p0
.end method

.method static synthetic access$600(Landroid/support/v7/widget/SeslColorPicker;)Landroid/support/v7/widget/SeslGradientColorSeekBar;
    .locals 0

    .line 33
    iget-object p0, p0, Landroid/support/v7/widget/SeslColorPicker;->mGradientColorSeekBar:Landroid/support/v7/widget/SeslGradientColorSeekBar;

    return-object p0
.end method

.method static synthetic access$700(Landroid/support/v7/widget/SeslColorPicker;)Ljava/util/LinkedList;
    .locals 0

    .line 33
    iget-object p0, p0, Landroid/support/v7/widget/SeslColorPicker;->mRecentColorValues:Ljava/util/LinkedList;

    return-object p0
.end method

.method static synthetic access$800(Landroid/support/v7/widget/SeslColorPicker;)Landroid/widget/LinearLayout;
    .locals 0

    .line 33
    iget-object p0, p0, Landroid/support/v7/widget/SeslColorPicker;->mRecentColorListLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$900(Landroid/support/v7/widget/SeslColorPicker;I)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslColorPicker;->mapColorOnColorWheel(I)V

    return-void
.end method

.method private init()V
    .locals 1

    .line 113
    new-instance v0, Landroid/support/v7/widget/SeslColorPicker$PickedColor;

    invoke-direct {v0}, Landroid/support/v7/widget/SeslColorPicker$PickedColor;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->mPickedColor:Landroid/support/v7/widget/SeslColorPicker$PickedColor;

    .line 115
    invoke-direct {p0}, Landroid/support/v7/widget/SeslColorPicker;->initCurrentColorView()V

    .line 116
    invoke-direct {p0}, Landroid/support/v7/widget/SeslColorPicker;->initGradientColorSeekBar()V

    .line 117
    invoke-direct {p0}, Landroid/support/v7/widget/SeslColorPicker;->initOpacitySeekBar()V

    .line 118
    invoke-direct {p0}, Landroid/support/v7/widget/SeslColorPicker;->initGradientColorWheel()V

    .line 119
    invoke-direct {p0}, Landroid/support/v7/widget/SeslColorPicker;->initRecentColorLayout()V

    .line 121
    invoke-direct {p0}, Landroid/support/v7/widget/SeslColorPicker;->updateCurrentColor()V

    .line 122
    invoke-direct {p0}, Landroid/support/v7/widget/SeslColorPicker;->setInitialColors()V

    return-void
.end method

.method private initCurrentColorView()V
    .locals 9

    .line 126
    sget v0, Landroid/support/v7/appcompat/R$id;->sesl_color_picker_current_color_view:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslColorPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->mCurrentColorView:Landroid/widget/ImageView;

    .line 127
    sget v0, Landroid/support/v7/appcompat/R$id;->sesl_color_picker_picked_color_view:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslColorPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->mPickedColorView:Landroid/widget/ImageView;

    .line 129
    sget v0, Landroid/support/v7/appcompat/R$id;->sesl_color_picker_current_color_text:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslColorPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 130
    sget v1, Landroid/support/v7/appcompat/R$id;->sesl_color_picker_picked_color_text:I

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/SeslColorPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 134
    iget-object v2, p0, Landroid/support/v7/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->fontScale:F

    .line 136
    iget-object v3, p0, Landroid/support/v7/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    sget v4, Landroid/support/v7/appcompat/R$dimen;->sesl_color_picker_selected_color_text_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    const v4, 0x3f99999a    # 1.2f

    cmpl-float v5, v2, v4

    if-lez v5, :cond_0

    int-to-float v3, v3

    div-float/2addr v3, v2

    float-to-double v2, v3

    .line 141
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    float-to-double v7, v4

    mul-double v5, v5, v7

    .line 140
    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 143
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    mul-double v2, v2, v7

    .line 142
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-float v0, v2

    invoke-virtual {v1, v5, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 146
    :cond_0
    sget v0, Landroid/support/v7/appcompat/R$id;->sesl_color_picker_current_color_focus:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslColorPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 147
    sget v1, Landroid/support/v7/appcompat/R$id;->sesl_color_picker_picked_color_focus:I

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/SeslColorPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 149
    iget-object v2, p0, Landroid/support/v7/widget/SeslColorPicker;->mPickedColorView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    iput-object v2, p0, Landroid/support/v7/widget/SeslColorPicker;->mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;

    .line 150
    iget-object v2, p0, Landroid/support/v7/widget/SeslColorPicker;->mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;

    iget-object v3, p0, Landroid/support/v7/widget/SeslColorPicker;->mPickedColor:Landroid/support/v7/widget/SeslColorPicker$PickedColor;

    invoke-virtual {v3}, Landroid/support/v7/widget/SeslColorPicker$PickedColor;->getColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 152
    iget-object v2, p0, Landroid/support/v7/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    sget v3, Landroid/support/v7/appcompat/R$string;->sesl_color_picker_current:I

    .line 153
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 152
    invoke-virtual {v0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    sget v2, Landroid/support/v7/appcompat/R$string;->sesl_color_picker_new:I

    .line 155
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 154
    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initGradientColorSeekBar()V
    .locals 4

    .line 178
    sget v0, Landroid/support/v7/appcompat/R$id;->sesl_color_picker_gradient_seekbar:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslColorPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SeslGradientColorSeekBar;

    iput-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->mGradientColorSeekBar:Landroid/support/v7/widget/SeslGradientColorSeekBar;

    .line 179
    sget v0, Landroid/support/v7/appcompat/R$id;->sesl_color_picker_gradient_seekbar_container:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslColorPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 182
    iget-object v1, p0, Landroid/support/v7/widget/SeslColorPicker;->mGradientColorSeekBar:Landroid/support/v7/widget/SeslGradientColorSeekBar;

    iget-object v2, p0, Landroid/support/v7/widget/SeslColorPicker;->mPickedColor:Landroid/support/v7/widget/SeslColorPicker$PickedColor;

    invoke-virtual {v2}, Landroid/support/v7/widget/SeslColorPicker$PickedColor;->getColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/SeslGradientColorSeekBar;->init(I)V

    .line 183
    iget-object v1, p0, Landroid/support/v7/widget/SeslColorPicker;->mGradientColorSeekBar:Landroid/support/v7/widget/SeslGradientColorSeekBar;

    new-instance v2, Landroid/support/v7/widget/SeslColorPicker$2;

    invoke-direct {v2, p0}, Landroid/support/v7/widget/SeslColorPicker$2;-><init>(Landroid/support/v7/widget/SeslColorPicker;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/SeslGradientColorSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 213
    iget-object v1, p0, Landroid/support/v7/widget/SeslColorPicker;->mGradientColorSeekBar:Landroid/support/v7/widget/SeslGradientColorSeekBar;

    new-instance v2, Landroid/support/v7/widget/SeslColorPicker$3;

    invoke-direct {v2, p0}, Landroid/support/v7/widget/SeslColorPicker$3;-><init>(Landroid/support/v7/widget/SeslColorPicker;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/SeslGradientColorSeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/support/v7/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    sget v3, Landroid/support/v7/appcompat/R$string;->sesl_color_picker_brightness:I

    .line 232
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/v7/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    sget v3, Landroid/support/v7/appcompat/R$string;->sesl_color_picker_slider:I

    .line 233
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/v7/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    sget v3, Landroid/support/v7/appcompat/R$string;->sesl_color_picker_double_tap_to_select:I

    .line 234
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 231
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initGradientColorWheel()V
    .locals 4

    .line 159
    sget v0, Landroid/support/v7/appcompat/R$id;->sesl_color_picker_gradient_wheel:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslColorPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SeslGradientColorWheel;

    iput-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->mGradientColorWheel:Landroid/support/v7/widget/SeslGradientColorWheel;

    .line 161
    iget-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->mGradientColorWheel:Landroid/support/v7/widget/SeslGradientColorWheel;

    iget-object v1, p0, Landroid/support/v7/widget/SeslColorPicker;->mPickedColor:Landroid/support/v7/widget/SeslColorPicker$PickedColor;

    invoke-virtual {v1}, Landroid/support/v7/widget/SeslColorPicker$PickedColor;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SeslGradientColorWheel;->setColor(I)V

    .line 162
    iget-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->mGradientColorWheel:Landroid/support/v7/widget/SeslGradientColorWheel;

    new-instance v1, Landroid/support/v7/widget/SeslColorPicker$1;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/SeslColorPicker$1;-><init>(Landroid/support/v7/widget/SeslColorPicker;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SeslGradientColorWheel;->setOnColorWheelInterface(Landroid/support/v7/widget/SeslGradientColorWheel$OnWheelColorChangedListener;)V

    .line 171
    iget-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->mGradientColorWheel:Landroid/support/v7/widget/SeslGradientColorWheel;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/support/v7/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    sget v3, Landroid/support/v7/appcompat/R$string;->sesl_color_picker_hue_and_saturation:I

    .line 172
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/v7/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    sget v3, Landroid/support/v7/appcompat/R$string;->sesl_color_picker_color_wheel:I

    .line 173
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/v7/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    sget v3, Landroid/support/v7/appcompat/R$string;->sesl_color_picker_double_tap_to_select:I

    .line 174
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 171
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SeslGradientColorWheel;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initOpacitySeekBar()V
    .locals 4

    .line 238
    sget v0, Landroid/support/v7/appcompat/R$id;->sesl_color_picker_opacity_seekbar:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslColorPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SeslOpacitySeekBar;

    iput-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->mOpacitySeekBar:Landroid/support/v7/widget/SeslOpacitySeekBar;

    .line 239
    sget v0, Landroid/support/v7/appcompat/R$id;->sesl_color_picker_opacity_seekbar_container:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslColorPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->mOpacitySeekBarContainer:Landroid/widget/FrameLayout;

    .line 241
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslColorPicker;->mIsOpacityBarEnabled:Z

    if-nez v0, :cond_0

    .line 242
    iget-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->mOpacitySeekBar:Landroid/support/v7/widget/SeslOpacitySeekBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SeslOpacitySeekBar;->setVisibility(I)V

    .line 243
    iget-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->mOpacitySeekBarContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 245
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->mOpacitySeekBar:Landroid/support/v7/widget/SeslOpacitySeekBar;

    iget-object v1, p0, Landroid/support/v7/widget/SeslColorPicker;->mPickedColor:Landroid/support/v7/widget/SeslColorPicker$PickedColor;

    invoke-virtual {v1}, Landroid/support/v7/widget/SeslColorPicker$PickedColor;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SeslOpacitySeekBar;->init(I)V

    .line 246
    iget-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->mOpacitySeekBar:Landroid/support/v7/widget/SeslOpacitySeekBar;

    new-instance v1, Landroid/support/v7/widget/SeslColorPicker$4;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/SeslColorPicker$4;-><init>(Landroid/support/v7/widget/SeslColorPicker;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SeslOpacitySeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 272
    iget-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->mOpacitySeekBar:Landroid/support/v7/widget/SeslOpacitySeekBar;

    new-instance v1, Landroid/support/v7/widget/SeslColorPicker$5;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/SeslColorPicker$5;-><init>(Landroid/support/v7/widget/SeslColorPicker;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SeslOpacitySeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 289
    iget-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->mOpacitySeekBarContainer:Landroid/widget/FrameLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/support/v7/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    sget v3, Landroid/support/v7/appcompat/R$string;->sesl_color_picker_opacity:I

    .line 290
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/v7/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    sget v3, Landroid/support/v7/appcompat/R$string;->sesl_color_picker_slider:I

    .line 291
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/v7/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    sget v3, Landroid/support/v7/appcompat/R$string;->sesl_color_picker_double_tap_to_select:I

    .line 292
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 289
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initRecentColorLayout()V
    .locals 6

    .line 296
    sget v0, Landroid/support/v7/appcompat/R$id;->sesl_color_picker_used_color_item_list_layout:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslColorPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->mRecentColorListLayout:Landroid/widget/LinearLayout;

    const/4 v0, 0x6

    .line 299
    new-array v1, v0, [Ljava/lang/String;

    iget-object v2, p0, Landroid/support/v7/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    sget v3, Landroid/support/v7/appcompat/R$string;->sesl_color_picker_color_one:I

    .line 300
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Landroid/support/v7/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    sget v4, Landroid/support/v7/appcompat/R$string;->sesl_color_picker_color_two:I

    .line 301
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iget-object v2, p0, Landroid/support/v7/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    sget v4, Landroid/support/v7/appcompat/R$string;->sesl_color_picker_color_three:I

    .line 302
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v1, v4

    iget-object v2, p0, Landroid/support/v7/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    sget v4, Landroid/support/v7/appcompat/R$string;->sesl_color_picker_color_four:I

    .line 303
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v1, v4

    iget-object v2, p0, Landroid/support/v7/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    sget v4, Landroid/support/v7/appcompat/R$string;->sesl_color_picker_color_five:I

    .line 304
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    aput-object v2, v1, v4

    iget-object v2, p0, Landroid/support/v7/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    sget v4, Landroid/support/v7/appcompat/R$string;->sesl_color_picker_color_six:I

    .line 305
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x5

    aput-object v2, v1, v4

    iput-object v1, p0, Landroid/support/v7/widget/SeslColorPicker;->mColorDescription:[Ljava/lang/String;

    .line 308
    iget-object v1, p0, Landroid/support/v7/widget/SeslColorPicker;->mContext:Landroid/content/Context;

    sget-boolean v2, Landroid/support/v7/widget/SeslColorPicker;->sIsLightTheme:Z

    if-eqz v2, :cond_0

    sget v2, Landroid/support/v7/appcompat/R$color;->sesl_color_picker_used_color_item_empty_slot_color_light:I

    goto :goto_0

    :cond_0
    sget v2, Landroid/support/v7/appcompat/R$color;->sesl_color_picker_used_color_item_empty_slot_color_dark:I

    :goto_0
    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_1

    .line 314
    iget-object v4, p0, Landroid/support/v7/widget/SeslColorPicker;->mRecentColorListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 315
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Landroid/support/v7/widget/SeslColorPicker;->setImageColor(Landroid/view/View;Ljava/lang/Integer;)V

    .line 316
    invoke-virtual {v4, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 317
    invoke-virtual {v4, v3}, Landroid/view/View;->setClickable(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private mapColorOnColorWheel(I)V
    .locals 3

    .line 421
    iget-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->mPickedColor:Landroid/support/v7/widget/SeslColorPicker$PickedColor;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SeslColorPicker$PickedColor;->setColor(I)V

    .line 423
    iget-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->mGradientColorWheel:Landroid/support/v7/widget/SeslGradientColorWheel;

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->mGradientColorWheel:Landroid/support/v7/widget/SeslGradientColorWheel;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SeslGradientColorWheel;->setColor(I)V

    .line 426
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->mGradientColorSeekBar:Landroid/support/v7/widget/SeslGradientColorSeekBar;

    if-eqz v0, :cond_1

    .line 427
    iget-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->mGradientColorSeekBar:Landroid/support/v7/widget/SeslGradientColorSeekBar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SeslGradientColorSeekBar;->restoreColor(I)V

    .line 429
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->mOpacitySeekBar:Landroid/support/v7/widget/SeslOpacitySeekBar;

    if-eqz v0, :cond_2

    .line 430
    iget-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->mOpacitySeekBar:Landroid/support/v7/widget/SeslOpacitySeekBar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SeslOpacitySeekBar;->restoreColor(I)V

    .line 432
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_3

    .line 433
    iget-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 435
    :cond_3
    iget-object p1, p0, Landroid/support/v7/widget/SeslColorPicker;->mGradientColorWheel:Landroid/support/v7/widget/SeslGradientColorWheel;

    if-eqz p1, :cond_4

    .line 436
    iget-object p1, p0, Landroid/support/v7/widget/SeslColorPicker;->mPickedColor:Landroid/support/v7/widget/SeslColorPicker$PickedColor;

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslColorPicker$PickedColor;->getV()F

    move-result p1

    .line 437
    iget-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->mPickedColor:Landroid/support/v7/widget/SeslColorPicker$PickedColor;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslColorPicker$PickedColor;->getAlpha()I

    move-result v0

    .line 439
    iget-object v1, p0, Landroid/support/v7/widget/SeslColorPicker;->mPickedColor:Landroid/support/v7/widget/SeslColorPicker$PickedColor;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/SeslColorPicker$PickedColor;->setV(F)V

    .line 440
    iget-object v1, p0, Landroid/support/v7/widget/SeslColorPicker;->mPickedColor:Landroid/support/v7/widget/SeslColorPicker$PickedColor;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/SeslColorPicker$PickedColor;->setAlpha(I)V

    .line 441
    iget-object v1, p0, Landroid/support/v7/widget/SeslColorPicker;->mGradientColorWheel:Landroid/support/v7/widget/SeslGradientColorWheel;

    iget-object v2, p0, Landroid/support/v7/widget/SeslColorPicker;->mPickedColor:Landroid/support/v7/widget/SeslColorPicker$PickedColor;

    invoke-virtual {v2}, Landroid/support/v7/widget/SeslColorPicker$PickedColor;->getColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/SeslGradientColorWheel;->updateCursorColor(I)V

    .line 442
    iget-object v1, p0, Landroid/support/v7/widget/SeslColorPicker;->mPickedColor:Landroid/support/v7/widget/SeslColorPicker$PickedColor;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/SeslColorPicker$PickedColor;->setV(F)V

    .line 443
    iget-object p1, p0, Landroid/support/v7/widget/SeslColorPicker;->mPickedColor:Landroid/support/v7/widget/SeslColorPicker$PickedColor;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/SeslColorPicker$PickedColor;->setAlpha(I)V

    :cond_4
    return-void
.end method

.method private setImageColor(Landroid/view/View;Ljava/lang/Integer;)V
    .locals 6

    .line 387
    iget-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->mContext:Landroid/content/Context;

    sget v1, Landroid/support/v7/appcompat/R$drawable;->sesl_color_picker_used_color_item_slot:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz p2, :cond_0

    .line 390
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_0
    const/16 p2, 0x3d

    const/4 v1, 0x0

    .line 392
    invoke-static {p2, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p2

    .line 393
    new-instance v2, Landroid/content/res/ColorStateList;

    const/4 v3, 0x1

    new-array v4, v3, [[I

    new-array v5, v1, [I

    aput-object v5, v4, v1

    new-array v3, v3, [I

    aput p2, v3, v1

    invoke-direct {v2, v4, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 396
    new-instance p2, Landroid/graphics/drawable/RippleDrawable;

    const/4 v1, 0x0

    invoke-direct {p2, v2, v0, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 397
    iget-object p2, p0, Landroid/support/v7/widget/SeslColorPicker;->mImageButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setInitialColors()V
    .locals 1

    .line 363
    iget-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->mPickedColor:Landroid/support/v7/widget/SeslColorPicker$PickedColor;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslColorPicker$PickedColor;->getColor()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SeslColorPicker;->mapColorOnColorWheel(I)V

    return-void
.end method

.method private updateCurrentColor()V
    .locals 2

    .line 367
    iget-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->mPickedColor:Landroid/support/v7/widget/SeslColorPicker$PickedColor;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslColorPicker$PickedColor;->getColor()I

    move-result v0

    .line 369
    iget-object v1, p0, Landroid/support/v7/widget/SeslColorPicker;->mGradientColorSeekBar:Landroid/support/v7/widget/SeslGradientColorSeekBar;

    if-eqz v1, :cond_0

    .line 370
    iget-object v1, p0, Landroid/support/v7/widget/SeslColorPicker;->mGradientColorSeekBar:Landroid/support/v7/widget/SeslGradientColorSeekBar;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/SeslGradientColorSeekBar;->changeColorBase(I)V

    .line 372
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/SeslColorPicker;->mOpacitySeekBar:Landroid/support/v7/widget/SeslOpacitySeekBar;

    if-eqz v1, :cond_1

    .line 373
    iget-object v1, p0, Landroid/support/v7/widget/SeslColorPicker;->mOpacitySeekBar:Landroid/support/v7/widget/SeslOpacitySeekBar;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/SeslOpacitySeekBar;->changeColorBase(I)V

    .line 375
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/SeslColorPicker;->mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v1, :cond_2

    .line 376
    iget-object v1, p0, Landroid/support/v7/widget/SeslColorPicker;->mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 378
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/SeslColorPicker;->mGradientColorWheel:Landroid/support/v7/widget/SeslGradientColorWheel;

    if-eqz v1, :cond_3

    .line 379
    iget-object v1, p0, Landroid/support/v7/widget/SeslColorPicker;->mGradientColorWheel:Landroid/support/v7/widget/SeslGradientColorWheel;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/SeslGradientColorWheel;->updateCursorColor(I)V

    .line 381
    :cond_3
    iget-object v1, p0, Landroid/support/v7/widget/SeslColorPicker;->mOnColorChangedListener:Landroid/support/v7/widget/SeslColorPicker$OnColorChangedListener;

    if-eqz v1, :cond_4

    .line 382
    iget-object v1, p0, Landroid/support/v7/widget/SeslColorPicker;->mOnColorChangedListener:Landroid/support/v7/widget/SeslColorPicker$OnColorChangedListener;

    invoke-interface {v1, v0}, Landroid/support/v7/widget/SeslColorPicker$OnColorChangedListener;->onColorChanged(I)V

    :cond_4
    return-void
.end method


# virtual methods
.method public getRecentColorInfo()Landroid/support/v7/widget/SeslRecentColorInfo;
    .locals 1

    .line 458
    iget-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->mRecentColorInfo:Landroid/support/v7/widget/SeslRecentColorInfo;

    return-object v0
.end method

.method public isUserInputValid()Z
    .locals 1

    .line 465
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslColorPicker;->mIsInputFromUser:Z

    return v0
.end method

.method public saveSelectedColor()V
    .locals 2

    .line 451
    iget-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->mRecentColorInfo:Landroid/support/v7/widget/SeslRecentColorInfo;

    iget-object v1, p0, Landroid/support/v7/widget/SeslColorPicker;->mPickedColor:Landroid/support/v7/widget/SeslColorPicker$PickedColor;

    invoke-virtual {v1}, Landroid/support/v7/widget/SeslColorPicker$PickedColor;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SeslRecentColorInfo;->saveSelectedColor(I)V

    return-void
.end method

.method public setOnColorChangedListener(Landroid/support/v7/widget/SeslColorPicker$OnColorChangedListener;)V
    .locals 0

    .line 68
    iput-object p1, p0, Landroid/support/v7/widget/SeslColorPicker;->mOnColorChangedListener:Landroid/support/v7/widget/SeslColorPicker$OnColorChangedListener;

    return-void
.end method

.method public setOpacityBarEnabled(Z)V
    .locals 3

    .line 472
    iput-boolean p1, p0, Landroid/support/v7/widget/SeslColorPicker;->mIsOpacityBarEnabled:Z

    .line 473
    iget-boolean p1, p0, Landroid/support/v7/widget/SeslColorPicker;->mIsOpacityBarEnabled:Z

    if-eqz p1, :cond_0

    .line 474
    iget-object p1, p0, Landroid/support/v7/widget/SeslColorPicker;->mOpacitySeekBar:Landroid/support/v7/widget/SeslOpacitySeekBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/SeslOpacitySeekBar;->setVisibility(I)V

    .line 475
    iget-object p1, p0, Landroid/support/v7/widget/SeslColorPicker;->mOpacitySeekBarContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 477
    iget-object p1, p0, Landroid/support/v7/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 478
    sget p1, Landroid/support/v7/appcompat/R$id;->sesl_color_picker_gradient_wheel_container:I

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SeslColorPicker;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    .line 481
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 483
    iget v0, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    int-to-float v0, v0

    const/high16 v1, 0x40c00000    # 6.0f

    iget-object v2, p0, Landroid/support/v7/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    .line 485
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float v2, v2, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    :cond_0
    return-void
.end method

.method public updateRecentColorLayout()V
    .locals 7

    .line 325
    iget-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->mRecentColorValues:Ljava/util/LinkedList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->mRecentColorValues:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 327
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/support/v7/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    sget v4, Landroid/support/v7/appcompat/R$string;->sesl_color_picker_option:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x6

    if-ge v3, v4, :cond_2

    .line 332
    iget-object v4, p0, Landroid/support/v7/widget/SeslColorPicker;->mRecentColorListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-ge v3, v0, :cond_1

    .line 334
    iget-object v5, p0, Landroid/support/v7/widget/SeslColorPicker;->mRecentColorValues:Ljava/util/LinkedList;

    invoke-virtual {v5, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-direct {p0, v4, v5}, Landroid/support/v7/widget/SeslColorPicker;->setImageColor(Landroid/view/View;Ljava/lang/Integer;)V

    .line 335
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Landroid/support/v7/widget/SeslColorPicker;->mColorDescription:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 v5, 0x1

    .line 336
    invoke-virtual {v4, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 337
    invoke-virtual {v4, v5}, Landroid/view/View;->setClickable(Z)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 342
    :cond_2
    iget-object v2, p0, Landroid/support/v7/widget/SeslColorPicker;->mRecentColorInfo:Landroid/support/v7/widget/SeslRecentColorInfo;

    invoke-virtual {v2}, Landroid/support/v7/widget/SeslRecentColorInfo;->getCurrentColor()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 343
    iget-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->mRecentColorInfo:Landroid/support/v7/widget/SeslRecentColorInfo;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslRecentColorInfo;->getCurrentColor()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 344
    iget-object v1, p0, Landroid/support/v7/widget/SeslColorPicker;->mCurrentColorView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 345
    iget-object v1, p0, Landroid/support/v7/widget/SeslColorPicker;->mPickedColorView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 346
    invoke-direct {p0, v0}, Landroid/support/v7/widget/SeslColorPicker;->mapColorOnColorWheel(I)V

    goto :goto_2

    :cond_3
    if-eqz v0, :cond_4

    .line 348
    iget-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->mRecentColorValues:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 349
    iget-object v1, p0, Landroid/support/v7/widget/SeslColorPicker;->mCurrentColorView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 350
    iget-object v1, p0, Landroid/support/v7/widget/SeslColorPicker;->mPickedColorView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 351
    invoke-direct {p0, v0}, Landroid/support/v7/widget/SeslColorPicker;->mapColorOnColorWheel(I)V

    .line 355
    :cond_4
    :goto_2
    iget-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->mRecentColorInfo:Landroid/support/v7/widget/SeslRecentColorInfo;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslRecentColorInfo;->getNewColor()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 356
    iget-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->mRecentColorInfo:Landroid/support/v7/widget/SeslRecentColorInfo;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslRecentColorInfo;->getNewColor()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 357
    iget-object v1, p0, Landroid/support/v7/widget/SeslColorPicker;->mPickedColorView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 358
    invoke-direct {p0, v0}, Landroid/support/v7/widget/SeslColorPicker;->mapColorOnColorWheel(I)V

    :cond_5
    return-void
.end method
