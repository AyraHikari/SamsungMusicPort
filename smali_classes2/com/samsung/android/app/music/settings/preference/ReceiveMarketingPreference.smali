.class public Lcom/samsung/android/app/music/settings/preference/ReceiveMarketingPreference;
.super Landroid/support/v7/preference/SwitchPreferenceCompat;
.source "SourceFile"


# instance fields
.field private a:Landroid/support/v7/widget/SwitchCompat;

.field private b:Z

.field private c:Landroid/support/v4/app/FragmentManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/settings/preference/ReceiveMarketingPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f010236

    .line 45
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/music/settings/preference/ReceiveMarketingPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/app/music/settings/preference/ReceiveMarketingPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/preference/SwitchPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 31
    iput-boolean p1, p0, Lcom/samsung/android/app/music/settings/preference/ReceiveMarketingPreference;->b:Z

    return-void
.end method

.method private a(Landroid/view/View;)Landroid/support/v7/widget/SwitchCompat;
    .locals 3

    const v0, 0x1020018

    .line 69
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 70
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 71
    :goto_0
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 72
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 73
    instance-of v2, v1, Landroid/support/v7/widget/SwitchCompat;

    if-eqz v2, :cond_0

    .line 74
    check-cast v1, Landroid/support/v7/widget/SwitchCompat;

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic a(Lcom/samsung/android/app/music/settings/preference/ReceiveMarketingPreference;Z)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/settings/preference/ReceiveMarketingPreference;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 5

    .line 124
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/preference/ReceiveMarketingPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string v1, "1"

    goto :goto_0

    :cond_0
    const-string v1, "0"

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/preference/ReceiveMarketingPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/fcm/smp/SmpManager;->a(Landroid/content/Context;Z)V

    .line 131
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy/MM/dd"

    sget-object v2, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v1, "GMT"

    .line 132
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 133
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 134
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/preference/ReceiveMarketingPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f0b021e

    .line 135
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 136
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/preference/ReceiveMarketingPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f0b021d

    .line 137
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 139
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/preference/ReceiveMarketingPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 140
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/preference/ReceiveMarketingPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b0086

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v0, v2, v3

    .line 139
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 141
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/FragmentManager;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/samsung/android/app/music/settings/preference/ReceiveMarketingPreference;->c:Landroid/support/v4/app/FragmentManager;

    return-void
.end method

.method public isChecked()Z
    .locals 1

    .line 118
    iget-boolean v0, p0, Lcom/samsung/android/app/music/settings/preference/ReceiveMarketingPreference;->b:Z

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 1

    .line 58
    invoke-super {p0, p1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 60
    iget-object p1, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/settings/preference/ReceiveMarketingPreference;->a(Landroid/view/View;)Landroid/support/v7/widget/SwitchCompat;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/settings/preference/ReceiveMarketingPreference;->a:Landroid/support/v7/widget/SwitchCompat;

    .line 61
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/preference/ReceiveMarketingPreference;->a:Landroid/support/v7/widget/SwitchCompat;

    if-eqz p1, :cond_0

    .line 62
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/preference/ReceiveMarketingPreference;->a:Landroid/support/v7/widget/SwitchCompat;

    iget-boolean v0, p0, Lcom/samsung/android/app/music/settings/preference/ReceiveMarketingPreference;->b:Z

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 63
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/preference/ReceiveMarketingPreference;->a:Landroid/support/v7/widget/SwitchCompat;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/SwitchCompat;->setClickable(Z)V

    .line 64
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/preference/ReceiveMarketingPreference;->a:Landroid/support/v7/widget/SwitchCompat;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/SwitchCompat;->setDuplicateParentStateEnabled(Z)V

    :cond_0
    return-void
.end method

.method protected onClick()V
    .locals 3

    .line 84
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/preference/ReceiveMarketingPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/preference/ReceiveMarketingPreference;->c:Landroid/support/v4/app/FragmentManager;

    sget-object v1, Lcom/samsung/android/app/music/dialog/ReceiveMarketingConfirmDialog;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_1

    .line 88
    invoke-static {}, Lcom/samsung/android/app/music/dialog/ReceiveMarketingConfirmDialog;->a()Lcom/samsung/android/app/music/dialog/ReceiveMarketingConfirmDialog;

    move-result-object v0

    .line 89
    new-instance v1, Lcom/samsung/android/app/music/settings/preference/ReceiveMarketingPreference$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/settings/preference/ReceiveMarketingPreference$1;-><init>(Lcom/samsung/android/app/music/settings/preference/ReceiveMarketingPreference;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/dialog/ReceiveMarketingConfirmDialog;->a(Lcom/samsung/android/app/music/dialog/ReceiveMarketingConfirmDialog$OnMarketingAgreeListener;)V

    .line 96
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/preference/ReceiveMarketingPreference;->c:Landroid/support/v4/app/FragmentManager;

    sget-object v2, Lcom/samsung/android/app/music/dialog/ReceiveMarketingConfirmDialog;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/dialog/ReceiveMarketingConfirmDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 100
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/settings/preference/ReceiveMarketingPreference;->a(Z)V

    .line 101
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/settings/preference/ReceiveMarketingPreference;->setChecked(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 3

    const-string v0, "ReceiveMarketingPreference"

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setChecked : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-super {p0, p1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setChecked(Z)V

    .line 109
    iput-boolean p1, p0, Lcom/samsung/android/app/music/settings/preference/ReceiveMarketingPreference;->b:Z

    .line 110
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/settings/preference/ReceiveMarketingPreference;->persistBoolean(Z)Z

    .line 111
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/preference/ReceiveMarketingPreference;->a:Landroid/support/v7/widget/SwitchCompat;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/preference/ReceiveMarketingPreference;->a:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    :cond_0
    return-void
.end method
