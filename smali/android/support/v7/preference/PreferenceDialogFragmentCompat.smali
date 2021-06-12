.class public abstract Landroid/support/v7/preference/PreferenceDialogFragmentCompat;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field protected static final ARG_KEY:Ljava/lang/String; = "key"

.field private static final SAVE_STATE_ICON:Ljava/lang/String; = "PreferenceDialogFragment.icon"

.field private static final SAVE_STATE_LAYOUT:Ljava/lang/String; = "PreferenceDialogFragment.layout"

.field private static final SAVE_STATE_MESSAGE:Ljava/lang/String; = "PreferenceDialogFragment.message"

.field private static final SAVE_STATE_NEGATIVE_TEXT:Ljava/lang/String; = "PreferenceDialogFragment.negativeText"

.field private static final SAVE_STATE_POSITIVE_TEXT:Ljava/lang/String; = "PreferenceDialogFragment.positiveText"

.field private static final SAVE_STATE_TITLE:Ljava/lang/String; = "PreferenceDialogFragment.title"


# instance fields
.field private mDialogIcon:Landroid/graphics/drawable/BitmapDrawable;

.field private mDialogLayoutRes:I
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation
.end field

.field private mDialogMessage:Ljava/lang/CharSequence;

.field private mDialogTitle:Ljava/lang/CharSequence;

.field private mNegativeButtonText:Ljava/lang/CharSequence;

.field private mPositiveButtonText:Ljava/lang/CharSequence;

.field private mPreference:Landroid/support/v7/preference/DialogPreference;

.field private mWhichButtonClicked:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method private requestInputMethod(Landroid/app/Dialog;)V
    .locals 1

    .line 206
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x5

    .line 207
    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method


# virtual methods
.method public getPreference()Landroid/support/v7/preference/DialogPreference;
    .locals 2

    .line 173
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceDialogFragmentCompat;->mPreference:Landroid/support/v7/preference/DialogPreference;

    if-nez v0, :cond_0

    .line 174
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceDialogFragmentCompat;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceDialogFragmentCompat;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/DialogPreference$TargetFragment;

    .line 177
    invoke-interface {v1, v0}, Landroid/support/v7/preference/DialogPreference$TargetFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/DialogPreference;

    iput-object v0, p0, Landroid/support/v7/preference/PreferenceDialogFragmentCompat;->mPreference:Landroid/support/v7/preference/DialogPreference;

    .line 179
    :cond_0
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceDialogFragmentCompat;->mPreference:Landroid/support/v7/preference/DialogPreference;

    return-object v0
.end method

