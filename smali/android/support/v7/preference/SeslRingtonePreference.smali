.class public Landroid/support/v7/preference/SeslRingtonePreference;
.super Landroid/support/v7/preference/Preference;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SeslRingtonePreference"


# instance fields
.field private mRingtoneType:I

.field private mShowDefault:Z

.field private mShowSilent:Z

.field protected mUserContext:Landroid/content/Context;

.field protected mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, p1, v0}, Landroid/support/v7/preference/SeslRingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 80
    sget v0, Landroid/support/v7/preference/R$attr;->ringtonePreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/preference/SeslRingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/preference/SeslRingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 60
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 62
    sget-object v0, Landroid/support/v7/preference/R$styleable;->RingtonePreference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 64
    sget p2, Landroid/support/v7/preference/R$styleable;->RingtonePreference_android_ringtoneType:I

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Landroid/support/v7/preference/SeslRingtonePreference;->mRingtoneType:I

    .line 66
    sget p2, Landroid/support/v7/preference/R$styleable;->RingtonePreference_android_showDefault:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroid/support/v7/preference/SeslRingtonePreference;->mShowDefault:Z

    .line 68
    sget p2, Landroid/support/v7/preference/R$styleable;->RingtonePreference_android_showSilent:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroid/support/v7/preference/SeslRingtonePreference;->mShowSilent:Z

    .line 70
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.RINGTONE_PICKER"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Landroid/support/v7/preference/SeslRingtonePreference;->setIntent(Landroid/content/Intent;)V

    .line 71
    invoke-static {}, Landroid/support/v4/os/SeslUserHandleReflector;->myUserId()I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/support/v7/preference/SeslRingtonePreference;->setUserId(I)V

    .line 72
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private createPackageContextAsUser(Landroid/content/Context;I)Landroid/content/Context;
    .locals 2

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p2

    const/4 v1, 0x0

    .line 97
    invoke-static {p1, v0, v1, p2}, Landroid/support/v4/content/SeslContextReflector;->createPackageContextAsUser(Landroid/content/Context;Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getRingtoneType()I
    .locals 1

    .line 107
    iget v0, p0, Landroid/support/v7/preference/SeslRingtonePreference;->mRingtoneType:I

    return v0
.end method

.method public getShowDefault()Z
    .locals 1

    .line 126
    iget-boolean v0, p0, Landroid/support/v7/preference/SeslRingtonePreference;->mShowDefault:Z

    return v0
.end method

.method public getShowSilent()Z
    .locals 1

    .line 146
    iget-boolean v0, p0, Landroid/support/v7/preference/SeslRingtonePreference;->mShowSilent:Z

    return v0
.end method

.method public getUserId()I
    .locals 1

    .line 93
    iget v0, p0, Landroid/support/v7/preference/SeslRingtonePreference;->mUserId:I

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 0

    if-eqz p3, :cond_1

    const-string p1, "android.intent.extra.ringtone.PICKED_URI"

    .line 243
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    if-eqz p1, :cond_0

    .line 244
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    invoke-virtual {p0, p2}, Landroid/support/v7/preference/SeslRingtonePreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 245
    invoke-virtual {p0, p1}, Landroid/support/v7/preference/SeslRingtonePreference;->onSaveRingtone(Landroid/net/Uri;)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method protected onAttachedToHierarchy(Landroid/support/v7/preference/PreferenceManager;)V
    .locals 0

    .line 238
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onAttachedToHierarchy(Landroid/support/v7/preference/PreferenceManager;)V

    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 0

    .line 212
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onPrepareRingtonePickerIntent(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "android.intent.extra.ringtone.EXISTING_URI"

    .line 168
    invoke-virtual {p0}, Landroid/support/v7/preference/SeslRingtonePreference;->onRestoreRingtone()Landroid/net/Uri;

    move-result-object v1

    .line 167
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.ringtone.SHOW_DEFAULT"

    .line 169
    iget-boolean v1, p0, Landroid/support/v7/preference/SeslRingtonePreference;->mShowDefault:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 170
    iget-boolean v0, p0, Landroid/support/v7/preference/SeslRingtonePreference;->mShowDefault:Z

    if-eqz v0, :cond_0

    const-string v0, "android.intent.extra.ringtone.DEFAULT_URI"

    .line 172
    invoke-virtual {p0}, Landroid/support/v7/preference/SeslRingtonePreference;->getRingtoneType()I

    move-result v1

    invoke-static {v1}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v1

    .line 171
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_0
    const-string v0, "android.intent.extra.ringtone.SHOW_SILENT"

    .line 174
    iget-boolean v1, p0, Landroid/support/v7/preference/SeslRingtonePreference;->mShowSilent:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "android.intent.extra.ringtone.TYPE"

    .line 175
    iget v1, p0, Landroid/support/v7/preference/SeslRingtonePreference;->mRingtoneType:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "android.intent.extra.ringtone.TITLE"

    .line 176
    invoke-virtual {p0}, Landroid/support/v7/preference/SeslRingtonePreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 180
    invoke-static {}, Landroid/support/v4/media/SeslRingtoneManagerReflector;->getField_EXTRA_RINGTONE_AUDIO_ATTRIBUTES_FLAGS()Ljava/lang/String;

    move-result-object v0

    .line 181
    invoke-static {}, Landroid/support/v4/media/SeslAudioAttributesReflector;->getField_FLAG_BYPASS_INTERRUPTION_POLICY()I

    move-result v1

    .line 180
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-void
.end method

.method protected onRestoreRingtone()Landroid/net/Uri;
    .locals 3

    const/4 v0, 0x0

    .line 206
    invoke-virtual {p0, v0}, Landroid/support/v7/preference/SeslRingtonePreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 207
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected onSaveRingtone(Landroid/net/Uri;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 193
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v7/preference/SeslRingtonePreference;->persistString(Ljava/lang/String;)Z

    return-void
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 0

    .line 217
    check-cast p2, Ljava/lang/String;

    if-eqz p1, :cond_0

    return-void

    .line 231
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 232
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v7/preference/SeslRingtonePreference;->onSaveRingtone(Landroid/net/Uri;)V

    :cond_1
    return-void
.end method

.method public setRingtoneType(I)V
    .locals 0

    .line 117
    iput p1, p0, Landroid/support/v7/preference/SeslRingtonePreference;->mRingtoneType:I

    return-void
.end method

.method public setShowDefault(Z)V
    .locals 0

    .line 137
    iput-boolean p1, p0, Landroid/support/v7/preference/SeslRingtonePreference;->mShowDefault:Z

    return-void
.end method

.method public setShowSilent(Z)V
    .locals 0

    .line 156
    iput-boolean p1, p0, Landroid/support/v7/preference/SeslRingtonePreference;->mShowSilent:Z

    return-void
.end method

.method public setUserId(I)V
    .locals 1

    .line 88
    iput p1, p0, Landroid/support/v7/preference/SeslRingtonePreference;->mUserId:I

    .line 89
    invoke-virtual {p0}, Landroid/support/v7/preference/SeslRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v0, p0, Landroid/support/v7/preference/SeslRingtonePreference;->mUserId:I

    invoke-direct {p0, p1, v0}, Landroid/support/v7/preference/SeslRingtonePreference;->createPackageContextAsUser(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/preference/SeslRingtonePreference;->mUserContext:Landroid/content/Context;

    return-void
.end method
