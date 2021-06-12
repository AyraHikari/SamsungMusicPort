.class Landroid/support/v7/preference/SeekBarDialogPreference;
.super Landroid/support/v7/preference/DialogPreference;
.source "SourceFile"


# instance fields
.field private final mMyIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, v0}, Landroid/support/v7/preference/SeekBarDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 47
    sget v0, Landroid/support/v7/preference/R$attr;->seekBarDialogPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/preference/SeekBarDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/preference/SeekBarDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 34
    invoke-virtual {p0}, Landroid/support/v7/preference/SeekBarDialogPreference;->createActionButtons()V

    .line 37
    invoke-virtual {p0}, Landroid/support/v7/preference/SeekBarDialogPreference;->getDialogIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/preference/SeekBarDialogPreference;->mMyIcon:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    .line 39
    invoke-virtual {p0, p1}, Landroid/support/v7/preference/SeekBarDialogPreference;->setDialogIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected static getSeekBar(Landroid/view/View;)Landroid/widget/SeekBar;
    .locals 1

    .line 73
    sget v0, Landroid/support/v7/preference/R$id;->seekbar:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/SeekBar;

    return-object p0
.end method


# virtual methods
.method public createActionButtons()V
    .locals 1

    const v0, 0x104000a

    .line 56
    invoke-virtual {p0, v0}, Landroid/support/v7/preference/SeekBarDialogPreference;->setPositiveButtonText(I)V

    const/high16 v0, 0x1040000

    .line 57
    invoke-virtual {p0, v0}, Landroid/support/v7/preference/SeekBarDialogPreference;->setNegativeButtonText(I)V

    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 1

    .line 62
    invoke-super {p0, p1}, Landroid/support/v7/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 64
    sget v0, Landroid/support/v7/preference/R$id;->icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 65
    iget-object v0, p0, Landroid/support/v7/preference/SeekBarDialogPreference;->mMyIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Landroid/support/v7/preference/SeekBarDialogPreference;->mMyIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 68
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method
