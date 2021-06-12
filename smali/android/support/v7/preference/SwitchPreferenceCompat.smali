.class public Landroid/support/v7/preference/SwitchPreferenceCompat;
.super Landroid/support/v7/preference/TwoStatePreference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/preference/SwitchPreferenceCompat$DummyClickListener;,
        Landroid/support/v7/preference/SwitchPreferenceCompat$Listener;
    }
.end annotation


# instance fields
.field private final mClickListener:Landroid/support/v7/preference/SwitchPreferenceCompat$DummyClickListener;

.field private final mListener:Landroid/support/v7/preference/SwitchPreferenceCompat$Listener;

.field private mSwitchOff:Ljava/lang/CharSequence;

.field private mSwitchOn:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 147
    invoke-direct {p0, p1, v0}, Landroid/support/v7/preference/SwitchPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 138
    sget v0, Landroid/support/v7/preference/R$attr;->switchPreferenceCompatStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/preference/SwitchPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 128
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/preference/SwitchPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 92
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 44
    new-instance v0, Landroid/support/v7/preference/SwitchPreferenceCompat$Listener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v7/preference/SwitchPreferenceCompat$Listener;-><init>(Landroid/support/v7/preference/SwitchPreferenceCompat;Landroid/support/v7/preference/SwitchPreferenceCompat$1;)V

    iput-object v0, p0, Landroid/support/v7/preference/SwitchPreferenceCompat;->mListener:Landroid/support/v7/preference/SwitchPreferenceCompat$Listener;

    .line 51
    new-instance v0, Landroid/support/v7/preference/SwitchPreferenceCompat$DummyClickListener;

    invoke-direct {v0, p0, v1}, Landroid/support/v7/preference/SwitchPreferenceCompat$DummyClickListener;-><init>(Landroid/support/v7/preference/SwitchPreferenceCompat;Landroid/support/v7/preference/SwitchPreferenceCompat$1;)V

    iput-object v0, p0, Landroid/support/v7/preference/SwitchPreferenceCompat;->mClickListener:Landroid/support/v7/preference/SwitchPreferenceCompat$DummyClickListener;

    .line 94
    sget-object v0, Landroid/support/v7/preference/R$styleable;->SwitchPreferenceCompat:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 97
    sget p2, Landroid/support/v7/preference/R$styleable;->SwitchPreferenceCompat_summaryOn:I

    sget p3, Landroid/support/v7/preference/R$styleable;->SwitchPreferenceCompat_android_summaryOn:I

    invoke-static {p1, p2, p3}, Landroid/support/v4/content/res/TypedArrayUtils;->getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 100
    sget p2, Landroid/support/v7/preference/R$styleable;->SwitchPreferenceCompat_summaryOff:I

    sget p3, Landroid/support/v7/preference/R$styleable;->SwitchPreferenceCompat_android_summaryOff:I

    invoke-static {p1, p2, p3}, Landroid/support/v4/content/res/TypedArrayUtils;->getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setSummaryOff(Ljava/lang/CharSequence;)V

    .line 103
    sget p2, Landroid/support/v7/preference/R$styleable;->SwitchPreferenceCompat_switchTextOn:I

    sget p3, Landroid/support/v7/preference/R$styleable;->SwitchPreferenceCompat_android_switchTextOn:I

    invoke-static {p1, p2, p3}, Landroid/support/v4/content/res/TypedArrayUtils;->getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setSwitchTextOn(Ljava/lang/CharSequence;)V

    .line 107
    sget p2, Landroid/support/v7/preference/R$styleable;->SwitchPreferenceCompat_switchTextOff:I

    sget p3, Landroid/support/v7/preference/R$styleable;->SwitchPreferenceCompat_android_switchTextOff:I

    invoke-static {p1, p2, p3}, Landroid/support/v4/content/res/TypedArrayUtils;->getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setSwitchTextOff(Ljava/lang/CharSequence;)V

    .line 111
    sget p2, Landroid/support/v7/preference/R$styleable;->SwitchPreferenceCompat_disableDependentsState:I

    sget p3, Landroid/support/v7/preference/R$styleable;->SwitchPreferenceCompat_android_disableDependentsState:I

    const/4 p4, 0x0

    invoke-static {p1, p2, p3, p4}, Landroid/support/v4/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setDisableDependentsState(Z)V

    .line 115
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private syncSwitchView(Landroid/view/View;)V
    .locals 4

    .line 239
    instance-of v0, p1, Landroid/support/v7/widget/SwitchCompat;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 240
    move-object v2, p1

    check-cast v2, Landroid/support/v7/widget/SwitchCompat;

    .line 241
    invoke-virtual {v2, v1}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 243
    :cond_0
    instance-of v2, p1, Landroid/widget/Checkable;

    if-eqz v2, :cond_1

    .line 244
    move-object v2, p1

    check-cast v2, Landroid/widget/Checkable;

    iget-boolean v3, p0, Landroid/support/v7/preference/SwitchPreferenceCompat;->mChecked:Z

    invoke-interface {v2, v3}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_1
    if-eqz v0, :cond_3

    .line 247
    check-cast p1, Landroid/support/v7/widget/SwitchCompat;

    .line 248
    iget-object v0, p0, Landroid/support/v7/preference/SwitchPreferenceCompat;->mSwitchOn:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/SwitchCompat;->setTextOn(Ljava/lang/CharSequence;)V

    .line 249
    iget-object v0, p0, Landroid/support/v7/preference/SwitchPreferenceCompat;->mSwitchOff:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/SwitchCompat;->setTextOff(Ljava/lang/CharSequence;)V

    .line 250
    iget-object v0, p0, Landroid/support/v7/preference/SwitchPreferenceCompat;->mListener:Landroid/support/v7/preference/SwitchPreferenceCompat$Listener;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 253
    invoke-virtual {p1}, Landroid/support/v7/widget/SwitchCompat;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 254
    iget-object v0, p0, Landroid/support/v7/preference/SwitchPreferenceCompat;->mClickListener:Landroid/support/v7/preference/SwitchPreferenceCompat$DummyClickListener;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/SwitchCompat;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/preference/SwitchPreferenceCompat;->isTalkBackIsRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    instance-of v0, p0, Landroid/support/v7/preference/SeslSwitchPreferenceScreen;

    if-nez v0, :cond_3

    .line 258
    invoke-virtual {p1, v1}, Landroid/support/v7/widget/SwitchCompat;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    .line 259
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/SwitchCompat;->setClickable(Z)V

    :cond_3
    return-void
