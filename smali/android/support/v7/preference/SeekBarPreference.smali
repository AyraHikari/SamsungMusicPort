.class public Landroid/support/v7/preference/SeekBarPreference;
.super Landroid/support/v7/preference/Preference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/preference/SeekBarPreference$SavedState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SeekBarPreference"


# instance fields
.field private mAdjustable:Z

.field private mMax:I

.field private mMin:I

.field private mSeekBar:Landroid/support/v7/widget/SeslSeekBar;

.field private mSeekBarChangeListener:Landroid/support/v7/widget/SeslSeekBar$OnSeekBarChangeListener;

.field private mSeekBarIncrement:I

.field private mSeekBarKeyListener:Landroid/view/View$OnKeyListener;

.field private mSeekBarValue:I

.field private mShowSeekBarValue:Z

.field private mTrackingTouch:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 146
    invoke-direct {p0, p1, v0}, Landroid/support/v7/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 142
    sget v0, Landroid/support/v7/preference/R$attr;->seekBarPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 138
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 119
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 63
    new-instance v0, Landroid/support/v7/preference/SeekBarPreference$1;

    invoke-direct {v0, p0}, Landroid/support/v7/preference/SeekBarPreference$1;-><init>(Landroid/support/v7/preference/SeekBarPreference;)V

    iput-object v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarChangeListener:Landroid/support/v7/widget/SeslSeekBar$OnSeekBarChangeListener;

    .line 90
    new-instance v0, Landroid/support/v7/preference/SeekBarPreference$2;

    invoke-direct {v0, p0}, Landroid/support/v7/preference/SeekBarPreference$2;-><init>(Landroid/support/v7/preference/SeekBarPreference;)V

    iput-object v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarKeyListener:Landroid/view/View$OnKeyListener;

    .line 121
    sget-object v0, Landroid/support/v7/preference/R$styleable;->SeekBarPreference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 129
    sget p2, Landroid/support/v7/preference/R$styleable;->SeekBarPreference_min:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Landroid/support/v7/preference/SeekBarPreference;->mMin:I

    .line 130
    sget p2, Landroid/support/v7/preference/R$styleable;->SeekBarPreference_android_max:I

    const/16 p4, 0x64

    invoke-virtual {p1, p2, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/support/v7/preference/SeekBarPreference;->setMax(I)V

    .line 131
    sget p2, Landroid/support/v7/preference/R$styleable;->SeekBarPreference_seekBarIncrement:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/support/v7/preference/SeekBarPreference;->setSeekBarIncrement(I)V

    .line 132
    sget p2, Landroid/support/v7/preference/R$styleable;->SeekBarPreference_adjustable:I

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroid/support/v7/preference/SeekBarPreference;->mAdjustable:Z

    .line 133
    sget p2, Landroid/support/v7/preference/R$styleable;->SeekBarPreference_showSeekBarValue:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroid/support/v7/preference/SeekBarPreference;->mShowSeekBarValue:Z

    .line 134
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/preference/SeekBarPreference;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Landroid/support/v7/preference/SeekBarPreference;->mTrackingTouch:Z

    return p0
.end method

.method static synthetic access$002(Landroid/support/v7/preference/SeekBarPreference;Z)Z
    .locals 0

    .line 44
    iput-boolean p1, p0, Landroid/support/v7/preference/SeekBarPreference;->mTrackingTouch:Z

    return p1
.end method

.method static synthetic access$100(Landroid/support/v7/preference/SeekBarPreference;Landroid/support/v7/widget/SeslSeekBar;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Landroid/support/v7/preference/SeekBarPreference;->syncValueInternal(Landroid/support/v7/widget/SeslSeekBar;)V

    return-void
.end method

.method static synthetic access$200(Landroid/support/v7/preference/SeekBarPreference;)I
    .locals 0

    .line 44
    iget p0, p0, Landroid/support/v7/preference/SeekBarPreference;->mMin:I

    return p0
.end method

.method static synthetic access$300(Landroid/support/v7/preference/SeekBarPreference;)I
    .locals 0

    .line 44
    iget p0, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarValue:I

    return p0
.end method

.method static synthetic access$400(Landroid/support/v7/preference/SeekBarPreference;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Landroid/support/v7/preference/SeekBarPreference;->mAdjustable:Z

    return p0
.end method

.method static synthetic access$500(Landroid/support/v7/preference/SeekBarPreference;)Landroid/support/v7/widget/SeslSeekBar;
    .locals 0

    .line 44
    iget-object p0, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBar:Landroid/support/v7/widget/SeslSeekBar;

    return-object p0
.end method

.method private setValueInternal(IZ)V
    .locals 1

    .line 278
    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mMin:I

    if-ge p1, v0, :cond_0

    .line 279
    iget p1, p0, Landroid/support/v7/preference/SeekBarPreference;->mMin:I

    .line 281
    :cond_0
    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mMax:I

    if-le p1, v0, :cond_1

    .line 282
    iget p1, p0, Landroid/support/v7/preference/SeekBarPreference;->mMax:I

    .line 285
    :cond_1
    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarValue:I

    if-eq p1, v0, :cond_2

    .line 286
    iput p1, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarValue:I

    .line 292
    invoke-virtual {p0, p1}, Landroid/support/v7/preference/SeekBarPreference;->persistInt(I)Z

    if-eqz p2, :cond_2

    .line 294
    invoke-virtual {p0}, Landroid/support/v7/preference/SeekBarPreference;->notifyChanged()V

    :cond_2
    return-void
.end method

.method private syncValueInternal(Landroid/support/v7/widget/SeslSeekBar;)V
    .locals 2

    .line 308
    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mMin:I

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslSeekBar;->getProgress()I

    move-result v1

    add-int/2addr v0, v1

    .line 309
    iget v1, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarValue:I

    if-eq v0, v1, :cond_1

    .line 310
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/preference/SeekBarPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    .line 311
    invoke-direct {p0, v0, p1}, Landroid/support/v7/preference/SeekBarPreference;->setValueInternal(IZ)V

    goto :goto_0

    .line 313
    :cond_0
    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarValue:I

    iget v1, p0, Landroid/support/v7/preference/SeekBarPreference;->mMin:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/SeslSeekBar;->setProgress(I)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getMax()I
    .locals 1

    .line 262
    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mMax:I

    return v0
.end method

.method public getMin()I
    .locals 1

    .line 226
    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mMin:I

    return v0
.end method

.method public final getSeekBarIncrement()I
    .locals 1

    .line 246
    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarIncrement:I

    return v0
.end method

.method public getValue()I
    .locals 1

    .line 300
    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarValue:I

    return v0
.end method

.method public isAdjustable()Z
    .locals 1

    .line 270
    iget-boolean v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mAdjustable:Z

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2

    .line 151
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 152
    iget-object v0, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 153
    sget v0, Landroid/support/v7/preference/R$id;->seekbar:I

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/SeslSeekBar;

    iput-object p1, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBar:Landroid/support/v7/widget/SeslSeekBar;

    .line 164
    iget-object p1, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBar:Landroid/support/v7/widget/SeslSeekBar;

    if-nez p1, :cond_0

    const-string p1, "SeekBarPreference"

    const-string v0, "SeekBar view is null in onBindViewHolder."

    .line 165
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 168
    :cond_0
    iget-object p1, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBar:Landroid/support/v7/widget/SeslSeekBar;

    iget-object v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarChangeListener:Landroid/support/v7/widget/SeslSeekBar$OnSeekBarChangeListener;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/SeslSeekBar;->setOnSeekBarChangeListener(Landroid/support/v7/widget/SeslSeekBar$OnSeekBarChangeListener;)V

    .line 169
    iget-object p1, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBar:Landroid/support/v7/widget/SeslSeekBar;

    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mMax:I

    iget v1, p0, Landroid/support/v7/preference/SeekBarPreference;->mMin:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/SeslSeekBar;->setMax(I)V

    .line 174
    iget p1, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarIncrement:I

    if-eqz p1, :cond_1

    .line 175
    iget-object p1, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBar:Landroid/support/v7/widget/SeslSeekBar;

    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarIncrement:I

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/SeslSeekBar;->setKeyProgressIncrement(I)V

    goto :goto_0

    .line 177
    :cond_1
    iget-object p1, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBar:Landroid/support/v7/widget/SeslSeekBar;

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslSeekBar;->getKeyProgressIncrement()I

    move-result p1

    iput p1, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarIncrement:I

    .line 180
    :goto_0
    iget-object p1, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBar:Landroid/support/v7/widget/SeslSeekBar;

    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarValue:I

    iget v1, p0, Landroid/support/v7/preference/SeekBarPreference;->mMin:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/SeslSeekBar;->setProgress(I)V

    .line 186
    iget-object p1, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBar:Landroid/support/v7/widget/SeslSeekBar;

    invoke-virtual {p0}, Landroid/support/v7/preference/SeekBarPreference;->isEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/SeslSeekBar;->setEnabled(Z)V

    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 197
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 203
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 207
    :cond_0
    sget v0, Landroid/support/v7/preference/R$id;->seekbar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/SeslSeekBar;

    if-nez p1, :cond_1

    return v1

    .line 211
    :cond_1
    invoke-virtual {p1, p2, p3}, Landroid/support/v7/widget/SeslSeekBar;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 336
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/support/v7/preference/SeekBarPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 338
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 343
    :cond_0
    check-cast p1, Landroid/support/v7/preference/SeekBarPreference$SavedState;

    .line 344
    invoke-virtual {p1}, Landroid/support/v7/preference/SeekBarPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/support/v7/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 345
    iget v0, p1, Landroid/support/v7/preference/SeekBarPreference$SavedState;->seekBarValue:I

    iput v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarValue:I

    .line 346
    iget v0, p1, Landroid/support/v7/preference/SeekBarPreference$SavedState;->min:I

    iput v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mMin:I

    .line 347
    iget p1, p1, Landroid/support/v7/preference/SeekBarPreference$SavedState;->max:I

    iput p1, p0, Landroid/support/v7/preference/SeekBarPreference;->mMax:I

    .line 348
    invoke-virtual {p0}, Landroid/support/v7/preference/SeekBarPreference;->notifyChanged()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 320
    invoke-super {p0}, Landroid/support/v7/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 321
    invoke-virtual {p0}, Landroid/support/v7/preference/SeekBarPreference;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 327
    :cond_0
    new-instance v1, Landroid/support/v7/preference/SeekBarPreference$SavedState;

    invoke-direct {v1, v0}, Landroid/support/v7/preference/SeekBarPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 328
    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarValue:I

    iput v0, v1, Landroid/support/v7/preference/SeekBarPreference$SavedState;->seekBarValue:I

    .line 329
    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mMin:I

    iput v0, v1, Landroid/support/v7/preference/SeekBarPreference$SavedState;->min:I

    .line 330
    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mMax:I

    iput v0, v1, Landroid/support/v7/preference/SeekBarPreference$SavedState;->max:I

    return-object v1
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 191
    iget p1, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarValue:I

    invoke-virtual {p0, p1}, Landroid/support/v7/preference/SeekBarPreference;->getPersistedInt(I)I

    move-result p1

    goto :goto_0

    :cond_0
    check-cast p2, Ljava/lang/Integer;

    .line 192
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 191
    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v7/preference/SeekBarPreference;->setValue(I)V

    return-void
.end method

.method public setAdjustable(Z)V
    .locals 0

    .line 266
    iput-boolean p1, p0, Landroid/support/v7/preference/SeekBarPreference;->mAdjustable:Z

    return-void
.end method

.method public final setMax(I)V
    .locals 1

    .line 230
    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mMin:I

    if-ge p1, v0, :cond_0

    .line 231
    iget p1, p0, Landroid/support/v7/preference/SeekBarPreference;->mMin:I

    .line 233
    :cond_0
    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mMax:I

    if-eq p1, v0, :cond_1

    .line 234
    iput p1, p0, Landroid/support/v7/preference/SeekBarPreference;->mMax:I

    .line 235
    invoke-virtual {p0}, Landroid/support/v7/preference/SeekBarPreference;->notifyChanged()V

    :cond_1
    return-void
.end method

.method public setMin(I)V
    .locals 1

    .line 216
    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mMax:I

    if-le p1, v0, :cond_0

    .line 217
    iget p1, p0, Landroid/support/v7/preference/SeekBarPreference;->mMax:I

    .line 219
    :cond_0
    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mMin:I

    if-eq p1, v0, :cond_1

    .line 220
    iput p1, p0, Landroid/support/v7/preference/SeekBarPreference;->mMin:I

    .line 221
    invoke-virtual {p0}, Landroid/support/v7/preference/SeekBarPreference;->notifyChanged()V

    :cond_1
    return-void
.end method

.method public final setSeekBarIncrement(I)V
    .locals 2

    .line 255
    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarIncrement:I

    if-eq p1, v0, :cond_0

    .line 256
    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mMax:I

    iget v1, p0, Landroid/support/v7/preference/SeekBarPreference;->mMin:I

    sub-int/2addr v0, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarIncrement:I

    .line 257
    invoke-virtual {p0}, Landroid/support/v7/preference/SeekBarPreference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setValue(I)V
    .locals 1

    const/4 v0, 0x1

    .line 274
    invoke-direct {p0, p1, v0}, Landroid/support/v7/preference/SeekBarPreference;->setValueInternal(IZ)V

    return-void
.end method
