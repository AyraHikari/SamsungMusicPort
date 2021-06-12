.class public abstract Landroid/support/v7/preference/DialogPreference;
.super Landroid/support/v7/preference/Preference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/preference/DialogPreference$TargetFragment;
    }
.end annotation


# instance fields
.field private mDialogIcon:Landroid/graphics/drawable/Drawable;

.field private mDialogLayoutResId:I

.field private mDialogMessage:Ljava/lang/CharSequence;

.field private mDialogTitle:Ljava/lang/CharSequence;

.field private mNegativeButtonText:Ljava/lang/CharSequence;

.field private mPositiveButtonText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 102
    invoke-direct {p0, p1, v0}, Landroid/support/v7/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 97
    sget v0, Landroid/support/v7/preference/R$attr;->dialogPreferenceStyle:I

    const v1, 0x1010091

    invoke-static {p1, v0, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 93
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 60
    sget-object v0, Landroid/support/v7/preference/R$styleable;->DialogPreference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 63
    sget p2, Landroid/support/v7/preference/R$styleable;->DialogPreference_dialogTitle:I

    sget p3, Landroid/support/v7/preference/R$styleable;->DialogPreference_android_dialogTitle:I

    invoke-static {p1, p2, p3}, Landroid/support/v4/content/res/TypedArrayUtils;->getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/support/v7/preference/DialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    .line 65
    iget-object p2, p0, Landroid/support/v7/preference/DialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    if-nez p2, :cond_0

    .line 68
    invoke-virtual {p0}, Landroid/support/v7/preference/DialogPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Landroid/support/v7/preference/DialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    .line 71
    :cond_0
    sget p2, Landroid/support/v7/preference/R$styleable;->DialogPreference_dialogMessage:I

    sget p3, Landroid/support/v7/preference/R$styleable;->DialogPreference_android_dialogMessage:I

    invoke-static {p1, p2, p3}, Landroid/support/v4/content/res/TypedArrayUtils;->getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/support/v7/preference/DialogPreference;->mDialogMessage:Ljava/lang/CharSequence;

    .line 74
    sget p2, Landroid/support/v7/preference/R$styleable;->DialogPreference_dialogIcon:I

    sget p3, Landroid/support/v7/preference/R$styleable;->DialogPreference_android_dialogIcon:I

    invoke-static {p1, p2, p3}, Landroid/support/v4/content/res/TypedArrayUtils;->getDrawable(Landroid/content/res/TypedArray;II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Landroid/support/v7/preference/DialogPreference;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    .line 77
    sget p2, Landroid/support/v7/preference/R$styleable;->DialogPreference_positiveButtonText:I

    sget p3, Landroid/support/v7/preference/R$styleable;->DialogPreference_android_positiveButtonText:I

    invoke-static {p1, p2, p3}, Landroid/support/v4/content/res/TypedArrayUtils;->getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/support/v7/preference/DialogPreference;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 81
    sget p2, Landroid/support/v7/preference/R$styleable;->DialogPreference_negativeButtonText:I

    sget p3, Landroid/support/v7/preference/R$styleable;->DialogPreference_android_negativeButtonText:I

    invoke-static {p1, p2, p3}, Landroid/support/v4/content/res/TypedArrayUtils;->getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/support/v7/preference/DialogPreference;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 85
    sget p2, Landroid/support/v7/preference/R$styleable;->DialogPreference_dialogLayout:I

    sget p3, Landroid/support/v7/preference/R$styleable;->DialogPreference_android_dialogLayout:I

    const/4 p4, 0x0

    invoke-static {p1, p2, p3, p4}, Landroid/support/v4/content/res/TypedArrayUtils;->getResourceId(Landroid/content/res/TypedArray;III)I

    move-result p2

    iput p2, p0, Landroid/support/v7/preference/DialogPreference;->mDialogLayoutResId:I

    .line 89
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getDialogIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 184
    iget-object v0, p0, Landroid/support/v7/preference/DialogPreference;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDialogLayoutResource()I
    .locals 1

    .line 261
    iget v0, p0, Landroid/support/v7/preference/DialogPreference;->mDialogLayoutResId:I

    return v0
.end method

.method public getDialogMessage()Ljava/lang/CharSequence;
    .locals 1

    .line 157
    iget-object v0, p0, Landroid/support/v7/preference/DialogPreference;->mDialogMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getDialogTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 127
    iget-object v0, p0, Landroid/support/v7/preference/DialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getNegativeButtonText()Ljava/lang/CharSequence;
    .locals 1

    .line 240
    iget-object v0, p0, Landroid/support/v7/preference/DialogPreference;->mNegativeButtonText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getPositiveButtonText()Ljava/lang/CharSequence;
    .locals 1

    .line 212
    iget-object v0, p0, Landroid/support/v7/preference/DialogPreference;->mPositiveButtonText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const v0, 0x102000b

    .line 279
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 282
    invoke-virtual {p0}, Landroid/support/v7/preference/DialogPreference;->getDialogMessage()Ljava/lang/CharSequence;

    move-result-object v0

    const/16 v1, 0x8

    .line 285
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 286
    instance-of v1, p1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 287
    move-object v1, p1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 v1, 0x0

    .line 292
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 293
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method protected onClick()V
    .locals 1

    .line 266
    invoke-virtual {p0}, Landroid/support/v7/preference/DialogPreference;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/PreferenceManager;->showDialog(Landroid/support/v7/preference/Preference;)V

    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 0

    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/support/v7/app/AlertDialog$Builder;)V
    .locals 0

    return-void
.end method

.method public setDialogIcon(I)V
    .locals 1

    .line 176
    invoke-virtual {p0}, Landroid/support/v7/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/preference/DialogPreference;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setDialogIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 166
    iput-object p1, p0, Landroid/support/v7/preference/DialogPreference;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setDialogLayoutResource(I)V
    .locals 0

    .line 251
    iput p1, p0, Landroid/support/v7/preference/DialogPreference;->mDialogLayoutResId:I

    return-void
.end method

.method public setDialogMessage(I)V
    .locals 1

    .line 149
    invoke-virtual {p0}, Landroid/support/v7/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v7/preference/DialogPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setDialogMessage(Ljava/lang/CharSequence;)V
    .locals 0

    .line 141
    iput-object p1, p0, Landroid/support/v7/preference/DialogPreference;->mDialogMessage:Ljava/lang/CharSequence;

    return-void
.end method

.method public setDialogTitle(I)V
    .locals 1

    .line 119
    invoke-virtual {p0}, Landroid/support/v7/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v7/preference/DialogPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setDialogTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 111
    iput-object p1, p0, Landroid/support/v7/preference/DialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    return-void
.end method

.method public setNegativeButtonText(I)V
    .locals 1

    .line 230
    invoke-virtual {p0}, Landroid/support/v7/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v7/preference/DialogPreference;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setNegativeButtonText(Ljava/lang/CharSequence;)V
    .locals 0

    .line 222
    iput-object p1, p0, Landroid/support/v7/preference/DialogPreference;->mNegativeButtonText:Ljava/lang/CharSequence;

    return-void
.end method

.method public setPositiveButtonText(I)V
    .locals 1

    .line 202
    invoke-virtual {p0}, Landroid/support/v7/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v7/preference/DialogPreference;->setPositiveButtonText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setPositiveButtonText(Ljava/lang/CharSequence;)V
    .locals 0

    .line 194
    iput-object p1, p0, Landroid/support/v7/preference/DialogPreference;->mPositiveButtonText:Ljava/lang/CharSequence;

    return-void
.end method
