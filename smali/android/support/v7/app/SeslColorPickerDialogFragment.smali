.class public Landroid/support/v7/app/SeslColorPickerDialogFragment;
.super Landroid/support/v7/app/AppCompatDialogFragment;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/SeslColorPickerDialogFragment$OnColorSetListener;
    }
.end annotation


# static fields
.field private static final KEY_COLOR_SET_LISTENER:Ljava/lang/String; = "color_set_listener"

.field private static final KEY_CURRENT_COLOR:Ljava/lang/String; = "current_color"

.field private static final KEY_OPACITY_BAR_ENABLED:Ljava/lang/String; = "opacity_bar_enabled"

.field private static final KEY_RECENTLY_USED_COLORS:Ljava/lang/String; = "recently_used_colors"

.field private static final TAG:Ljava/lang/String; = "SeslColorPickerDialogFragment"


# instance fields
.field private mAlertDialog:Landroid/support/v7/app/AlertDialog;

.field private mColorPicker:Landroid/support/v7/widget/SeslColorPicker;

.field private mCurrentColor:Ljava/lang/Integer;

.field private mIsTransparencyControlEnabled:Z

.field private mNewColor:Ljava/lang/Integer;

.field private mOnColorChangedListener:Landroid/support/v7/widget/SeslColorPicker$OnColorChangedListener;

.field private mOnColorSetListener:Landroid/support/v7/app/SeslColorPickerDialogFragment$OnColorSetListener;

