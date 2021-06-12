.class public Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;
.super Landroid/support/v7/preference/Preference;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Landroid/widget/SeekBar;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 46
    iput-boolean p1, p0, Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;->c:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 46
    iput-boolean p1, p0, Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;->c:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 46
    iput-boolean p1, p0, Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;->c:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 46
    iput-boolean p1, p0, Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;->c:Z

    return-void
.end method

.method private a()F
    .locals 2

    .line 180
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getSettingsPlaySpeed()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 181
    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;->c:Z

    return v0
.end method

.method private a(I)F
    .locals 1

    int-to-float p1, p1

    const v0, 0x3dcccccd    # 0.1f

    mul-float p1, p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    const/high16 v0, 0x41200000    # 10.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    int-to-float p1, p1

    div-float/2addr p1, v0

    return p1
.end method

.method static synthetic a(Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;I)F
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;->a(I)F

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;)I
    .locals 0

    .line 30
    iget p0, p0, Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;->a:I

    return p0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;F)Ljava/lang/String;
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;->c(F)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Landroid/view/View;Landroid/widget/TextView;F)V
    .locals 2

    .line 155
    invoke-direct {p0, p3}, Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;->c(F)Ljava/lang/String;

    move-result-object p3

    .line 156
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const v0, 0x3ecccccd    # 0.4f

    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 158
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b02eb

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\n"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 158
    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private a(Landroid/view/View;Z)V
    .locals 2

    .line 131
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 132
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 133
    check-cast p1, Landroid/view/ViewGroup;

    .line 134
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 135
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;->a(Landroid/view/View;Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;Landroid/view/View;Landroid/widget/TextView;F)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;->a(Landroid/view/View;Landroid/widget/TextView;F)V

    return-void
.end method

.method private b(F)I
    .locals 1

    const/high16 v0, 0x41200000    # 10.0f

    mul-float p1, p1, v0

    const/high16 v0, 0x40a00000    # 5.0f

    sub-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method static synthetic b(Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;I)I
    .locals 0

    .line 30
    iput p1, p0, Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;->a:I

    return p1
.end method

.method static synthetic b(Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;)Landroid/widget/SeekBar;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;->b:Landroid/widget/SeekBar;

    return-object p0
.end method

.method private c(F)Ljava/lang/String;
    .locals 5

    .line 149
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b02ec

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "%.1f"

    new-array v1, v1, [Ljava/lang/Object;

    .line 150
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v1, v4

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v4

    .line 149
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(F)V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;->b:Landroid/widget/SeekBar;

    if-nez v0, :cond_0

    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;->b:Landroid/widget/SeekBar;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;->b(F)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 4

    .line 67
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 68
    invoke-direct {p0}, Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;->a()F

    move-result v0

    .line 69
    iget-object v1, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const v2, 0x1020014

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 71
    iget-object v2, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const v3, 0x102000d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;->b:Landroid/widget/SeekBar;

    .line 73
    iget-object v2, p0, Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;->b:Landroid/widget/SeekBar;

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 74
    iget-object v2, p0, Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;->b:Landroid/widget/SeekBar;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;->b(F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 75
    iget-object v2, p0, Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;->b:Landroid/widget/SeekBar;

    invoke-direct {p0, v2, v1, v0}, Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;->a(Landroid/view/View;Landroid/widget/TextView;F)V

    .line 76
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;->b:Landroid/widget/SeekBar;

    new-instance v2, Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference$1;

    invoke-direct {v2, p0, v1}, Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference$1;-><init>(Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;Landroid/widget/TextView;)V

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 108
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;->b:Landroid/widget/SeekBar;

    new-instance v1, Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference$2;-><init>(Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 121
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;->b:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;->b:Landroid/widget/SeekBar;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/support/android/widget/AbsSeekBarCompat;->setFluidEnabled(Landroid/widget/AbsSeekBar;Z)V

    .line 123
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;->b:Landroid/widget/SeekBar;

    .line 124
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0379

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 123
    invoke-static {v1}, Lcom/samsung/android/app/music/util/UiUtils;->a(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 127
    :cond_0
    iget-object p1, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;->isEnabled()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;->a(Landroid/view/View;Z)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 172
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 173
    iget-boolean p1, p0, Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;->c:Z

    if-nez p1, :cond_0

    .line 174
    invoke-direct {p0}, Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;->a()F

    move-result p1

    .line 175
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;->a(F)V

    :cond_0
    return-void
.end method
