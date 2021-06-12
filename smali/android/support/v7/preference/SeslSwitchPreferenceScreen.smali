.class public Landroid/support/v7/preference/SeslSwitchPreferenceScreen;
.super Landroid/support/v7/preference/SwitchPreferenceCompat;
.source "SourceFile"


# instance fields
.field private mSwitchKeyListener:Landroid/view/View$OnKeyListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 87
    invoke-direct {p0, p1, v0}, Landroid/support/v7/preference/SeslSwitchPreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 78
    sget v0, Landroid/support/v7/preference/R$attr;->switchPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/preference/SeslSwitchPreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/preference/SeslSwitchPreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/preference/SwitchPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 109
    new-instance v0, Landroid/support/v7/preference/SeslSwitchPreferenceScreen$1;

    invoke-direct {v0, p0}, Landroid/support/v7/preference/SeslSwitchPreferenceScreen$1;-><init>(Landroid/support/v7/preference/SeslSwitchPreferenceScreen;)V

    iput-object v0, p0, Landroid/support/v7/preference/SeslSwitchPreferenceScreen;->mSwitchKeyListener:Landroid/view/View$OnKeyListener;

    .line 46
    sget-object v0, Landroid/support/v7/preference/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 48
    sget p2, Landroid/support/v7/preference/R$styleable;->Preference_android_fragment:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string p3, ""

    .line 49
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    const-string p2, "SwitchPreferenceScreen"

    const-string p3, "SwitchPreferenceScreen should get fragment property. Fragment property does not exsit in SwitchPreferenceScreen"

    .line 50
    invoke-static {p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_1
    sget p2, Landroid/support/v7/preference/R$layout;->sesl_switch_preference_screen:I

    invoke-virtual {p0, p2}, Landroid/support/v7/preference/SeslSwitchPreferenceScreen;->setLayoutResource(I)V

    .line 54
    sget p2, Landroid/support/v7/preference/R$layout;->sesl_switch_preference_screen_widget_divider:I

    invoke-virtual {p0, p2}, Landroid/support/v7/preference/SeslSwitchPreferenceScreen;->setWidgetLayoutResource(I)V

    .line 55
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected callClickListener()V
    .locals 0

    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2

    .line 144
    invoke-super {p0, p1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 145
    iget-object v0, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v7/preference/SeslSwitchPreferenceScreen;->mSwitchKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const v0, 0x1020016

    .line 147
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x1020040

    .line 148
    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 150
    invoke-static {}, Landroid/support/v4/widget/SeslHoverPopupWindowReflector;->getField_TYPE_NONE()I

    move-result v1

    invoke-static {p1, v1}, Landroid/support/v4/view/SeslViewReflector;->semSetHoverPopupType(Landroid/view/View;I)V

    .line 151
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected onClick()V
    .locals 0

    return-void
.end method
