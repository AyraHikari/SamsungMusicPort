.class public Landroid/support/v7/app/SeslColorPickerDialog;
.super Landroid/support/v7/app/AlertDialog;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/SeslColorPickerDialog$OnColorSetListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SeslColorPickerDialog"


# instance fields
.field private final mColorPicker:Landroid/support/v7/widget/SeslColorPicker;

.field private mCurrentColor:Ljava/lang/Integer;

.field private final mOnColorSetListener:Landroid/support/v7/app/SeslColorPickerDialog$OnColorSetListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/app/SeslColorPickerDialog$OnColorSetListener;)V
    .locals 3

    .line 46
    invoke-static {p1}, Landroid/support/v7/app/SeslColorPickerDialog;->resolveDialogTheme(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Landroid/support/v7/app/SeslColorPickerDialog;->mCurrentColor:Ljava/lang/Integer;

    .line 48
    invoke-virtual {p0}, Landroid/support/v7/app/SeslColorPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 49
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 50
    sget v2, Landroid/support/v7/appcompat/R$layout;->sesl_color_picker_dialog:I

    invoke-virtual {v1, v2, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 52
    invoke-virtual {p0, p1}, Landroid/support/v7/app/SeslColorPickerDialog;->setView(Landroid/view/View;)V

    .line 53
    sget v1, Landroid/support/v7/appcompat/R$string;->sesl_picker_done:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1, p0}, Landroid/support/v7/app/SeslColorPickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/high16 v1, 0x1040000

    .line 54
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x2

    invoke-virtual {p0, v1, v0, p0}, Landroid/support/v7/app/SeslColorPickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v0, 0x1

    .line 55
    invoke-virtual {p0, v0}, Landroid/support/v7/app/SeslColorPickerDialog;->requestWindowFeature(I)Z

    .line 56
    invoke-virtual {p0}, Landroid/support/v7/app/SeslColorPickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 58
    iput-object p2, p0, Landroid/support/v7/app/SeslColorPickerDialog;->mOnColorSetListener:Landroid/support/v7/app/SeslColorPickerDialog$OnColorSetListener;

    .line 60
    sget p2, Landroid/support/v7/appcompat/R$id;->sesl_color_picker_content_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/SeslColorPicker;

    iput-object p1, p0, Landroid/support/v7/app/SeslColorPickerDialog;->mColorPicker:Landroid/support/v7/widget/SeslColorPicker;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/app/SeslColorPickerDialog$OnColorSetListener;I)V
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2}, Landroid/support/v7/app/SeslColorPickerDialog;-><init>(Landroid/content/Context;Landroid/support/v7/app/SeslColorPickerDialog$OnColorSetListener;)V

    .line 74
    iget-object p1, p0, Landroid/support/v7/app/SeslColorPickerDialog;->mColorPicker:Landroid/support/v7/widget/SeslColorPicker;

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslColorPicker;->getRecentColorInfo()Landroid/support/v7/widget/SeslRecentColorInfo;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/SeslRecentColorInfo;->setCurrentColor(Ljava/lang/Integer;)V

    .line 75
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/app/SeslColorPickerDialog;->mCurrentColor:Ljava/lang/Integer;

    .line 76
    iget-object p1, p0, Landroid/support/v7/app/SeslColorPickerDialog;->mColorPicker:Landroid/support/v7/widget/SeslColorPicker;

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslColorPicker;->updateRecentColorLayout()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/app/SeslColorPickerDialog$OnColorSetListener;I[I)V
    .locals 0

    .line 108
    invoke-direct {p0, p1, p2}, Landroid/support/v7/app/SeslColorPickerDialog;-><init>(Landroid/content/Context;Landroid/support/v7/app/SeslColorPickerDialog$OnColorSetListener;)V

    .line 109
    iget-object p1, p0, Landroid/support/v7/app/SeslColorPickerDialog;->mColorPicker:Landroid/support/v7/widget/SeslColorPicker;

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslColorPicker;->getRecentColorInfo()Landroid/support/v7/widget/SeslRecentColorInfo;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroid/support/v7/widget/SeslRecentColorInfo;->initRecentColorInfo([I)V

    .line 110
    iget-object p1, p0, Landroid/support/v7/app/SeslColorPickerDialog;->mColorPicker:Landroid/support/v7/widget/SeslColorPicker;

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslColorPicker;->getRecentColorInfo()Landroid/support/v7/widget/SeslRecentColorInfo;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/SeslRecentColorInfo;->setCurrentColor(Ljava/lang/Integer;)V

    .line 111
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/app/SeslColorPickerDialog;->mCurrentColor:Ljava/lang/Integer;

    .line 112
    iget-object p1, p0, Landroid/support/v7/app/SeslColorPickerDialog;->mColorPicker:Landroid/support/v7/widget/SeslColorPicker;

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslColorPicker;->updateRecentColorLayout()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/app/SeslColorPickerDialog$OnColorSetListener;[I)V
    .locals 0

    .line 90
    invoke-direct {p0, p1, p2}, Landroid/support/v7/app/SeslColorPickerDialog;-><init>(Landroid/content/Context;Landroid/support/v7/app/SeslColorPickerDialog$OnColorSetListener;)V

    .line 92
    iget-object p1, p0, Landroid/support/v7/app/SeslColorPickerDialog;->mColorPicker:Landroid/support/v7/widget/SeslColorPicker;

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslColorPicker;->getRecentColorInfo()Landroid/support/v7/widget/SeslRecentColorInfo;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/support/v7/widget/SeslRecentColorInfo;->initRecentColorInfo([I)V

    .line 93
    iget-object p1, p0, Landroid/support/v7/app/SeslColorPickerDialog;->mColorPicker:Landroid/support/v7/widget/SeslColorPicker;

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslColorPicker;->updateRecentColorLayout()V

    return-void
.end method

.method private static resolveDialogTheme(Landroid/content/Context;)I
    .locals 3

    .line 170
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 171
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    sget v1, Landroid/support/v7/appcompat/R$attr;->isLightTheme:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 173
    iget p0, v0, Landroid/util/TypedValue;->data:I

    if-eqz p0, :cond_0

    sget p0, Landroid/support/v7/appcompat/R$style;->ThemeOverlay_AppCompat_Light_Dialog:I

    goto :goto_0

    :cond_0
    sget p0, Landroid/support/v7/appcompat/R$style;->ThemeOverlay_AppCompat_Dialog:I

    :goto_0
    return p0
.end method


# virtual methods
.method public getColorPicker()Landroid/support/v7/widget/SeslColorPicker;
    .locals 1

    .line 145
    iget-object v0, p0, Landroid/support/v7/app/SeslColorPickerDialog;->mColorPicker:Landroid/support/v7/widget/SeslColorPicker;

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 0

    .line 182
    invoke-super {p0}, Landroid/support/v7/app/AlertDialog;->onAttachedToWindow()V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 122
    :pswitch_0
    iget-object p1, p0, Landroid/support/v7/app/SeslColorPickerDialog;->mColorPicker:Landroid/support/v7/widget/SeslColorPicker;

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslColorPicker;->saveSelectedColor()V

    .line 123
    iget-object p1, p0, Landroid/support/v7/app/SeslColorPickerDialog;->mOnColorSetListener:Landroid/support/v7/app/SeslColorPickerDialog$OnColorSetListener;

    if-eqz p1, :cond_1

    .line 124
    iget-object p1, p0, Landroid/support/v7/app/SeslColorPickerDialog;->mColorPicker:Landroid/support/v7/widget/SeslColorPicker;

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslColorPicker;->isUserInputValid()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Landroid/support/v7/app/SeslColorPickerDialog;->mCurrentColor:Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 125
    iget-object p1, p0, Landroid/support/v7/app/SeslColorPickerDialog;->mOnColorSetListener:Landroid/support/v7/app/SeslColorPickerDialog$OnColorSetListener;

    iget-object p2, p0, Landroid/support/v7/app/SeslColorPickerDialog;->mCurrentColor:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, p2}, Landroid/support/v7/app/SeslColorPickerDialog$OnColorSetListener;->onColorSet(I)V

    goto :goto_0

    .line 127
    :cond_0
    iget-object p1, p0, Landroid/support/v7/app/SeslColorPickerDialog;->mOnColorSetListener:Landroid/support/v7/app/SeslColorPickerDialog$OnColorSetListener;

    iget-object p2, p0, Landroid/support/v7/app/SeslColorPickerDialog;->mColorPicker:Landroid/support/v7/widget/SeslColorPicker;

    .line 128
    invoke-virtual {p2}, Landroid/support/v7/widget/SeslColorPicker;->getRecentColorInfo()Landroid/support/v7/widget/SeslRecentColorInfo;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v7/widget/SeslRecentColorInfo;->getSelectedColor()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 127
    invoke-interface {p1, p2}, Landroid/support/v7/app/SeslColorPickerDialog$OnColorSetListener;->onColorSet(I)V

    :cond_1
    :goto_0
    :pswitch_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .line 190
    invoke-super {p0}, Landroid/support/v7/app/AlertDialog;->onDetachedFromWindow()V

    return-void
.end method

.method public setNewColor(Ljava/lang/Integer;)V
    .locals 1

    .line 154
    iget-object v0, p0, Landroid/support/v7/app/SeslColorPickerDialog;->mColorPicker:Landroid/support/v7/widget/SeslColorPicker;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslColorPicker;->getRecentColorInfo()Landroid/support/v7/widget/SeslRecentColorInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SeslRecentColorInfo;->setNewColor(Ljava/lang/Integer;)V

    .line 155
    iget-object p1, p0, Landroid/support/v7/app/SeslColorPickerDialog;->mColorPicker:Landroid/support/v7/widget/SeslColorPicker;

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslColorPicker;->updateRecentColorLayout()V

    return-void
.end method

.method public setTransparencyControlEnabled(Z)V
    .locals 1

    .line 166
    iget-object v0, p0, Landroid/support/v7/app/SeslColorPickerDialog;->mColorPicker:Landroid/support/v7/widget/SeslColorPicker;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SeslColorPicker;->setOpacityBarEnabled(Z)V

    return-void
.end method