.method protected needInputMethod()Z
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 3

    const v0, 0x102000b

    .line 236
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 239
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceDialogFragmentCompat;->mDialogMessage:Ljava/lang/CharSequence;

    const/16 v1, 0x8

    .line 242
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 243
    instance-of v1, p1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 244
    move-object v1, p1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 v1, 0x0

    .line 250
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 251
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 258
    iput p2, p0, Landroid/support/v7/preference/PreferenceDialogFragmentCompat;->mWhichButtonClicked:I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 76
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 78
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceDialogFragmentCompat;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 79
    instance-of v1, v0, Landroid/support/v7/preference/DialogPreference$TargetFragment;

    if-eqz v1, :cond_4

    .line 84
    check-cast v0, Landroid/support/v7/preference/DialogPreference$TargetFragment;

    .line 87
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceDialogFragmentCompat;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "key"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-nez p1, :cond_2

    .line 89
    invoke-interface {v0, v1}, Landroid/support/v7/preference/DialogPreference$TargetFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/support/v7/preference/DialogPreference;

    iput-object p1, p0, Landroid/support/v7/preference/PreferenceDialogFragmentCompat;->mPreference:Landroid/support/v7/preference/DialogPreference;

    .line 90
    iget-object p1, p0, Landroid/support/v7/preference/PreferenceDialogFragmentCompat;->mPreference:Landroid/support/v7/preference/DialogPreference;

    invoke-virtual {p1}, Landroid/support/v7/preference/DialogPreference;->getDialogTitle()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/preference/PreferenceDialogFragmentCompat;->mDialogTitle:Ljava/lang/CharSequence;

    .line 91
    iget-object p1, p0, Landroid/support/v7/preference/PreferenceDialogFragmentCompat;->mPreference:Landroid/support/v7/preference/DialogPreference;

    invoke-virtual {p1}, Landroid/support/v7/preference/DialogPreference;->getPositiveButtonText()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/preference/PreferenceDialogFragmentCompat;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 92
    iget-object p1, p0, Landroid/support/v7/preference/PreferenceDialogFragmentCompat;->mPreference:Landroid/support/v7/preference/DialogPreference;

    invoke-virtual {p1}, Landroid/support/v7/preference/DialogPreference;->getNegativeButtonText()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/preference/PreferenceDialogFragmentCompat;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 93
    iget-object p1, p0, Landroid/support/v7/preference/PreferenceDialogFragmentCompat;->mPreference:Landroid/support/v7/preference/DialogPreference;

    invoke-virtual {p1}, Landroid/support/v7/preference/DialogPreference;->getDialogMessage()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/preference/PreferenceDialogFragmentCompat;->mDialogMessage:Ljava/lang/CharSequence;

    .line 94
    iget-object p1, p0, Landroid/support/v7/preference/PreferenceDialogFragmentCompat;->mPreference:Landroid/support/v7/preference/DialogPreference;

    invoke-virtual {p1}, Landroid/support/v7/preference/DialogPreference;->getDialogLayoutResource()I

    move-result p1

    iput p1, p0, Landroid/support/v7/preference/PreferenceDialogFragmentCompat;->mDialogLayoutRes:I

    .line 96
    iget-object p1, p0, Landroid/support/v7/preference/PreferenceDialogFragmentCompat;->mPreference:Landroid/support/v7/preference/DialogPreference;

    invoke-virtual {p1}, Landroid/support/v7/preference/DialogPreference;->getDialogIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 97
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 101
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 100
    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 102
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 103
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    invoke-virtual {p1, v2, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 104
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 105
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceDialogFragmentCompat;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p1, v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Landroid/support/v7/preference/PreferenceDialogFragmentCompat;->mDialogIcon:Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_1

    .line 98
    :cond_1
    :goto_0
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    iput-object p1, p0, Landroid/support/v7/preference/PreferenceDialogFragmentCompat;->mDialogIcon:Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_1

    :cond_2
    const-string v0, "PreferenceDialogFragment.title"

    .line 108
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/preference/PreferenceDialogFragmentCompat;->mDialogTitle:Ljava/lang/CharSequence;

    const-string v0, "PreferenceDialogFragment.positiveText"

    .line 109
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/preference/PreferenceDialogFragmentCompat;->mPositiveButtonText:Ljava/lang/CharSequence;

    const-string v0, "PreferenceDialogFragment.negativeText"

    .line 110
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/preference/PreferenceDialogFragmentCompat;->mNegativeButtonText:Ljava/lang/CharSequence;

    const-string v0, "PreferenceDialogFragment.message"

    .line 111
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/preference/PreferenceDialogFragmentCompat;->mDialogMessage:Ljava/lang/CharSequence;

    const-string v0, "PreferenceDialogFragment.layout"

    .line 112
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/preference/PreferenceDialogFragmentCompat;->mDialogLayoutRes:I

    const-string v0, "PreferenceDialogFragment.icon"

    .line 113
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_3

    .line 115
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceDialogFragmentCompat;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Landroid/support/v7/preference/PreferenceDialogFragmentCompat;->mDialogIcon:Landroid/graphics/drawable/BitmapDrawable;

    :cond_3
    :goto_1
    return-void

    .line 80
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Target fragment must implement TargetFragment interface"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 137
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceDialogFragmentCompat;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const/4 v0, -0x2

    .line 138
    iput v0, p0, Landroid/support/v7/preference/PreferenceDialogFragmentCompat;->mWhichButtonClicked:I

    .line 140
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Landroid/support/v7/preference/PreferenceDialogFragmentCompat;->mDialogTitle:Ljava/lang/CharSequence;

    .line 141
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/preference/PreferenceDialogFragmentCompat;->mDialogIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 142
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/preference/PreferenceDialogFragmentCompat;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 143
    invoke-virtual {v0, v1, p0}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/preference/PreferenceDialogFragmentCompat;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 144
    invoke-virtual {v0, v1, p0}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 146
    invoke-virtual {p0, p1}, Landroid/support/v7/preference/PreferenceDialogFragmentCompat;->onCreateDialogView(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 148
    invoke-virtual {p0, p1}, Landroid/support/v7/preference/PreferenceDialogFragmentCompat;->onBindDialogView(Landroid/view/View;)V

    .line 149
    invoke-virtual {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    goto :goto_0

    .line 151
    :cond_0
    iget-object p1, p0, Landroid/support/v7/preference/PreferenceDialogFragmentCompat;->mDialogMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 154
    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/preference/PreferenceDialogFragmentCompat;->onPrepareDialogBuilder(Landroid/support/v7/app/AlertDialog$Builder;)V

    .line 157
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    .line 158
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceDialogFragmentCompat;->needInputMethod()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    invoke-direct {p0, p1}, Landroid/support/v7/preference/PreferenceDialogFragmentCompat;->requestInputMethod(Landroid/app/Dialog;)V

    :cond_1
    return-object p1
.end method

.method protected onCreateDialogView(Landroid/content/Context;)Landroid/view/View;
    .locals 2

    .line 219
    iget v0, p0, Landroid/support/v7/preference/PreferenceDialogFragmentCompat;->mDialogLayoutRes:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 224
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 225
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public abstract onDialogClosed(Z)V
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 263
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 264
    iget p1, p0, Landroid/support/v7/preference/PreferenceDialogFragmentCompat;->mWhichButtonClicked:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v7/preference/PreferenceDialogFragmentCompat;->onDialogClosed(Z)V

    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/support/v7/app/AlertDialog$Builder;)V
    .locals 0

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 122
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "PreferenceDialogFragment.title"

    .line 124
    iget-object v1, p0, Landroid/support/v7/preference/PreferenceDialogFragmentCompat;->mDialogTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v0, "PreferenceDialogFragment.positiveText"

    .line 125
    iget-object v1, p0, Landroid/support/v7/preference/PreferenceDialogFragmentCompat;->mPositiveButtonText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v0, "PreferenceDialogFragment.negativeText"

    .line 126
    iget-object v1, p0, Landroid/support/v7/preference/PreferenceDialogFragmentCompat;->mNegativeButtonText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v0, "PreferenceDialogFragment.message"

    .line 127
    iget-object v1, p0, Landroid/support/v7/preference/PreferenceDialogFragmentCompat;->mDialogMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v0, "PreferenceDialogFragment.layout"

    .line 128
    iget v1, p0, Landroid/support/v7/preference/PreferenceDialogFragmentCompat;->mDialogLayoutRes:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 129
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceDialogFragmentCompat;->mDialogIcon:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    const-string v0, "PreferenceDialogFragment.icon"

    .line 130
    iget-object v1, p0, Landroid/support/v7/preference/PreferenceDialogFragmentCompat;->mDialogIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method
