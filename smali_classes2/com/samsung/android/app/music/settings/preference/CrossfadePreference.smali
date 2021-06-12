.class public Lcom/samsung/android/app/music/settings/preference/CrossfadePreference;
.super Landroid/support/v7/preference/Preference;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private a(I)I
    .locals 0

    mul-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x0

    mul-int/lit8 p1, p1, 0xa

    .line 150
    div-int/lit8 p1, p1, 0xa

    return p1
.end method

.method static synthetic a(Lcom/samsung/android/app/music/settings/preference/CrossfadePreference;)I
    .locals 0

    .line 30
    iget p0, p0, Lcom/samsung/android/app/music/settings/preference/CrossfadePreference;->a:I

    return p0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/settings/preference/CrossfadePreference;I)I
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/settings/preference/CrossfadePreference;->a(I)I

    move-result p0

    return p0
.end method

.method private a(Landroid/view/View;Landroid/widget/TextView;I)V
    .locals 2

    .line 169
    invoke-direct {p0, p3}, Lcom/samsung/android/app/music/settings/preference/CrossfadePreference;->c(I)Ljava/lang/String;

    move-result-object p3

    .line 170
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/preference/CrossfadePreference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const v0, 0x3ecccccd    # 0.4f

    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 172
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/preference/CrossfadePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b00ef

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

    .line 172
    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private a(Landroid/view/View;Z)V
    .locals 2

    .line 140
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 141
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 142
    check-cast p1, Landroid/view/ViewGroup;

    .line 143
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 144
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/samsung/android/app/music/settings/preference/CrossfadePreference;->a(Landroid/view/View;Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/settings/preference/CrossfadePreference;Landroid/view/View;Landroid/widget/TextView;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/settings/preference/CrossfadePreference;->a(Landroid/view/View;Landroid/widget/TextView;I)V

    return-void
.end method

.method private b(I)I
    .locals 0

    mul-int/lit8 p1, p1, 0xa

    add-int/lit8 p1, p1, 0x0

    .line 154
    div-int/lit8 p1, p1, 0xa

    return p1
.end method

.method static synthetic b(Lcom/samsung/android/app/music/settings/preference/CrossfadePreference;)Landroid/widget/SeekBar;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/samsung/android/app/music/settings/preference/CrossfadePreference;->b:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/settings/preference/CrossfadePreference;I)Ljava/lang/String;
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/settings/preference/CrossfadePreference;->c(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lcom/samsung/android/app/music/settings/preference/CrossfadePreference;I)I
    .locals 0

    .line 30
    iput p1, p0, Lcom/samsung/android/app/music/settings/preference/CrossfadePreference;->a:I

    return p1
.end method

.method private c(I)Ljava/lang/String;
    .locals 5

    if-nez p1, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/preference/CrossfadePreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b00f1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 163
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/preference/CrossfadePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d000c

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 164
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, p1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 5

    .line 65
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 67
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/preference/CrossfadePreference;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 68
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    const-string v2, "cross_fade"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 73
    :cond_0
    iget-object v0, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const v2, 0x1020014

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 74
    iget-object v2, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const v3, 0x7f1301f0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 76
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/preference/CrossfadePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b00f0

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v2, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const v3, 0x102000d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lcom/samsung/android/app/music/settings/preference/CrossfadePreference;->b:Landroid/widget/SeekBar;

    .line 80
    iget-object v2, p0, Lcom/samsung/android/app/music/settings/preference/CrossfadePreference;->b:Landroid/widget/SeekBar;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 81
    iget-object v2, p0, Lcom/samsung/android/app/music/settings/preference/CrossfadePreference;->b:Landroid/widget/SeekBar;

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/settings/preference/CrossfadePreference;->b(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 82
    iget-object v2, p0, Lcom/samsung/android/app/music/settings/preference/CrossfadePreference;->b:Landroid/widget/SeekBar;

    invoke-direct {p0, v2, v0, v1}, Lcom/samsung/android/app/music/settings/preference/CrossfadePreference;->a(Landroid/view/View;Landroid/widget/TextView;I)V

    .line 83
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/preference/CrossfadePreference;->b:Landroid/widget/SeekBar;

    new-instance v2, Lcom/samsung/android/app/music/settings/preference/CrossfadePreference$1;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/app/music/settings/preference/CrossfadePreference$1;-><init>(Lcom/samsung/android/app/music/settings/preference/CrossfadePreference;Landroid/widget/TextView;)V

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 117
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/preference/CrossfadePreference;->b:Landroid/widget/SeekBar;

    new-instance v1, Lcom/samsung/android/app/music/settings/preference/CrossfadePreference$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/settings/preference/CrossfadePreference$2;-><init>(Lcom/samsung/android/app/music/settings/preference/CrossfadePreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 130
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/preference/CrossfadePreference;->b:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/preference/CrossfadePreference;->b:Landroid/widget/SeekBar;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/support/android/widget/AbsSeekBarCompat;->setFluidEnabled(Landroid/widget/AbsSeekBar;Z)V

    .line 132
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/preference/CrossfadePreference;->b:Landroid/widget/SeekBar;

    .line 133
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/preference/CrossfadePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0379

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 132
    invoke-static {v1}, Lcom/samsung/android/app/music/util/UiUtils;->a(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 136
    :cond_1
    iget-object p1, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/preference/CrossfadePreference;->isEnabled()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/settings/preference/CrossfadePreference;->a(Landroid/view/View;Z)V

    return-void
.end method