.end method

.method private syncViewIfAccessibilityEnabled(Landroid/view/View;)V
    .locals 2

    .line 226
    invoke-virtual {p0}, Landroid/support/v7/preference/SwitchPreferenceCompat;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 227
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v0, 0x1020040

    .line 231
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 232
    invoke-direct {p0, v0}, Landroid/support/v7/preference/SwitchPreferenceCompat;->syncSwitchView(Landroid/view/View;)V

    const v0, 0x1020010

    .line 234
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 235
    invoke-virtual {p0, p1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->syncSummaryView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getSwitchTextOff()Ljava/lang/CharSequence;
    .locals 1

    .line 211
    iget-object v0, p0, Landroid/support/v7/preference/SwitchPreferenceCompat;->mSwitchOff:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSwitchTextOn()Ljava/lang/CharSequence;
    .locals 1

    .line 204
    iget-object v0, p0, Landroid/support/v7/preference/SwitchPreferenceCompat;->mSwitchOn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 1

    .line 152
    invoke-super {p0, p1}, Landroid/support/v7/preference/TwoStatePreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const v0, 0x1020040

    .line 153
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 154
    invoke-direct {p0, v0}, Landroid/support/v7/preference/SwitchPreferenceCompat;->syncSwitchView(Landroid/view/View;)V

    .line 155
    invoke-virtual {p0, p1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->syncSummaryView(Landroid/support/v7/preference/PreferenceViewHolder;)V

    return-void
.end method

.method protected performClick(Landroid/view/View;)V
    .locals 0
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 220
    invoke-super {p0, p1}, Landroid/support/v7/preference/TwoStatePreference;->performClick(Landroid/view/View;)V

    .line 221
    invoke-direct {p0, p1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->syncViewIfAccessibilityEnabled(Landroid/view/View;)V

    return-void
.end method

.method public setSwitchTextOff(I)V
    .locals 1

    .line 197
    invoke-virtual {p0}, Landroid/support/v7/preference/SwitchPreferenceCompat;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setSwitchTextOff(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSwitchTextOff(Ljava/lang/CharSequence;)V
    .locals 0

    .line 176
    iput-object p1, p0, Landroid/support/v7/preference/SwitchPreferenceCompat;->mSwitchOff:Ljava/lang/CharSequence;

    .line 177
    invoke-virtual {p0}, Landroid/support/v7/preference/SwitchPreferenceCompat;->notifyChanged()V

    return-void
.end method

.method public setSwitchTextOn(I)V
    .locals 1

    .line 187
    invoke-virtual {p0}, Landroid/support/v7/preference/SwitchPreferenceCompat;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setSwitchTextOn(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSwitchTextOn(Ljava/lang/CharSequence;)V
    .locals 0

    .line 165
    iput-object p1, p0, Landroid/support/v7/preference/SwitchPreferenceCompat;->mSwitchOn:Ljava/lang/CharSequence;

    .line 166
    invoke-virtual {p0}, Landroid/support/v7/preference/SwitchPreferenceCompat;->notifyChanged()V

    return-void
.end method