.field private mRecentlyUsedColors:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 69
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Landroid/support/v7/app/SeslColorPickerDialogFragment;->mCurrentColor:Ljava/lang/Integer;

    .line 32
    iput-object v0, p0, Landroid/support/v7/app/SeslColorPickerDialogFragment;->mNewColor:Ljava/lang/Integer;

    .line 33
    iput-object v0, p0, Landroid/support/v7/app/SeslColorPickerDialogFragment;->mRecentlyUsedColors:[I

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Landroid/support/v7/app/SeslColorPickerDialogFragment;->mIsTransparencyControlEnabled:Z

    return-void
.end method

.method public static newInstance(Landroid/support/v7/app/SeslColorPickerDialogFragment$OnColorSetListener;)Landroid/support/v7/app/SeslColorPickerDialogFragment;
    .locals 3

    .line 79
    new-instance v0, Landroid/support/v7/app/SeslColorPickerDialogFragment;

    invoke-direct {v0}, Landroid/support/v7/app/SeslColorPickerDialogFragment;-><init>()V

    .line 81
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "color_set_listener"

    .line 82
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 84
    invoke-virtual {v0, v1}, Landroid/support/v7/app/SeslColorPickerDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static newInstance(Landroid/support/v7/app/SeslColorPickerDialogFragment$OnColorSetListener;I)Landroid/support/v7/app/SeslColorPickerDialogFragment;
    .locals 3

    .line 97
    new-instance v0, Landroid/support/v7/app/SeslColorPickerDialogFragment;

    invoke-direct {v0}, Landroid/support/v7/app/SeslColorPickerDialogFragment;-><init>()V

    .line 99
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "color_set_listener"

    .line 100
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p0, "current_color"

    .line 101
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 103
    invoke-virtual {v0, v1}, Landroid/support/v7/app/SeslColorPickerDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static newInstance(Landroid/support/v7/app/SeslColorPickerDialogFragment$OnColorSetListener;I[I)Landroid/support/v7/app/SeslColorPickerDialogFragment;
    .locals 3

    .line 138
    new-instance v0, Landroid/support/v7/app/SeslColorPickerDialogFragment;

    invoke-direct {v0}, Landroid/support/v7/app/SeslColorPickerDialogFragment;-><init>()V

    .line 140
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "color_set_listener"

    .line 141
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p0, "current_color"

    .line 142
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p0, "recently_used_colors"

    .line 143
    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 145
    invoke-virtual {v0, v1}, Landroid/support/v7/app/SeslColorPickerDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static newInstance(Landroid/support/v7/app/SeslColorPickerDialogFragment$OnColorSetListener;[I)Landroid/support/v7/app/SeslColorPickerDialogFragment;
    .locals 3

    .line 117
    new-instance v0, Landroid/support/v7/app/SeslColorPickerDialogFragment;

    invoke-direct {v0}, Landroid/support/v7/app/SeslColorPickerDialogFragment;-><init>()V

    .line 119
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "color_set_listener"

    .line 120
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p0, "recently_used_colors"

    .line 121
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 123
    invoke-virtual {v0, v1}, Landroid/support/v7/app/SeslColorPickerDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public getColorPicker()Landroid/support/v7/widget/SeslColorPicker;
    .locals 1

    .line 266
    iget-object v0, p0, Landroid/support/v7/app/SeslColorPickerDialogFragment;->mColorPicker:Landroid/support/v7/widget/SeslColorPicker;

    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 227
    :pswitch_0
    iget-object p1, p0, Landroid/support/v7/app/SeslColorPickerDialogFragment;->mColorPicker:Landroid/support/v7/widget/SeslColorPicker;

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslColorPicker;->saveSelectedColor()V

    .line 228
    iget-object p1, p0, Landroid/support/v7/app/SeslColorPickerDialogFragment;->mOnColorSetListener:Landroid/support/v7/app/SeslColorPickerDialogFragment$OnColorSetListener;

    if-eqz p1, :cond_1

    .line 229
    iget-object p1, p0, Landroid/support/v7/app/SeslColorPickerDialogFragment;->mCurrentColor:Ljava/lang/Integer;

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/support/v7/app/SeslColorPickerDialogFragment;->mColorPicker:Landroid/support/v7/widget/SeslColorPicker;

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslColorPicker;->isUserInputValid()Z

    move-result p1

    if-nez p1, :cond_0

    .line 230
    iget-object p1, p0, Landroid/support/v7/app/SeslColorPickerDialogFragment;->mOnColorSetListener:Landroid/support/v7/app/SeslColorPickerDialogFragment$OnColorSetListener;

    iget-object p2, p0, Landroid/support/v7/app/SeslColorPickerDialogFragment;->mCurrentColor:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, p2}, Landroid/support/v7/app/SeslColorPickerDialogFragment$OnColorSetListener;->onColorSet(I)V

    goto :goto_0

    .line 232
    :cond_0
    iget-object p1, p0, Landroid/support/v7/app/SeslColorPickerDialogFragment;->mOnColorSetListener:Landroid/support/v7/app/SeslColorPickerDialogFragment$OnColorSetListener;

    iget-object p2, p0, Landroid/support/v7/app/SeslColorPickerDialogFragment;->mColorPicker:Landroid/support/v7/widget/SeslColorPicker;

    .line 233
    invoke-virtual {p2}, Landroid/support/v7/widget/SeslColorPicker;->getRecentColorInfo()Landroid/support/v7/widget/SeslRecentColorInfo;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v7/widget/SeslRecentColorInfo;->getSelectedColor()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 232
    invoke-interface {p1, p2}, Landroid/support/v7/app/SeslColorPickerDialogFragment$OnColorSetListener;->onColorSet(I)V

    goto :goto_0

    .line 239
    :pswitch_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 155
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatDialogFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "recently_used_colors"

    .line 158
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/SeslColorPickerDialogFragment;->mRecentlyUsedColors:[I

    const-string v0, "current_color"

    .line 159
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Landroid/support/v7/app/SeslColorPickerDialogFragment;->mCurrentColor:Ljava/lang/Integer;

    const-string v0, "opacity_bar_enabled"

    .line 160
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Landroid/support/v7/app/SeslColorPickerDialogFragment;->mIsTransparencyControlEnabled:Z

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .line 208
    invoke-virtual {p0}, Landroid/support/v7/app/SeslColorPickerDialogFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 210
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 211
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Landroid/support/v7/appcompat/R$attr;->isLightTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 213
    iget v0, v0, Landroid/util/TypedValue;->data:I

    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/v7/app/AlertDialog;

    .line 214
    invoke-virtual {p0}, Landroid/support/v7/app/SeslColorPickerDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Landroid/support/v7/appcompat/R$style;->ThemeOverlay_AppCompat_Light_Dialog:I

    invoke-direct {v0, v1, v2}, Landroid/support/v7/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/support/v7/app/AlertDialog;

    .line 215
    invoke-virtual {p0}, Landroid/support/v7/app/SeslColorPickerDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Landroid/support/v7/appcompat/R$style;->ThemeOverlay_AppCompat_Dialog:I

    invoke-direct {v0, v1, v2}, Landroid/support/v7/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    :goto_0
    iput-object v0, p0, Landroid/support/v7/app/SeslColorPickerDialogFragment;->mAlertDialog:Landroid/support/v7/app/AlertDialog;

    .line 217
    iget-object v0, p0, Landroid/support/v7/app/SeslColorPickerDialogFragment;->mAlertDialog:Landroid/support/v7/app/AlertDialog;

    const/4 v1, -0x1

    sget v2, Landroid/support/v7/appcompat/R$string;->sesl_picker_done:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v7/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 218
    iget-object v0, p0, Landroid/support/v7/app/SeslColorPickerDialogFragment;->mAlertDialog:Landroid/support/v7/app/AlertDialog;

    const/4 v1, -0x2

    const/high16 v2, 0x1040000

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1, p0}, Landroid/support/v7/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 220
    iget-object p1, p0, Landroid/support/v7/app/SeslColorPickerDialogFragment;->mAlertDialog:Landroid/support/v7/app/AlertDialog;

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 173
    sget v0, Landroid/support/v7/appcompat/R$layout;->sesl_color_picker_dialog:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 174
    sget v1, Landroid/support/v7/appcompat/R$id;->sesl_color_picker_content_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/SeslColorPicker;

    iput-object v1, p0, Landroid/support/v7/app/SeslColorPickerDialogFragment;->mColorPicker:Landroid/support/v7/widget/SeslColorPicker;

    .line 177
    invoke-virtual {p0}, Landroid/support/v7/app/SeslColorPickerDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "color_set_listener"

    .line 179
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Landroid/support/v7/app/SeslColorPickerDialogFragment$OnColorSetListener;

    iput-object v2, p0, Landroid/support/v7/app/SeslColorPickerDialogFragment;->mOnColorSetListener:Landroid/support/v7/app/SeslColorPickerDialogFragment$OnColorSetListener;

    const-string v2, "current_color"

    .line 180
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iput-object v2, p0, Landroid/support/v7/app/SeslColorPickerDialogFragment;->mCurrentColor:Ljava/lang/Integer;

    const-string v2, "recently_used_colors"

    .line 181
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/app/SeslColorPickerDialogFragment;->mRecentlyUsedColors:[I

    .line 184
    :cond_0
    iget-object v1, p0, Landroid/support/v7/app/SeslColorPickerDialogFragment;->mCurrentColor:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 185
    iget-object v1, p0, Landroid/support/v7/app/SeslColorPickerDialogFragment;->mColorPicker:Landroid/support/v7/widget/SeslColorPicker;

    invoke-virtual {v1}, Landroid/support/v7/widget/SeslColorPicker;->getRecentColorInfo()Landroid/support/v7/widget/SeslRecentColorInfo;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/app/SeslColorPickerDialogFragment;->mCurrentColor:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/SeslRecentColorInfo;->setCurrentColor(Ljava/lang/Integer;)V

    .line 187
    :cond_1
    iget-object v1, p0, Landroid/support/v7/app/SeslColorPickerDialogFragment;->mNewColor:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 188
    iget-object v1, p0, Landroid/support/v7/app/SeslColorPickerDialogFragment;->mColorPicker:Landroid/support/v7/widget/SeslColorPicker;

    invoke-virtual {v1}, Landroid/support/v7/widget/SeslColorPicker;->getRecentColorInfo()Landroid/support/v7/widget/SeslRecentColorInfo;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/app/SeslColorPickerDialogFragment;->mNewColor:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/SeslRecentColorInfo;->setNewColor(Ljava/lang/Integer;)V

    .line 190
    :cond_2
    iget-object v1, p0, Landroid/support/v7/app/SeslColorPickerDialogFragment;->mRecentlyUsedColors:[I

    if-eqz v1, :cond_3

    .line 191
    iget-object v1, p0, Landroid/support/v7/app/SeslColorPickerDialogFragment;->mColorPicker:Landroid/support/v7/widget/SeslColorPicker;

    invoke-virtual {v1}, Landroid/support/v7/widget/SeslColorPicker;->getRecentColorInfo()Landroid/support/v7/widget/SeslRecentColorInfo;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/app/SeslColorPickerDialogFragment;->mRecentlyUsedColors:[I

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/SeslRecentColorInfo;->initRecentColorInfo([I)V

    .line 194
    :cond_3
    iget-object v1, p0, Landroid/support/v7/app/SeslColorPickerDialogFragment;->mColorPicker:Landroid/support/v7/widget/SeslColorPicker;

    iget-boolean v2, p0, Landroid/support/v7/app/SeslColorPickerDialogFragment;->mIsTransparencyControlEnabled:Z

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/SeslColorPicker;->setOpacityBarEnabled(Z)V

    .line 195
    iget-object v1, p0, Landroid/support/v7/app/SeslColorPickerDialogFragment;->mColorPicker:Landroid/support/v7/widget/SeslColorPicker;

    invoke-virtual {v1}, Landroid/support/v7/widget/SeslColorPicker;->updateRecentColorLayout()V

    .line 196
    iget-object v1, p0, Landroid/support/v7/app/SeslColorPickerDialogFragment;->mColorPicker:Landroid/support/v7/widget/SeslColorPicker;

    iget-object v2, p0, Landroid/support/v7/app/SeslColorPickerDialogFragment;->mOnColorChangedListener:Landroid/support/v7/widget/SeslColorPicker$OnColorChangedListener;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/SeslColorPicker;->setOnColorChangedListener(Landroid/support/v7/widget/SeslColorPicker$OnColorChangedListener;)V

    .line 198
    iget-object v1, p0, Landroid/support/v7/app/SeslColorPickerDialogFragment;->mAlertDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v1, v0}, Landroid/support/v7/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 200
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 251
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 252
    iget-object v0, p0, Landroid/support/v7/app/SeslColorPickerDialogFragment;->mColorPicker:Landroid/support/v7/widget/SeslColorPicker;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslColorPicker;->getRecentColorInfo()Landroid/support/v7/widget/SeslRecentColorInfo;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/SeslColorPickerDialogFragment;->mColorPicker:Landroid/support/v7/widget/SeslColorPicker;

    .line 253
    invoke-virtual {v1}, Landroid/support/v7/widget/SeslColorPicker;->getRecentColorInfo()Landroid/support/v7/widget/SeslRecentColorInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/SeslRecentColorInfo;->getSelectedColor()Ljava/lang/Integer;

    move-result-object v1

    .line 252
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SeslRecentColorInfo;->setCurrentColor(Ljava/lang/Integer;)V

    const-string v0, "recently_used_colors"

    .line 254
    iget-object v1, p0, Landroid/support/v7/app/SeslColorPickerDialogFragment;->mRecentlyUsedColors:[I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string v0, "current_color"

    .line 255
    iget-object v1, p0, Landroid/support/v7/app/SeslColorPickerDialogFragment;->mCurrentColor:Ljava/lang/Integer;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v0, "opacity_bar_enabled"

    .line 256
    iget-boolean v1, p0, Landroid/support/v7/app/SeslColorPickerDialogFragment;->mIsTransparencyControlEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setNewColor(Ljava/lang/Integer;)V
    .locals 0

    .line 275
    iput-object p1, p0, Landroid/support/v7/app/SeslColorPickerDialogFragment;->mNewColor:Ljava/lang/Integer;

    return-void
.end method

.method public setOnColorChangedListener(Landroid/support/v7/widget/SeslColorPicker$OnColorChangedListener;)V
    .locals 0

    .line 62
    iput-object p1, p0, Landroid/support/v7/app/SeslColorPickerDialogFragment;->mOnColorChangedListener:Landroid/support/v7/widget/SeslColorPicker$OnColorChangedListener;

    return-void
.end method

.method public setTransparencyControlEnabled(Z)V
    .locals 0

    .line 286
    iput-boolean p1, p0, Landroid/support/v7/app/SeslColorPickerDialogFragment;->mIsTransparencyControlEnabled:Z

    return-void
.end method
